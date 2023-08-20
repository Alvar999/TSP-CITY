#include <ysi\y_hooks>

#define MAX_RauMuong 12
#define DIALOG_BEKHOA     9852
#define THUHOACHTIME 20
#define DefaultProgress 	30 	
#define MAX_KhoangSan 12

#define LOADING_HAIRAU 5

enum RauMuong_e {
	RauMuong_id,
	Text3D:RauMuong_text,
	RauMuong_object,
	RauMuong_timer,
	RauMuong_timethuhoach,
	RauMuong_timeex,
	bool:danghai,
	bool:RauMuong_enable
}
new csinfo[MAX_RauMuong][RauMuong_e];




enum KhoangSan_e {
	KhoangSan_id,
	Text3D:KhoangSan_text,
	KhoangSan_object,
	KhoangSan_timer,
	KhoangSan_timethuhoach,
	KhoangSan_timeex,
	bool:dangdao,
	bool:KhoangSan_enable
}
new ksinfo[MAX_KhoangSan][KhoangSan_e];
new PlayerKhoangSanComplete[MAX_PLAYERS char] = { DefaultProgress, ... }; // progress
new Text:KS_TD[5]; // ôîí ProgressTD
new PlayerText:KS_PTD[MAX_PLAYERS][1];// Pro


new Float:RauMuong_pos[12][3] = {
{-13.5476,1495.0000,12.7500},
{-13.5476,1500.5483,12.7500},
{-13.5476,1505.5483,12.7500},
{-13.5476,1510.5483,12.7500},
{-13.5476,1515.5483,12.7500},
{-13.5476,1520.5483,12.7500},
{-19.5476,1520.5483,12.7500},
{-19.5476,1515.5483,12.7500},
{-19.5476,1510.5483,12.7500},
{-19.5476,1505.5483,12.7500},
{-19.5476,1500.5483,12.7500},
{-19.5476,1495.0000,12.7500}
};


new Float:KhoangSan_pos[13][3] = {
{24.03, 1549.91, 12.00},
{17.25, 1541.87, 12.00},
{29.56, 1539.38, 12.00},
{35.37, 1512.62, 12.00},
{40.22, 1518.69, 12.00},
{43.28, 1525.44, 12.00},
{38.40, 1543.09, 12.00},
{26.17, 1516.76, 12.00},
{20.43, 1558.45, 12.00},
{22.75, 1519.57, 12.00},
{28.80, 1567.39, 12.00},
{34.15, 1496.63, 12.00},
{25.54, 1498.53, 12.00}
};



new PassNhaTu;


CMD:cuoptunhan(playerid, params[])
{
	new Float:pVars[3], giveplayerid;
	if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "{FF0000}[CUOP TU NHAN]{FFFF00}SU DUNG: /cuoptunhan [playerid]");


	if(IsPlayerConnected(giveplayerid)) {
		if(playerid == giveplayerid)
			return SendClientMessage(playerid, COLOR_RED, "{FF0000}[CUOP TU NHAN]{FFFF00}Ban khong the tu cuop chinh ban than minh duoc!.");
		/*if(!IsPlayerInRangeOfPoint(playerid, 100.0, 1597.0339, -1716.7069, 1447.9607))
			return SendClientMessage(playerid, COLOR_RED, "{FF0000}[CUOP TU NHAN]{FFFF00}Ban khong o trong khu vuc nha tu.");
		if(!IsPlayerInRangeOfPoint(giveplayerid, 100.0, 1597.0339, -1716.7069, 1447.9607))
			return SendClientMessage(giveplayerid, COLOR_RED, "{FF0000}[CUOP TU NHAN]{FFFF00}Nguoi choi khong o trong khu vuc nha tu.");*/
		if(PlayerInfo[giveplayerid][pJailTime] < 1)
			return SendClientMessage(playerid, COLOR_RED, "{FF0000}[CUOP TU NHAN]{FFFF00}Nguoi choi khong phai la tu nhan.");
		if(IsACop(playerid))
			return SendClientMessage(playerid, COLOR_RED, "{FF0000}[CUOP TU NHAN]{FFFF00}Ban la mot canh sat!.");
		GetPlayerPos(giveplayerid, pVars[0], pVars[1], pVars[2]);
		if(!IsPlayerInRangeOfPoint(playerid, 5.0,pVars[0], pVars[1], pVars[2]))
			return SendClientMessage(playerid, COLOR_RED, "{FF0000}[CUOP TU NHAN]{FFFF00}Ban khong dung gan nguoi choi!.");
		PrisonEscapes(playerid, giveplayerid);
	}
	else return SendClientMessage(playerid, COLOR_RED, "{FF0000}[CUOP TU NHAN]{FFFF00}Khong tim thay nguoi choi!.");
	return 1;
}


stock PrisonEscapes(playerid, giveplayerid){
	new string[128];
	format(string, sizeof(string), "{FF0000}[CUOP TU NHAN]{FFFF00}Ban da duoc nguoi choi %s giup do vuot nguc ^^.", GetPlayerNameEx(playerid));
	SendClientMessageEx(giveplayerid, COLOR_WHITE, string);
	format(string, sizeof(string), "{FF0000}[CUOP TU NHAN]{FFFF00}Ban da cuop thanh cong duoc tu nhan %s.", GetPlayerNameEx(giveplayerid));
	SendClientMessageEx(playerid, COLOR_RED, string);
	SendClientMessageEx(playerid, COLOR_RED, "{FF0000}[CUOP TU NHAN]{FFFF00}Vu viec cuop tu nhan da duoc thong bao toi toan the canh sat - Vui long tron thoat khoi day truoc khi bi canh sat bat giu!");
	SendClientMessageEx(giveplayerid, COLOR_RED, "{FF0000}[CUOP TU NHAN]{FFFF00}Vu viec cuop tu nhan da duoc thong bao toi toan the canh sat - Vui long tron thoat khoi day truoc khi bi canh sat bat giu!");

	SetPlayerPos(playerid, -33.8530,1507.7990,12.7560);
	SetPlayerInterior(playerid, 0);
	PlayerInfo[playerid][pInt] = 0;
	SetPlayerVirtualWorld(playerid, 0);
	PlayerInfo[playerid][pVW] = 0;

	SetPlayerPos(giveplayerid, -33.8530,1507.7990,12.7560);
	SetPlayerInterior(giveplayerid, 0);
	PlayerInfo[giveplayerid][pInt] = 0;
	SetPlayerVirtualWorld(giveplayerid, 0);
	PlayerInfo[giveplayerid][pVW] = 0;

	PlayerInfo[giveplayerid][pWantedLevel] = 0;
	PlayerInfo[giveplayerid][pBeingSentenced] = 0;
	SetPlayerToTeamColor(giveplayerid);
	SetPlayerHealth(giveplayerid, 100);
	SetPlayerWantedLevel(giveplayerid, 0);
	PlayerInfo[giveplayerid][pJailTime] = 0;
	strcpy(PlayerInfo[giveplayerid][pPrisonReason], "None", 128);
	SetPlayerToTeamColor(giveplayerid);

	foreach(new i:Player)
	{
		if(IsACop(i))
		{
			SetPlayerMarkerForPlayer(i,giveplayerid,FIND_COLOR);
		    FindingPlayer[i] = giveplayerid;
			FindTime[i] = 1;
			FindTimePoints[i] = 240;
			new szMessage[256];
		    format(szMessage, sizeof(szMessage), "Toi ac: Vuot Nguc, nguoi trinh bao: Coi Bao Dong, nguoi thuc hien toi ac : %s - %s", GetPlayerNameEx(giveplayerid), GetPlayerNameEx(playerid));
		    SendClientMessageEx(i, COLOR_LIGHTBLUE, szMessage);
		    format(szMessage, sizeof(szMessage), "Dia Diem Da Duoc Danh Dau Tren Ban Do! - Canh Sat Co 5 phut de tim neu khong tim thay se bi mat dau!");
		    SendClientMessageEx(i, COLOR_LIGHTBLUE, szMessage);
		}
	}
	return 1;
}


CMD:bekhoa(playerid, params[])
{
	if(IsPlayerInRangeOfPoint(playerid, 3.0, -33.8530,1507.7990,12.7560)) {
		return 	ShowPlayerDialog(playerid, DIALOG_BEKHOA, DIALOG_STYLE_INPUT, "Be Khoa Nha Tu","De be khoa duoc canh cua nay ban can phai co mot mat khau.\n\nGoi Y :Mat khau la mot so ngau nhien tu 1 den 100. \n\nChuc ban thanh cong ^^", "Dong Y", "Huy bo" );
	}
	else SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban khong o gan don canh sat!");
	return 1;
}
hook OnGameModeInit()
{
	PassNhaTu = random(100);
	printf("%d", PassNhaTu);
	for(new i = 0; i < MAX_RauMuong;i++) {
	    CreateRauMuong(i);
	}
	for(new i = 0; i < MAX_KhoangSan;i++) {
	    CreateKhoangSan(i);
	}
	LoadGlobalKSTD();
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch (dialogid)
    {
        case DIALOG_BEKHOA:
        {
            if(response)
            {
                new result;
                if(sscanf(inputtext, "d",result)) return ShowPlayerDialog(playerid, DIALOG_BEKHOA, DIALOG_STYLE_INPUT, "Be Khoa Nha Tu","De be khoa duoc canh cua nay ban can phai co mot mat khau.\n\nGoi Y :Mat khau la mot so ngau nhien tu 1 den 100. \n\nChuc ban thanh cong ^^ \n\n Mat Khau Phai La Mot Con So!", "Dong Y", "Huy bo" );
                if (PassNhaTu == result)
                {
                    SendClientMessage(playerid,-1,"{FF0000}[CUOP TU NHAN]{FFFF00}: Ban da be khoa thanh cong pass nha tu.");
                    SendClientMessage(playerid,-1,"{FF0000}[CHU Y]{FFFF00}: De cuop tu nhan, lai gan tu nhan va [/cuoptunhan].");
                    SetPlayerPos(playerid, 1597.2811,-1710.6925,1448.7872);
                    SetPlayerInterior(playerid, 1);
                    PlayerInfo[playerid][pInt] = 1;
                    SetPlayerVirtualWorld(playerid, 0);
                    PlayerInfo[playerid][pVW] = 0;
                    PassNhaTu = random(100);
                    printf("%d", PassNhaTu);
                    return 1;
	   		    } else return ShowPlayerDialog(playerid, DIALOG_BEKHOA, DIALOG_STYLE_INPUT, "Be Khoa Nha Tu","De be khoa duoc canh cua nay ban can phai co mot mat khau.\n\nGoi Y :Mat khau la mot so ngau nhien tu 1 den 100. \n\nChuc ban thanh cong ^^ \n\n Ban Da Nhap Sai Pass Nha Tu! - Vui long nhap lai", "Dong Y", "Huy bo" );
	 	    } else return 1;
	    }
    }
    return 1;
}


hook OnPlayerDisconnect(playerid, reason) {
	if(GetPVarInt(playerid,"DangHaiCan") == 1 ) {
		csinfo[GetPVarInt(playerid,"HaiCanID")][danghai] = false;
		DeletePVar(playerid,"DangHaiCan");
		KillTimer(csinfo[GetPVarInt(playerid,"HaiCanID")][RauMuong_timeex]); 
	}
	if(GetPVarInt(playerid,"DangDaoKS") == 1 ) {
		ksinfo[GetPVarInt(playerid,"KhoangSanID")][dangdao] = false;
		DeletePVar(playerid,"DangHaiCan");
		KillTimer(ksinfo[GetPVarInt(playerid,"KhoangSanID")][KhoangSan_timeex]); 
		PlayerTextDrawHide(playerid, KS_PTD[playerid][0]);
		SwitchTextDraws(playerid, 0);
		PlayerKhoangSanComplete[playerid] = DefaultProgress;
	}
}


hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(newkeys & KEY_YES) {
		for(new i = 0; i < MAX_RauMuong;i++) {
			if(csinfo[i][RauMuong_enable] == true) {
			    if(IsPlayerInRangeOfPoint(playerid, 2, RauMuong_pos[i][0],RauMuong_pos[i][1],RauMuong_pos[i][2]))
			    {
			    	if(PlayerInfo[playerid][pJailTime] < 1) return SendClientMessage(playerid, -1, "{7eead1}[RAU MUONG] {ffffff}Ban Phai la tu nhan moi co the hai rau muong!.");
			    	if(IsPlayerInAnyVehicle(playerid))
			    	{
                    	return SendClientMessage(playerid, -1, "{7eead1}[RAU MUONG] {ffffff}Ban khong the lam dieu nay khi o trong xe.");
                    }
                    if(GetPVarInt(playerid,"DangHaiCan") == 1) return SendClientMessage(playerid, -1, "{7eead1}[RAU MUONG] {ffffff}Ban dang hai rau muong roi.");
			    	if(csinfo[i][danghai] == true) return SendClientMessage(playerid, -1, "{7eead1}[RAU MUONG] {ffffff}Rau muong nay da co nguoi hai roi.");
			    	ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 1, 0, 0, 0, 0, 1);
			    	SetPVarInt(playerid, "DangHaiCan", 1);
			    	SetPVarInt(playerid, "HaiCanID", i);
			    	csinfo[i][danghai] = true;
			    	//csinfo[i][RauMuong_timeex] = SetTimerEx("TimeThuHoach", 1000, true, "dd", playerid, i);
			    	LoaderStarting(playerid, LOADING_HAIRAU, "Dang hai rau muong...", 0.5,5);
			    	break ;
			    }
			}
		}
		for(new i = 0; i < MAX_KhoangSan;i++) {
			if(ksinfo[i][KhoangSan_enable] == true) {
			    if(IsPlayerInRangeOfPoint(playerid, 2, KhoangSan_pos[i][0],KhoangSan_pos[i][1],KhoangSan_pos[i][2]))
			    {
			    	if(PlayerInfo[playerid][pJailTime] < 1) return SendClientMessage(playerid, -1, "{ff6600}[Khoang San] {ffffff}Ban Phai la tu nhan moi co the dao khoang san!.");
			    	if(IsPlayerInAnyVehicle(playerid))
			    	{
                    	return SendClientMessage(playerid, -1, "{ff6600}[Khoang San] {ffffff}Ban khong the lam dieu nay khi o trong xe.");
                    }
                    if(GetPVarInt(playerid,"DangDaoKS") == 1) return SendClientMessage(playerid, -1, "{ff6600}[Khoang San] {ffffff}Ban dang dao Khoang San roi.");
			    	if(ksinfo[i][dangdao] == true) return SendClientMessage(playerid, -1, "{ff6600}[Khoang San] {ffffff}Khoang San nay da co nguoi dao roi.");
			    	SetPlayerAttachedObject(playerid, 1, 18634, 6, 0.078222, 0.000000, 0.110844, 298.897308, 264.126861, 193.350555, 1.000000, 1.000000, 1.000000);
					TogglePlayerControllable(playerid, 0);
					SetPlayerArmedWeapon(playerid, 0);
					ApplyAnimation(playerid, "SWORD", "sword_4", 4.0, 1, 0, 0, 0, 0, 1);
			    	SwitchTextDraws(playerid, 1);
					PlayerTextDrawTextSize(playerid, KS_PTD[playerid][0], PlayerKhoangSanComplete[playerid]*1.0, 17.0000);
					PlayerTextDrawShow(playerid, KS_PTD[playerid][0]);
			    	SetPVarInt(playerid, "DangDaoKS", 1);
			    	SetPVarInt(playerid, "KhoangSanID", i);
			    	ksinfo[i][dangdao] = true;
			    	ksinfo[i][KhoangSan_timeex] = SetTimerEx("TimeDaoKS", 1000, true, "dd", playerid, i);
			    	//LoaderStarting(playerid, LOADING_HAICAN, "Dang thu hoach can sa...", 1,5);
			    	break ;
			    }
			}
		}
	}
	else if(newkeys == KEY_NO)
	{
	    if(GetPVarInt(playerid, "DangDaoKS"))
	    {
	    	PlayerKhoangSanComplete[playerid] += 4;
	    	return 1;
	    }
	}
	return 1;
}

forward TimeDaoKS(playerid, i);
public TimeDaoKS(playerid, i)
{
	if(0 < PlayerKhoangSanComplete[playerid] < 100)
	{
		PlayerKhoangSanComplete[playerid]-= 2;
		PlayerTextDrawTextSize(playerid, KS_PTD[playerid][0], PlayerKhoangSanComplete[playerid]*1.0, 17.0000);//1.211894
		PlayerTextDrawShow(playerid, KS_PTD[playerid][0]);
		PlayerPlaySound(playerid,20803,0.0,0.0,0.0);
		return 1;
	}
	if(PlayerKhoangSanComplete[playerid] >= 100)
	{
		if(IsPlayerAttachedObjectSlotUsed(playerid, 1))RemovePlayerAttachedObject(playerid, 1);
		SendClientMessage(playerid, -1, "{ff6600}[Khoang San] {ffffff}Ban da dao thanh cong khoang san!");
		SetPlayerCheckpoint(playerid, -17.1264,1557.6027,12.7500, 3.0);
 		CP[playerid] = 987;
 		SetPlayerAttachedObject(playerid, 1, 905, 1, -0.014000, 0.524000, 0.299999, -86.000000, -86.499977, 0.000000, 1.000000, 1.000000, 1.000000);
 		ApplyAnimation(playerid, "carry", "crry_prtial", 4.1,1,1,0,0,0); 
 		SetPlayerSpecialAction(playerid,SPECIAL_ACTION_CARRY);
		//IsPlayerHaveKhoangSan[playerid] = true;
	}
	else if(PlayerKhoangSanComplete[playerid] <= 0)
	{
	    SendClientMessage(playerid, -1, "{ff6600}[Khoang San] {ffffff}Ban da dao that bai cuc khoang san do!");
	    if(IsPlayerAttachedObjectSlotUsed(playerid, 1))RemovePlayerAttachedObject(playerid, 1);
	}


	KillTimer(ksinfo[i][KhoangSan_timeex]);
	PlayerTextDrawHide(playerid, KS_PTD[playerid][0]);
	SwitchTextDraws(playerid, 0);
	PlayerKhoangSanComplete[playerid] = DefaultProgress;
	DeletePVar(playerid, "DangDaoKS");
    KillTimer(ksinfo[i][KhoangSan_timeex]); 
	DeletePVar(playerid,"KhoangSanID");
	ksinfo[i][KhoangSan_enable] = false;
	DestroyDynamicObject(ksinfo[i][KhoangSan_object]);
	DestroyDynamic3DTextLabel(ksinfo[i][KhoangSan_text]);
 	ClearAnimations(playerid);
 	TogglePlayerControllable(playerid, 1);
	SetTimerEx("RespawnKhoangSan", 120000, false, "d", i);
	return 1;
}


stock LoadGlobalKSTD()
{
	/*ïðîãðåññ áàð*/
	KS_TD[0] = TextDrawCreate(260.0000, 396.0000, "LD_SPAC:WHITE"); // ïóñòî
	TextDrawTextSize(KS_TD[0], 102.0000, 17.0000);
	TextDrawAlignment(KS_TD[0], 1);
	TextDrawColor(KS_TD[0], -1200224769);
	TextDrawBackgroundColor(KS_TD[0], 255);
	TextDrawFont(KS_TD[0], 4);
	TextDrawSetProportional(KS_TD[0], 0);
	TextDrawSetShadow(KS_TD[0], 0);

	KS_TD[1] = TextDrawCreate(294.0000, 398.0000, "BAM 'N' DE LAM VIEC"); // ïóñòî
	TextDrawLetterSize(KS_TD[1], 0.2593, 1.2208);
	TextDrawAlignment(KS_TD[1], 1);
	TextDrawColor(KS_TD[1], -23);
	TextDrawBackgroundColor(KS_TD[1], 255);
	TextDrawFont(KS_TD[1], 1);
	TextDrawSetProportional(KS_TD[1], 1);
	TextDrawSetShadow(KS_TD[1], 0);

	KS_TD[2] = TextDrawCreate(260.0000, 390.0000, "ld_beat:chit"); // ïóñòî
	TextDrawTextSize(KS_TD[2], 5.0000, 5.0000);
	TextDrawAlignment(KS_TD[2], 1);
	TextDrawColor(KS_TD[2], -6160129);
	TextDrawBackgroundColor(KS_TD[2], 255);
	TextDrawFont(KS_TD[2], 4);
	TextDrawSetProportional(KS_TD[2], 0);
	TextDrawSetShadow(KS_TD[2], 0);

	KS_TD[3] = TextDrawCreate(254.0000, 397.0000, "ld_beat:chit"); // ïóñòî
	TextDrawTextSize(KS_TD[3], 5.0000, 5.0000);
	TextDrawAlignment(KS_TD[3], 1);
	TextDrawColor(KS_TD[3], -6160129);
	TextDrawBackgroundColor(KS_TD[3], 255);
	TextDrawFont(KS_TD[3], 4);
	TextDrawSetProportional(KS_TD[3], 0);
	TextDrawSetShadow(KS_TD[3], 0);

	KS_TD[4] = TextDrawCreate(253.0000, 391.0000, "ld_beat:chit"); // ïóñòî
	TextDrawTextSize(KS_TD[4], 5.0000, 5.0000);
	TextDrawAlignment(KS_TD[4], 1);
	TextDrawColor(KS_TD[4], -6160129);
	TextDrawBackgroundColor(KS_TD[4], 255);
	TextDrawFont(KS_TD[4], 4);
	TextDrawSetProportional(KS_TD[4], 0);
	TextDrawSetShadow(KS_TD[4], 0);
	return 1;
}
stock LoadPlayerKSTD(playerid)
{
	//ProgressTD
	KS_PTD[playerid][0] = CreatePlayerTextDraw(playerid, 260.0000, 396.0000, "ld_spac:WHITE");
	PlayerTextDrawTextSize(playerid, KS_PTD[playerid][0], 0.0000, 17.0000);
	PlayerTextDrawAlignment(playerid, KS_PTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, KS_PTD[playerid][0], -6160129);
	PlayerTextDrawBackgroundColor(playerid, KS_PTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, KS_PTD[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, KS_PTD[playerid][0], 0);
	PlayerTextDrawSetShadow(playerid, KS_PTD[playerid][0], 0);
	return 1;
}



stock SwitchTextDraws(playerid, status)
{
	if(!status)for(new i; i < sizeof(KS_TD); i++)TextDrawHideForPlayer(playerid, KS_TD[i]);
	else for(new i; i < sizeof(KS_TD); i++)TextDrawShowForPlayer(playerid, KS_TD[i]);
	return 1;
}
/*forward TimeThuHoach(playerid, i);
public TimeThuHoach(playerid, i)
{
    if (csinfo[i][RauMuong_timethuhoach] < THUHOACHTIME) {
        new string[128];
        csinfo[i][RauMuong_timethuhoach]++;

        format(string, sizeof(string), "CON %d GIAY CON LAI", THUHOACHTIME - csinfo[i][RauMuong_timethuhoach]);
        GameTextForPlayer(playerid, string, 1000, 5);

    }
    else {
        ClearAnimations(playerid);
        KillTimer(csinfo[i][RauMuong_timeex]); 
		DeletePVar(playerid,"DangHaiCan");
		DeletePVar(playerid,"HaiCanID");
		csinfo[i][RauMuong_enable] = false;
		DestroyDynamicObject(csinfo[i][RauMuong_object]);
		DestroyDynamic3DTextLabel(csinfo[i][RauMuong_text]);
		csinfo[i][RauMuong_timethuhoach] = 0;
    	SetPlayerAttachedObject(playerid, 1, 19473, 1, 0.035000, 0.606999, -0.885999, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000);
 		ApplyAnimation(playerid, "carry", "crry_prtial", 4.1,1,1,0,0,0); 
 		SetPlayerSpecialAction(playerid,SPECIAL_ACTION_CARRY);
 		SetPlayerCheckpoint(playerid, -17.1264,1557.6027,12.7500, 3.0);
 		CP[playerid] = 987;
 		ClearAnimations(playerid);
 		TogglePlayerControllable(playerid, 1);
		SetTimerEx("RespawnRauMuong", 120000, false, "d", i);

    }
    return 1;
}*/

hook OnPlayerEnterCheckpoint(playerid)
{
    if(CP[playerid] == 987)
    {
    	DisablePlayerCheckpoint(playerid);
    	SetPlayerSpecialAction(playerid,0);
        RemovePlayerAttachedObject(playerid, 1);
        PlayerInfo[playerid][pJailTime] -=10;
        if(PlayerInfo[playerid][pJailTime] < 0)
        PlayerInfo[playerid][pJailTime] = 0;
        SendClientMessage(playerid, -1, "{ffffff}Ban duoc giam 10s thoi gian trong tu tu cong viec.");
    }
    return 1;
}


stock CreateRauMuong(i) {
	new cstext[129];
    csinfo[i][RauMuong_object] = CreateDynamicObject(19473,  RauMuong_pos[i][0], RauMuong_pos[i][1],RauMuong_pos[i][2]-1, 0,0,0);
    format(cstext, sizeof(cstext), "{7eead1}[RAU MUONG] (%d){ffffff}\nSu dung 'Y' de bat dau thu hoach.", i);
    csinfo[i][RauMuong_text] = CreateDynamic3DTextLabel(cstext, -1,RauMuong_pos[i][0], RauMuong_pos[i][1],RauMuong_pos[i][2]-1, 10);
    csinfo[i][RauMuong_enable] = true;
    csinfo[i][danghai] = false;
    return 1;
}


forward RespawnRauMuong(i);
public RespawnRauMuong(i) {
	new cstext[129];
	csinfo[i][RauMuong_object] = CreateDynamicObject(19473,  RauMuong_pos[i][0], RauMuong_pos[i][1],RauMuong_pos[i][2]-1, 0,0,0);
    format(cstext, sizeof(cstext), "{7eead1}[RAU MUONG] (%d){ffffff}\nSu dung 'Y' de bat dau thu hoach.", i);
    csinfo[i][RauMuong_text] = CreateDynamic3DTextLabel(cstext, -1,RauMuong_pos[i][0], RauMuong_pos[i][1],RauMuong_pos[i][2]-1, 10);
    csinfo[i][RauMuong_enable] = true;
    csinfo[i][danghai] = false;
    return 1;
}

stock CreateKhoangSan(i) {
	new cstext[129];
    ksinfo[i][KhoangSan_object] = CreateDynamicObject(905,  KhoangSan_pos[i][0], KhoangSan_pos[i][1],KhoangSan_pos[i][2]-1, 0,0,0);
    format(cstext, sizeof(cstext), "{ff6600}[KHOANG SAN] (%d){ffffff}\nSu dung 'Y' de bat dau dao khoang san.", i);
    ksinfo[i][KhoangSan_text] = CreateDynamic3DTextLabel(cstext, -1,KhoangSan_pos[i][0], KhoangSan_pos[i][1],KhoangSan_pos[i][2]-1, 10);
    ksinfo[i][KhoangSan_enable] = true;
    ksinfo[i][dangdao] = false;
    return 1;
}


forward RespawnKhoangSan(i);
public RespawnKhoangSan(i) {
	new cstext[129];
	ksinfo[i][KhoangSan_object] = CreateDynamicObject(905,  KhoangSan_pos[i][0], KhoangSan_pos[i][1],KhoangSan_pos[i][2]-1, 0,0,0);
    format(cstext, sizeof(cstext), "{ff6600}[KHOANG SAN] (%d){ffffff}\nSu dung 'Y' de bat dau thu hoach.", i);
    ksinfo[i][KhoangSan_text] = CreateDynamic3DTextLabel(cstext, -1,KhoangSan_pos[i][0], KhoangSan_pos[i][1],KhoangSan_pos[i][2]-1, 10);
    ksinfo[i][KhoangSan_enable] = true;
    ksinfo[i][dangdao] = false;
    return 1;
}
