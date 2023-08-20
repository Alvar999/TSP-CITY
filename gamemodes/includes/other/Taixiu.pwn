#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//
#define 				DIALOG_TAIXIU				(9631)
#define 				DIALOG_TAI					(9632)
#define 				DIALOG_XIU					(9633)

new HeThongTaiXiu = 0;
new Phientaixiu = 1;
new KetQuaTaiXiu = 0;
new TimeTaiXiu = 60;
new ChonTaiAll = 0;
new ChonXiuAll = 0;
new TienCuocTaiAll = 0;
new TienCuocTraAll = 0;
new TienCuocXiuAll = 0;
new IdTaiWin = -1;
new IdXiuWin = -1;
new TienIdTaiWin = -1;
new TienIdXiuWin = -1;
new TTPhienTaiXiu[10000][500];
new TTWinTaiXiu[10000][500];
new ChonTaiXiu[MAX_PLAYERS];
new TimeChonTaiXiu[MAX_PLAYERS];
new TienCuocTaiXiu[MAX_PLAYERS];

new PlayerText:TD_Taixiu[MAX_PLAYERS][16];

// ---------------------------------- COMMAND ---------------------------------- //
CMD:edittaixiu(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 99999)
 	{
		new chon[32];
	    if(sscanf(params, "s[32]", chon))
		{
			SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /edittaixiu [ chon ]");
			SendClientMessageEx(playerid, COLOR_GREY, "chon: tai - xiu - ngaunhien - thang - thua");
			return 1;
		}
		else if(strcmp(chon,"tai",true) == 0)
		{
	        HeThongTaiXiu = 1;
	        SendClientMessageEx(playerid, -1,"ban da thay doi he thong Tai Xiu là [TAI]");
		}
		else if(strcmp(chon,"xiu",true) == 0)
		{
	        HeThongTaiXiu = 2;
	        SendClientMessageEx(playerid, -1,"ban da thay doi he thong Tai Xiu là [XIU]");
		}
		else if(strcmp(chon,"ngaunhien",true) == 0)
		{
	        HeThongTaiXiu = 0;
	        SendClientMessageEx(playerid, -1,"ban da thay doi he thong Tai Xiu là [Ngau Nhien]");
		}
		else if(strcmp(chon,"thang",true) == 0)
		{
	        HeThongTaiXiu = 3;
	        SendClientMessageEx(playerid, -1,"ban da thay doi he thong Tai Xiu là [ben nao nhieu tien cuoc ben do thang]");
		}
		else if(strcmp(chon,"thua",true) == 0)
		{
	        HeThongTaiXiu = 4;
	        SendClientMessageEx(playerid, -1,"ban da thay doi he thong Tai Xiu là [ben nao it tien cuoc ben do thang]");
		}
	}
	return 1;
}

CMD:taixiu(playerid, params[]) {
	ShowTaiXiu(playerid);

	new str1[1280], str2[1280], str3[1280], str[1280];
	format(str1, sizeof(str1), "TAI/XIU\tSo nguoi dang cuoc\tTong so tien cuoc");
	format(str2, sizeof(str2), "{ff0000}Tai{FFFFFF}\t%s nguoi\t%s$", number_format(ChonTaiAll), number_format(TienCuocTaiAll));
	format(str3, sizeof(str3), "{3aea46}Xiu{FFFFFF}\t%s nguoi\t%s$", number_format(ChonXiuAll), number_format(TienCuocXiuAll));
	format(str, sizeof(str), "%s\n%s\n%s", str1, str2, str3);

	ShowPlayerDialog(playerid, DIALOG_TAIXIU, DIALOG_STYLE_TABLIST_HEADERS, "TAI/XIU", str, "Dong y", "Huy bo");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == DIALOG_TAIXIU && response == 1) {
		if(listitem == 0) {
			new str[1280];
			format(str, sizeof(str), "> Ban hien dang co %s$\n> Ban vui long nhap so tien muon cuoc vai {ff0000}Tai{FFFFFF} vao ben duoi:", number_format(PlayerInfo[playerid][pCash]));
			ShowPlayerDialog(playerid, DIALOG_TAI, DIALOG_STYLE_INPUT, "TAI/XIU", str, "Cuoc ngay", "Huy bo");
			return 1;
		}
		if(listitem == 1) {
			new str[1280];
			format(str, sizeof(str), "> Ban hien dang co %s$\n> Ban vui long nhap so tien muon cuoc vai {3aea46}Xiu{FFFFFF} vao ben duoi:", number_format(PlayerInfo[playerid][pCash]));
			ShowPlayerDialog(playerid, DIALOG_XIU, DIALOG_STYLE_INPUT, "TAI/XIU", str, "Cuoc ngay", "Huy bo");
			return 1;
		}
	}

	if(dialogid == DIALOG_TAI && response == 1) {
		new tiencuoc = strval(inputtext);
		if(tiencuoc < 1 || tiencuoc > 100000000) return SendClientMessageEx(playerid, COLOR_GREY, "> So tien dat cuoc phai lon hon 1$ va nho hon 100m$");
		if(ChonTaiXiu[playerid] > 0) return SendClientMessageEx(playerid, COLOR_GREY, "> Ban da dat cuoc truoc do roi , khong the dat cuoc tiep tuc.");

		if(PlayerInfo[playerid][pCash] > tiencuoc)
		{
			ChonTaiXiu[playerid] = 1;
	        TienCuocTaiXiu[playerid] = tiencuoc;
	        GivePlayerCash(playerid,-tiencuoc);
	        ChonTaiAll++;
	        TienCuocTaiAll += tiencuoc;
	        TimeChonTaiXiu[playerid] = TimeTaiXiu;
	        new string[1280];
	        format(string,sizeof(string),"[tai xiu]ban da dat cuoc %d$ vao{ff0000} Tai{FFFFFF} o Phien [tai xiu] so %d",tiencuoc,Phientaixiu);
	        SendClientMessageEx(playerid, -1, string);

	        new taixiu[128];
	        format(taixiu, sizeof(taixiu), "[%d]%s$", ChonTaiAll, number_format(TienCuocTaiAll));
	        foreach(new i: Player) PlayerTextDrawSetString(i, TD_Taixiu[i][0], taixiu);

	        if(tiencuoc > TienIdTaiWin)
	        {
	            IdTaiWin = playerid;
	            TienIdTaiWin = tiencuoc;
	        }

	        return 1;
		}else {
			SendClientMessage(playerid, COLOR_YELLOW, "> So tien dat cuoc cua ban lon hon so tien ban dang co.");
			return 1;
		}
	}

	if(dialogid == DIALOG_XIU && response == 1) {
		new tiencuoc = strval(inputtext);
		if(tiencuoc < 1 || tiencuoc > 100000000) return SendClientMessageEx(playerid, COLOR_GREY, "> So tien dat cuoc phai lon hon 1$ va nho hon 100m$");
		if(ChonTaiXiu[playerid] > 0) return SendClientMessageEx(playerid, COLOR_GREY, "> Ban da dat cuoc truoc do roi , khong the dat cuoc tiep tuc.");

		if(PlayerInfo[playerid][pCash] > tiencuoc)
		{
			ChonTaiXiu[playerid] = 2;
	        TienCuocTaiXiu[playerid] = tiencuoc;
	        GivePlayerCash(playerid,-tiencuoc);
	        ChonXiuAll++;
	        TienCuocXiuAll += tiencuoc;
	        TimeChonTaiXiu[playerid] = TimeTaiXiu;

	        new string[1280];
	        format(string,sizeof(string),"[tai xiu]ban da dat cuoc %d$ vao{3aea46} Xiu{FFFFFF} o Phien [tai xiu] so %d",tiencuoc,Phientaixiu);
	        SendClientMessageEx(playerid, -1, string);

	        new taixiu[128];
	        format(taixiu, sizeof(taixiu), "[%d]%s$", ChonXiuAll, number_format(TienCuocXiuAll));
	        foreach(new i: Player) PlayerTextDrawSetString(i, TD_Taixiu[i][1], taixiu);

	        if(tiencuoc > TienIdXiuWin)
	        {
	            IdXiuWin = playerid;
	            TienIdXiuWin = tiencuoc;
	        }

	        return 1;
		}else {
			SendClientMessage(playerid, COLOR_YELLOW, "> So tien dat cuoc cua ban lon hon so tien ban dang co.");
			return 1;
		}
	}
	return 1;
}

/*CMD:taixiu(playerid, params[])
{

    new string[128], chon[32],tiencuoc;
	if(sscanf(params, "s[32]d", chon, tiencuoc))
	{
		SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /taixiu [ chon ] [so tien cuoc]");
		SendClientMessageEx(playerid, COLOR_GREY, "chon: tai - xiu");
		SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /taixiuinfo de xem danh sách cuoc");
		SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /thongtinphien de xem chi tiet cua Phien");
		return 1;
	}
	else if(tiencuoc < 1 || tiencuoc > 100000000) return SendClientMessageEx(playerid, COLOR_GREY, "[tai xiu] - thông báo - tien cuoc khong the nho hon 1 va lon hon 100 trieu");
	else if(ChonTaiXiu[playerid] > 0) return SendClientMessageEx(playerid, COLOR_GREY, "[tai xiu] - thông báo - ban da dat cuoc roi");
	else if(PlayerInfo[playerid][pCash] < tiencuoc) return SendClientMessageEx(playerid, COLOR_GREY, "[tai xiu] - thông báo - ban khong co nhieu tien de dat cuoc");
    else if(strcmp(chon,"tai",true) == 0)
	{
        ChonTaiXiu[playerid] = 1;
        TienCuocTaiXiu[playerid] = tiencuoc;
        GivePlayerCash(playerid,-tiencuoc);
        ChonTaiAll++;
        TienCuocTaiAll += tiencuoc;
        TimeChonTaiXiu[playerid] = TimeTaiXiu;
        format(string,sizeof(string),"[tai xiu]ban da dat cuoc %d$ vao{ff0000} Tai{FFFFFF} o Phien [tai xiu] so %d",tiencuoc,Phientaixiu);
        SendClientMessageEx(playerid, -1, string);

        new taixiu[128];
        format(taixiu, sizeof(taixiu), "[%d]%s$", ChonTaiAll, number_format(TienCuocTaiAll));
        foreach(new i: Player) PlayerTextDrawSetString(i, TD_Taixiu[i][0], taixiu);

        if(tiencuoc > TienIdTaiWin)
        {
            IdTaiWin = playerid;
            TienIdTaiWin = tiencuoc;
        }
	}
	else if(strcmp(chon,"xiu",true) == 0)
	{
        ChonTaiXiu[playerid] = 2;
        TienCuocTaiXiu[playerid] = tiencuoc;
        GivePlayerCash(playerid,-tiencuoc);
        ChonXiuAll++;
        TienCuocXiuAll += tiencuoc;
        TimeChonTaiXiu[playerid] = TimeTaiXiu;
        format(string,sizeof(string),"[tai xiu]ban da dat cuoc %d$ vao{3aea46} Xiu{FFFFFF} o Phien [tai xiu] so %d",tiencuoc,Phientaixiu);
        SendClientMessageEx(playerid, -1, string);

        new taixiu[128];
        format(taixiu, sizeof(taixiu), "[%d]%s$", ChonXiuAll, number_format(TienCuocXiuAll));
        foreach(new i: Player) PlayerTextDrawSetString(i, TD_Taixiu[i][1], taixiu);

        if(tiencuoc > TienIdXiuWin)
        {
            IdXiuWin = playerid;
            TienIdXiuWin = tiencuoc;
        }
	}
	return 1;
}*/
CMD:taixiuinfo(playerid, params[])
{//3aea46
	new string[128],taixiu[32],taixiuid[32],string2[1024];
	switch(ChonTaiXiu[playerid])
	{
		case 1: taixiu = "{ff0000}Tai{ffffff}";
		case 2: taixiu = "{ffec8b}Xiu{ffffff}";
    }
	format(string,sizeof(string),"_____________{ffec8b}Tai Xiu(%d)_(con %d giay)_____________",Phientaixiu,TimeTaiXiu);
	SendClientMessageEx(playerid, -1, string);
	format(string,sizeof(string),"{ff0000}Tai {ffffff}(%d nguoi)>>> VS <<<{3aea46}Xiu {ffffff}(%d nguoi)",ChonTaiAll,ChonXiuAll);
	SendClientMessageEx(playerid, -1, string);
	format(string,sizeof(string),"{ff0000}Tai {2d68cc}($%s)>>> VS <<<{3aea46}Xiu {2d68cc}($%s)",number_format(TienCuocTaiAll),number_format(TienCuocXiuAll));
	SendClientMessageEx(playerid, -1, string);
	if(ChonTaiXiu[playerid] > 0)
	{
		format(string,sizeof(string),"ban da dat cuoc vao %s so tien %s $",taixiu,number_format(TienCuocTaiXiu[playerid]));
 		SendClientMessageEx(playerid, -1, string);
	}
	new szDialog[1024];
	foreach(new i: Player)
	{
	    switch(ChonTaiXiu[i])
		{
			case 1: taixiuid = "{ff0000}Tai{ffffff}";
			case 2: taixiuid = "{2d68cc}Xiu{ffffff}";
    	}
		if(ChonTaiXiu[i] > 0)
		{
			format(szDialog, sizeof(szDialog), "%s\n%s\t%s\t%s", szDialog, GetPlayerNameEx(i),taixiuid,number_format(TienCuocTaiXiu[i]));
		}
	}
	format(string2,sizeof(string2),"Ten\tDat cuoc vao\tso tien\n%s",szDialog);
	if(!isnull(szDialog))
	{
 		strdel(szDialog, 0, 1);
	  	ShowPlayerDialog(playerid, 123,DIALOG_STYLE_TABLIST_HEADERS, "Tai Xiu info",string2,"chon", "thoat");
 	}
	return 1;
}
CMD:thongtinphien(playerid, params[])
{
	new number;
    if(sscanf(params, "d", number))
	{
		SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /thongtinphien [phien]");
	}
	new string1[128];
	format(string1,sizeof(string1),"Phieu Tai Xiu %d",number);
    SetPVarInt(playerid,"phien",number);
  	ShowPlayerDialog(playerid, 123,DIALOG_STYLE_LIST,string1,TTPhienTaiXiu[number],"chon", "thoat");

	return 1;
}

// ---------------------------------- FUNCTION ---------------------------------- //

stock ShowTaiXiu(playerid) {

	new tai[128], xiu[128], mataixiu[128];
    format(tai, sizeof(tai), "[%d]%s$", ChonTaiAll, number_format(TienCuocTaiAll));
    PlayerTextDrawSetString(playerid, TD_Taixiu[playerid][0], tai);

    format(xiu, sizeof(xiu), "[%d]%s$", ChonXiuAll, number_format(TienCuocTaiAll));
    PlayerTextDrawSetString(playerid, TD_Taixiu[playerid][1], xiu);

    format(mataixiu, sizeof(mataixiu), "MSTX:_%d", Phientaixiu);
    PlayerTextDrawSetString(playerid, TD_Taixiu[playerid][4], mataixiu);

	PlayerTextDrawShow(playerid, TD_Taixiu[playerid][0]);
	PlayerTextDrawShow(playerid, TD_Taixiu[playerid][1]);
	PlayerTextDrawShow(playerid, TD_Taixiu[playerid][2]);
	PlayerTextDrawShow(playerid, TD_Taixiu[playerid][3]);
	PlayerTextDrawShow(playerid, TD_Taixiu[playerid][4]);
	PlayerTextDrawShow(playerid, TD_Taixiu[playerid][5]);
	PlayerTextDrawShow(playerid, TD_Taixiu[playerid][6]);
	PlayerTextDrawShow(playerid, TD_Taixiu[playerid][7]);
	PlayerTextDrawShow(playerid, TD_Taixiu[playerid][8]);
	PlayerTextDrawShow(playerid, TD_Taixiu[playerid][9]);
	PlayerTextDrawShow(playerid, TD_Taixiu[playerid][10]);
	PlayerTextDrawShow(playerid, TD_Taixiu[playerid][11]);
	PlayerTextDrawShow(playerid, TD_Taixiu[playerid][12]);
	PlayerTextDrawShow(playerid, TD_Taixiu[playerid][13]);
	PlayerTextDrawShow(playerid, TD_Taixiu[playerid][14]);
	PlayerTextDrawShow(playerid, TD_Taixiu[playerid][15]);
	return 1;
}

stock UpdateColorTX(playerid, id) {
	for(new i = 8; i < 16; i++) {
	    PlayerTextDrawHide(playerid, TD_Taixiu[playerid][i]);
		if(id == 1) {
			PlayerTextDrawColor(playerid, TD_Taixiu[playerid][i], -16776961);
		}
		else {
			PlayerTextDrawColor(playerid, TD_Taixiu[playerid][i], 16711935);
		}
		PlayerTextDrawShow(playerid, TD_Taixiu[playerid][i]);
	}
	return 1;
}

task eventtaixiu[1000]()
{
    if(TimeTaiXiu > 0)
	{
	    TimeTaiXiu--;

	    new taixiu[128];
        format(taixiu, sizeof(taixiu), "%d", TimeTaiXiu);
        foreach(new i: Player) PlayerTextDrawSetString(i, TD_Taixiu[i][6], taixiu);
	}
	if(TimeTaiXiu == 0)
	{
	    new string[1024],string2[1024],ketqua[32];
	    if(HeThongTaiXiu == 0)
	    {
			switch(random(4))
			{
	        	case 0,2: KetQuaTaiXiu = 1;
				case 1,3: KetQuaTaiXiu = 2;
			}
		}
		if(HeThongTaiXiu == 1)
	    {
			KetQuaTaiXiu = 1;
		}
		if(HeThongTaiXiu == 2)
	    {
			KetQuaTaiXiu = 2;
		}
		if(HeThongTaiXiu == 3 && TienCuocTaiAll > TienCuocXiuAll)
	    {
			KetQuaTaiXiu = 1;
		}
		if(HeThongTaiXiu == 3 && TienCuocTaiAll < TienCuocXiuAll)
	    {
			KetQuaTaiXiu = 2;
		}
		if(HeThongTaiXiu == 3 && TienCuocTaiAll == TienCuocXiuAll)
	    {
			switch(random(4))
			{
	        	case 0,2: KetQuaTaiXiu = 1;
				case 1,3: KetQuaTaiXiu = 2;
			}
		}
		if(HeThongTaiXiu == 4 && TienCuocTaiAll > TienCuocXiuAll)
	    {
			KetQuaTaiXiu = 2;
		}
		if(HeThongTaiXiu == 4 && TienCuocTaiAll < TienCuocXiuAll)
	    {
			KetQuaTaiXiu = 1;
		}
		if(HeThongTaiXiu == 4 && TienCuocTaiAll == TienCuocXiuAll)
	    {
			switch(random(4))
			{
	        	case 0,2: KetQuaTaiXiu = 1;
				case 1,3: KetQuaTaiXiu = 2;
			}
		}
		switch(KetQuaTaiXiu)
		{
		    case 1: ketqua = "{ff0000}Tai{ffffff}";
		    case 2: ketqua = "{3aea46}Xiu{ffffff}";
		}
		new totalwealth;
		totalwealth = TienCuocTaiAll + TienCuocXiuAll - TienCuocTraAll;
	    foreach(new i: Player)
		{
			if(TimeChonTaiXiu[i] < 10)
			{
			    if(TienCuocTaiXiu[i] > 0)
			    {
					format(string,sizeof(string),"[tai xiu]ban duoc tra lai %d$ va loai khoi phien nay de can bang giua tai va xiu",TienCuocTaiXiu[i]);
            		SendClientMessageEx(i, -1, string);
            		SendClientMessageEx(i, -1, "[TAI XIU] Co gang tham gia som hon de khong bi loai ra nhe");
            		GivePlayerCash(i,TienCuocTaiXiu[i]);
                    TienCuocTraAll = TienCuocTraAll + TienCuocTaiXiu[i];
				}
				if(TienCuocTaiAll == 0 && KetQuaTaiXiu == 1)
				{
            		format(string,sizeof(string),"[TAI XIU] Phien so %d tuyen bo: %s thang( Tong tien cuoc: %s$)",Phientaixiu,ketqua,number_format(totalwealth));
            		SendClientMessageEx(i, -1, string);
            		UpdateColorTX(i, 1);
				}
				if(TienCuocTaiAll > 0 && KetQuaTaiXiu == 1)
				{
            		format(string,sizeof(string),"[TAI XIU] Phien so %d tuyen bo: %s thang( Tong tien cuoc: %s$ - An nhieu nhat: %s [%s$])",Phientaixiu,ketqua,number_format(totalwealth),GetPlayerNameEx(IdTaiWin),number_format(TienIdTaiWin*2));
            		SendClientMessageEx(i, -1, string);
            		UpdateColorTX(i, 1);
				}
				if(TienCuocXiuAll == 0 && KetQuaTaiXiu == 2)
				{
            		format(string,sizeof(string),"[TAI XIU] Phien so %d tuyen bo: %s thang( Tong tien cuoc: %s$)",Phientaixiu,ketqua,number_format(totalwealth));
            		SendClientMessageEx(i, -1, string);
            		UpdateColorTX(i, 2);
				}
				if(TienCuocXiuAll > 0 && KetQuaTaiXiu == 2)
				{
            		format(string,sizeof(string),"[TAI XIU] Phien so %d tuyen bo: %s thang( Tong tien cuoc: %s$ - An nhieu nhat: %s [%s$])",Phientaixiu,ketqua,number_format(totalwealth),GetPlayerNameEx(IdXiuWin),number_format(TienIdXiuWin*2));
            		SendClientMessageEx(i, -1, string);
            		UpdateColorTX(i, 2);
				}
            	ChonTaiXiu[i] = 0;
				TimeChonTaiXiu[i] = 0;
				TienCuocTaiXiu[i ]= 0;
			}
			if(TimeChonTaiXiu[i] >= 10)
			{
				if(ChonTaiXiu[i] == KetQuaTaiXiu)
				{
     				if(TienCuocTaiAll == 0 && KetQuaTaiXiu == 1)
					{
	            		format(string,sizeof(string),"[TAI XIU] Phien so %d tuyen bo: %s thang( Tong tien cuoc: %s$)",Phientaixiu,ketqua,number_format(totalwealth));
	            		SendClientMessageEx(i, -1, string);
	            		UpdateColorTX(i, 1);
					}
					if(TienCuocTaiAll > 0 && KetQuaTaiXiu == 1)
					{
	            		format(string,sizeof(string),"[TAI XIU] Phien so %d tuyen bo: %s thang( Tong tien cuoc: %s$ - An nhieu nhat: %s [%s$])",Phientaixiu,ketqua,number_format(totalwealth),GetPlayerNameEx(IdTaiWin),number_format(TienIdTaiWin*2));
	            		SendClientMessageEx(i, -1, string);
	            		UpdateColorTX(i, 1);
					}
					if(TienCuocXiuAll == 0 && KetQuaTaiXiu == 2)
					{
	            		format(string,sizeof(string),"[TAI XIU] Phien so %d tuyen bo: %s thang( Tong tien cuoc: %s$)",Phientaixiu,ketqua,number_format(totalwealth));
	            		SendClientMessageEx(i, -1, string);
	            		UpdateColorTX(i, 2);
					}
					if(TienCuocXiuAll > 0 && KetQuaTaiXiu == 2)
					{
	            		format(string,sizeof(string),"[TAI XIU] Phien so %d tuyen bo: %s thang( Tong tien cuoc: %s$ - An nhieu nhat: %s [%s$])",Phientaixiu,ketqua,number_format(totalwealth),GetPlayerNameEx(IdXiuWin),number_format(TienIdXiuWin*2));
	            		SendClientMessageEx(i, -1, string);
	            		UpdateColorTX(i, 2);
					}
	            	format(string,sizeof(string),"[TAI XIU] ban da thang trong phien nay va ban nhan duoc %d$",TienCuocTaiXiu[i]*2);
	            	SendClientMessageEx(i, -1, string);
	            	format(string2, sizeof(string2),"%s\n%s\t%s",
					string2,
					GetPlayerNameEx(i),number_format(TienCuocTaiXiu[i]*2));
	            	GivePlayerCash(i,TienCuocTaiXiu[i]*2);
	            	ChonTaiXiu[i] = 0;
					TimeChonTaiXiu[i] = 0;
					TienCuocTaiXiu[i ]= 0;

					new taixiu[128];
			        format(taixiu, sizeof(taixiu), "MSTX:_%d", Phientaixiu);
			        PlayerTextDrawSetString(i, TD_Taixiu[i][4], taixiu);
				}
				else if(ChonTaiXiu[i] != KetQuaTaiXiu)
				{
	         		if(TienCuocTaiAll == 0 && KetQuaTaiXiu == 1)
					{
	            		format(string,sizeof(string),"[TAI XIU] Phien so %d tuyen bo: %s thang( Tong tien cuoc: %s$)",Phientaixiu,ketqua,number_format(totalwealth));
	            		SendClientMessageEx(i, -1, string);
	            		UpdateColorTX(i, 1);
					}
					if(TienCuocTaiAll > 0 && KetQuaTaiXiu == 1)
					{
	            		format(string,sizeof(string),"[TAI XIU] Phien so %d tuyen bo: %s thang( Tong tien cuoc: %s$ - An nhieu nhat: %s [%s$])",Phientaixiu,ketqua,number_format(totalwealth),GetPlayerNameEx(IdTaiWin),number_format(TienIdTaiWin*2));
	            		SendClientMessageEx(i, -1, string);
	            		UpdateColorTX(i, 1);
					}
					if(TienCuocXiuAll == 0 && KetQuaTaiXiu == 2)
					{
	            		format(string,sizeof(string),"[TAI XIU] Phien so %d tuyen bo: %s thang( Tong tien cuoc: %s$)",Phientaixiu,ketqua,number_format(totalwealth));
	            		SendClientMessageEx(i, -1, string);
	            		UpdateColorTX(i, 2);
					}
					if(TienCuocXiuAll > 0 && KetQuaTaiXiu == 2)
					{
	            		format(string,sizeof(string),"[TAI XIU] Phien so %d tuyen bo: %s thang( Tong tien cuoc: %s$ - An nhieu nhat: %s [%s$])",Phientaixiu,ketqua,number_format(totalwealth),GetPlayerNameEx(IdXiuWin),number_format(TienIdXiuWin*2));
	            		SendClientMessageEx(i, -1, string);
	            		UpdateColorTX(i, 2);
					}
	            	if(ChonTaiXiu[i] > 0)
	            	{
	            		SendClientMessageEx(i, -1, "[TAI XIU] ban da thua trong phien nay");
					}
	            	ChonTaiXiu[i] = 0;
					TimeChonTaiXiu[i] = 0;
					TienCuocTaiXiu[i ]= 0;
				}
			}

			new tai[128], xiu[128], mataixiu[128];
		    format(tai, sizeof(tai), "[%d]%s$", 0, number_format(0));
		    PlayerTextDrawSetString(i, TD_Taixiu[i][0], tai);

		    format(xiu, sizeof(xiu), "[%d]%s$", 0, number_format(0));
		    PlayerTextDrawSetString(i, TD_Taixiu[i][1], xiu);

		    format(mataixiu, sizeof(mataixiu), "MSTX:_%d", Phientaixiu + 1);
		    PlayerTextDrawSetString(i, TD_Taixiu[i][4], mataixiu);
		}

		new year, month, day;
		getdate(year, month, day);
		format(TTPhienTaiXiu[Phientaixiu], sizeof(string), "Thoi gian: %d/%d/%d - %d:%d:%d\n\
		Ket qua: %s\n\
		Tong tien tai: %s\n\
		Tong tien xiu: %s\n\
		Tong tien hoan tra: %s\n\
		{ffec8b}>> chi tiet nguoi thang cuoc",
		month, day, year, hour, minuite,second,
		ketqua,
		number_format(TienCuocTaiAll),
		number_format(TienCuocXiuAll),
		number_format(TienCuocTraAll));
	 	format(TTWinTaiXiu[Phientaixiu], sizeof(string2), "%s",string2);
		Phientaixiu++;
		KetQuaTaiXiu = 0;
		TimeTaiXiu = 60;
		ChonTaiAll = 0;
		ChonXiuAll = 0;
		TienCuocTaiAll = 0;
		TienCuocXiuAll = 0;
		IdTaiWin = -1;
		IdXiuWin = -1;
		TienIdTaiWin = -1;
		TienIdXiuWin = -1;
		TienCuocTraAll = 0;
	}
	return 1;
}

// ---------------------------------- CALLBACKS ---------------------------------- //

hook OnPlayerDisconnect(playerid, reason)
{
    if(ChonTaiXiu[playerid] == 1)
    {
        ChonTaiAll--;
        TienCuocTaiAll -= TienCuocTaiXiu[playerid];
        TienCuocTaiXiu[playerid] = 0;
        ChonTaiXiu[playerid] = 0;
    }
	if(ChonTaiXiu[playerid] == 2)
    {
        ChonXiuAll--;
        TienCuocXiuAll -= TienCuocTaiXiu[playerid];
        TienCuocTaiXiu[playerid] = 0;
        ChonTaiXiu[playerid] = 0;
    }

    return 1;
}

hook OnPlayerConnect(playerid)
{
	TD_Taixiu[playerid][0] = CreatePlayerTextDraw(playerid, 155.000000, 406.000000, "[1]1,000,000");
	PlayerTextDrawFont(playerid, TD_Taixiu[playerid][0], 3);
	PlayerTextDrawLetterSize(playerid, TD_Taixiu[playerid][0], 0.416666, 1.199998);
	PlayerTextDrawTextSize(playerid, TD_Taixiu[playerid][0], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, TD_Taixiu[playerid][0], 0);
	PlayerTextDrawSetShadow(playerid, TD_Taixiu[playerid][0], 0);
	PlayerTextDrawAlignment(playerid, TD_Taixiu[playerid][0], 1);
	PlayerTextDrawColor(playerid, TD_Taixiu[playerid][0], -1);
	PlayerTextDrawBackgroundColor(playerid, TD_Taixiu[playerid][0], 255);
	PlayerTextDrawBoxColor(playerid, TD_Taixiu[playerid][0], 0);
	PlayerTextDrawUseBox(playerid, TD_Taixiu[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, TD_Taixiu[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, TD_Taixiu[playerid][0], 0);

	TD_Taixiu[playerid][1] = CreatePlayerTextDraw(playerid, 391.000000, 406.000000, "[1]1,000,000");
	PlayerTextDrawFont(playerid, TD_Taixiu[playerid][1], 3);
	PlayerTextDrawLetterSize(playerid, TD_Taixiu[playerid][1], 0.420832, 1.199998);
	PlayerTextDrawTextSize(playerid, TD_Taixiu[playerid][1], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, TD_Taixiu[playerid][1], 0);
	PlayerTextDrawSetShadow(playerid, TD_Taixiu[playerid][1], 0);
	PlayerTextDrawAlignment(playerid, TD_Taixiu[playerid][1], 1);
	PlayerTextDrawColor(playerid, TD_Taixiu[playerid][1], -1);
	PlayerTextDrawBackgroundColor(playerid, TD_Taixiu[playerid][1], 255);
	PlayerTextDrawBoxColor(playerid, TD_Taixiu[playerid][1], 0);
	PlayerTextDrawUseBox(playerid, TD_Taixiu[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, TD_Taixiu[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, TD_Taixiu[playerid][1], 0);

	TD_Taixiu[playerid][2] = CreatePlayerTextDraw(playerid, 192.000000, 392.000000, "TAI");
	PlayerTextDrawFont(playerid, TD_Taixiu[playerid][2], 1);
	PlayerTextDrawLetterSize(playerid, TD_Taixiu[playerid][2], 0.429165, 1.549998);
	PlayerTextDrawTextSize(playerid, TD_Taixiu[playerid][2], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, TD_Taixiu[playerid][2], 0);
	PlayerTextDrawSetShadow(playerid, TD_Taixiu[playerid][2], 1);
	PlayerTextDrawAlignment(playerid, TD_Taixiu[playerid][2], 1);
	PlayerTextDrawColor(playerid, TD_Taixiu[playerid][2], -16776961);
	PlayerTextDrawBackgroundColor(playerid, TD_Taixiu[playerid][2], 255);
	PlayerTextDrawBoxColor(playerid, TD_Taixiu[playerid][2], 0);
	PlayerTextDrawUseBox(playerid, TD_Taixiu[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, TD_Taixiu[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, TD_Taixiu[playerid][2], 0);

	TD_Taixiu[playerid][3] = CreatePlayerTextDraw(playerid, 432.000000, 392.000000, "XIU");
	PlayerTextDrawFont(playerid, TD_Taixiu[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid, TD_Taixiu[playerid][3], 0.429165, 1.549998);
	PlayerTextDrawTextSize(playerid, TD_Taixiu[playerid][3], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, TD_Taixiu[playerid][3], 0);
	PlayerTextDrawSetShadow(playerid, TD_Taixiu[playerid][3], 1);
	PlayerTextDrawAlignment(playerid, TD_Taixiu[playerid][3], 1);
	PlayerTextDrawColor(playerid, TD_Taixiu[playerid][3], 16711935);
	PlayerTextDrawBackgroundColor(playerid, TD_Taixiu[playerid][3], 255);
	PlayerTextDrawBoxColor(playerid, TD_Taixiu[playerid][3], 0);
	PlayerTextDrawUseBox(playerid, TD_Taixiu[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, TD_Taixiu[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, TD_Taixiu[playerid][3], 0);

	TD_Taixiu[playerid][4] = CreatePlayerTextDraw(playerid, 446.000000, 419.000000, "MSTX:_1000");
	PlayerTextDrawFont(playerid, TD_Taixiu[playerid][4], 1);
	PlayerTextDrawLetterSize(playerid, TD_Taixiu[playerid][4], 0.220833, 1.000000);
	PlayerTextDrawTextSize(playerid, TD_Taixiu[playerid][4], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, TD_Taixiu[playerid][4], 0);
	PlayerTextDrawSetShadow(playerid, TD_Taixiu[playerid][4], 0);
	PlayerTextDrawAlignment(playerid, TD_Taixiu[playerid][4], 1);
	PlayerTextDrawColor(playerid, TD_Taixiu[playerid][4], -1);
	PlayerTextDrawBackgroundColor(playerid, TD_Taixiu[playerid][4], 255);
	PlayerTextDrawBoxColor(playerid, TD_Taixiu[playerid][4], 0);
	PlayerTextDrawUseBox(playerid, TD_Taixiu[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, TD_Taixiu[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, TD_Taixiu[playerid][4], 0);

	TD_Taixiu[playerid][5] = CreatePlayerTextDraw(playerid, 236.000000, 429.000000, "0");
	PlayerTextDrawFont(playerid, TD_Taixiu[playerid][5], 2);
	PlayerTextDrawLetterSize(playerid, TD_Taixiu[playerid][5], 0.537500, 1.650000);
	PlayerTextDrawTextSize(playerid, TD_Taixiu[playerid][5], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, TD_Taixiu[playerid][5], 0);
	PlayerTextDrawSetShadow(playerid, TD_Taixiu[playerid][5], 0);
	PlayerTextDrawAlignment(playerid, TD_Taixiu[playerid][5], 1);
	PlayerTextDrawColor(playerid, TD_Taixiu[playerid][5], -1378294017);
	PlayerTextDrawBackgroundColor(playerid, TD_Taixiu[playerid][5], 255);
	PlayerTextDrawBoxColor(playerid, TD_Taixiu[playerid][5], 0);
	PlayerTextDrawUseBox(playerid, TD_Taixiu[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, TD_Taixiu[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, TD_Taixiu[playerid][5], 0);

	TD_Taixiu[playerid][6] = CreatePlayerTextDraw(playerid, 322.000000, 409.000000, "9");
	PlayerTextDrawFont(playerid, TD_Taixiu[playerid][6], 1);
	PlayerTextDrawLetterSize(playerid, TD_Taixiu[playerid][6], 0.495833, 2.000000);
	PlayerTextDrawTextSize(playerid, TD_Taixiu[playerid][6], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, TD_Taixiu[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, TD_Taixiu[playerid][6], 1);
	PlayerTextDrawAlignment(playerid, TD_Taixiu[playerid][6], 2);
	PlayerTextDrawColor(playerid, TD_Taixiu[playerid][6], -764862721);
	PlayerTextDrawBackgroundColor(playerid, TD_Taixiu[playerid][6], 255);
	PlayerTextDrawBoxColor(playerid, TD_Taixiu[playerid][6], 0);
	PlayerTextDrawUseBox(playerid, TD_Taixiu[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, TD_Taixiu[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, TD_Taixiu[playerid][6], 0);

	TD_Taixiu[playerid][7] = CreatePlayerTextDraw(playerid, 244.000000, 427.000000, "LD_BEAT:CHIT");
	PlayerTextDrawFont(playerid, TD_Taixiu[playerid][7], 4);
	PlayerTextDrawLetterSize(playerid, TD_Taixiu[playerid][7], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, TD_Taixiu[playerid][7], 158.000000, 3.500000);
	PlayerTextDrawSetOutline(playerid, TD_Taixiu[playerid][7], 0);
	PlayerTextDrawSetShadow(playerid, TD_Taixiu[playerid][7], 0);
	PlayerTextDrawAlignment(playerid, TD_Taixiu[playerid][7], 1);
	PlayerTextDrawColor(playerid, TD_Taixiu[playerid][7], 9109759);
	PlayerTextDrawBackgroundColor(playerid, TD_Taixiu[playerid][7], 125);
	PlayerTextDrawBoxColor(playerid, TD_Taixiu[playerid][7], 255);
	PlayerTextDrawUseBox(playerid, TD_Taixiu[playerid][7], 0);
	PlayerTextDrawSetProportional(playerid, TD_Taixiu[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, TD_Taixiu[playerid][7], 0);

	TD_Taixiu[playerid][8] = CreatePlayerTextDraw(playerid, 255.000000, 429.000000, "0");
	PlayerTextDrawFont(playerid, TD_Taixiu[playerid][8], 2);
	PlayerTextDrawLetterSize(playerid, TD_Taixiu[playerid][8], 0.537500, 1.650000);
	PlayerTextDrawTextSize(playerid, TD_Taixiu[playerid][8], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, TD_Taixiu[playerid][8], 0);
	PlayerTextDrawSetShadow(playerid, TD_Taixiu[playerid][8], 0);
	PlayerTextDrawAlignment(playerid, TD_Taixiu[playerid][8], 1);
	PlayerTextDrawColor(playerid, TD_Taixiu[playerid][8], -764862721);
	PlayerTextDrawBackgroundColor(playerid, TD_Taixiu[playerid][8], 255);
	PlayerTextDrawBoxColor(playerid, TD_Taixiu[playerid][8], 0);
	PlayerTextDrawUseBox(playerid, TD_Taixiu[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, TD_Taixiu[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid, TD_Taixiu[playerid][8], 0);

	TD_Taixiu[playerid][9] = CreatePlayerTextDraw(playerid, 274.000000, 429.000000, "0");
	PlayerTextDrawFont(playerid, TD_Taixiu[playerid][9], 2);
	PlayerTextDrawLetterSize(playerid, TD_Taixiu[playerid][9], 0.537500, 1.650000);
	PlayerTextDrawTextSize(playerid, TD_Taixiu[playerid][9], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, TD_Taixiu[playerid][9], 0);
	PlayerTextDrawSetShadow(playerid, TD_Taixiu[playerid][9], 0);
	PlayerTextDrawAlignment(playerid, TD_Taixiu[playerid][9], 1);
	PlayerTextDrawColor(playerid, TD_Taixiu[playerid][9], -1378294017);
	PlayerTextDrawBackgroundColor(playerid, TD_Taixiu[playerid][9], 255);
	PlayerTextDrawBoxColor(playerid, TD_Taixiu[playerid][9], 0);
	PlayerTextDrawUseBox(playerid, TD_Taixiu[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, TD_Taixiu[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid, TD_Taixiu[playerid][9], 0);

	TD_Taixiu[playerid][10] = CreatePlayerTextDraw(playerid, 293.000000, 429.000000, "0");
	PlayerTextDrawFont(playerid, TD_Taixiu[playerid][10], 2);
	PlayerTextDrawLetterSize(playerid, TD_Taixiu[playerid][10], 0.537500, 1.650000);
	PlayerTextDrawTextSize(playerid, TD_Taixiu[playerid][10], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, TD_Taixiu[playerid][10], 0);
	PlayerTextDrawSetShadow(playerid, TD_Taixiu[playerid][10], 0);
	PlayerTextDrawAlignment(playerid, TD_Taixiu[playerid][10], 1);
	PlayerTextDrawColor(playerid, TD_Taixiu[playerid][10], -16776961);
	PlayerTextDrawBackgroundColor(playerid, TD_Taixiu[playerid][10], 255);
	PlayerTextDrawBoxColor(playerid, TD_Taixiu[playerid][10], 0);
	PlayerTextDrawUseBox(playerid, TD_Taixiu[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, TD_Taixiu[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid, TD_Taixiu[playerid][10], 0);

	TD_Taixiu[playerid][11] = CreatePlayerTextDraw(playerid, 311.000000, 429.000000, "0");
	PlayerTextDrawFont(playerid, TD_Taixiu[playerid][11], 2);
	PlayerTextDrawLetterSize(playerid, TD_Taixiu[playerid][11], 0.537500, 1.650000);
	PlayerTextDrawTextSize(playerid, TD_Taixiu[playerid][11], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, TD_Taixiu[playerid][11], 0);
	PlayerTextDrawSetShadow(playerid, TD_Taixiu[playerid][11], 0);
	PlayerTextDrawAlignment(playerid, TD_Taixiu[playerid][11], 1);
	PlayerTextDrawColor(playerid, TD_Taixiu[playerid][11], -16776961);
	PlayerTextDrawBackgroundColor(playerid, TD_Taixiu[playerid][11], 255);
	PlayerTextDrawBoxColor(playerid, TD_Taixiu[playerid][11], 0);
	PlayerTextDrawUseBox(playerid, TD_Taixiu[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, TD_Taixiu[playerid][11], 1);
	PlayerTextDrawSetSelectable(playerid, TD_Taixiu[playerid][11], 0);

	TD_Taixiu[playerid][12] = CreatePlayerTextDraw(playerid, 330.000000, 430.000000, "0");
	PlayerTextDrawFont(playerid, TD_Taixiu[playerid][12], 2);
	PlayerTextDrawLetterSize(playerid, TD_Taixiu[playerid][12], 0.537500, 1.650000);
	PlayerTextDrawTextSize(playerid, TD_Taixiu[playerid][12], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, TD_Taixiu[playerid][12], 0);
	PlayerTextDrawSetShadow(playerid, TD_Taixiu[playerid][12], 0);
	PlayerTextDrawAlignment(playerid, TD_Taixiu[playerid][12], 1);
	PlayerTextDrawColor(playerid, TD_Taixiu[playerid][12], -16776961);
	PlayerTextDrawBackgroundColor(playerid, TD_Taixiu[playerid][12], 255);
	PlayerTextDrawBoxColor(playerid, TD_Taixiu[playerid][12], 0);
	PlayerTextDrawUseBox(playerid, TD_Taixiu[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, TD_Taixiu[playerid][12], 1);
	PlayerTextDrawSetSelectable(playerid, TD_Taixiu[playerid][12], 0);

	TD_Taixiu[playerid][13] = CreatePlayerTextDraw(playerid, 349.000000, 429.000000, "0");
	PlayerTextDrawFont(playerid, TD_Taixiu[playerid][13], 2);
	PlayerTextDrawLetterSize(playerid, TD_Taixiu[playerid][13], 0.537500, 1.650000);
	PlayerTextDrawTextSize(playerid, TD_Taixiu[playerid][13], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, TD_Taixiu[playerid][13], 0);
	PlayerTextDrawSetShadow(playerid, TD_Taixiu[playerid][13], 0);
	PlayerTextDrawAlignment(playerid, TD_Taixiu[playerid][13], 1);
	PlayerTextDrawColor(playerid, TD_Taixiu[playerid][13], -1378294017);
	PlayerTextDrawBackgroundColor(playerid, TD_Taixiu[playerid][13], 255);
	PlayerTextDrawBoxColor(playerid, TD_Taixiu[playerid][13], 0);
	PlayerTextDrawUseBox(playerid, TD_Taixiu[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, TD_Taixiu[playerid][13], 1);
	PlayerTextDrawSetSelectable(playerid, TD_Taixiu[playerid][13], 0);

	TD_Taixiu[playerid][14] = CreatePlayerTextDraw(playerid, 368.000000, 429.000000, "0");
	PlayerTextDrawFont(playerid, TD_Taixiu[playerid][14], 2);
	PlayerTextDrawLetterSize(playerid, TD_Taixiu[playerid][14], 0.537500, 1.650000);
	PlayerTextDrawTextSize(playerid, TD_Taixiu[playerid][14], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, TD_Taixiu[playerid][14], 0);
	PlayerTextDrawSetShadow(playerid, TD_Taixiu[playerid][14], 0);
	PlayerTextDrawAlignment(playerid, TD_Taixiu[playerid][14], 1);
	PlayerTextDrawColor(playerid, TD_Taixiu[playerid][14], -764862721);
	PlayerTextDrawBackgroundColor(playerid, TD_Taixiu[playerid][14], 255);
	PlayerTextDrawBoxColor(playerid, TD_Taixiu[playerid][14], 0);
	PlayerTextDrawUseBox(playerid, TD_Taixiu[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, TD_Taixiu[playerid][14], 1);
	PlayerTextDrawSetSelectable(playerid, TD_Taixiu[playerid][14], 0);

	TD_Taixiu[playerid][15] = CreatePlayerTextDraw(playerid, 387.000000, 429.000000, "0");
	PlayerTextDrawFont(playerid, TD_Taixiu[playerid][15], 2);
	PlayerTextDrawLetterSize(playerid, TD_Taixiu[playerid][15], 0.537500, 1.650000);
	PlayerTextDrawTextSize(playerid, TD_Taixiu[playerid][15], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, TD_Taixiu[playerid][15], 0);
	PlayerTextDrawSetShadow(playerid, TD_Taixiu[playerid][15], 0);
	PlayerTextDrawAlignment(playerid, TD_Taixiu[playerid][15], 1);
	PlayerTextDrawColor(playerid, TD_Taixiu[playerid][15], -1378294017);
	PlayerTextDrawBackgroundColor(playerid, TD_Taixiu[playerid][15], 255);
	PlayerTextDrawBoxColor(playerid, TD_Taixiu[playerid][15], 0);
	PlayerTextDrawUseBox(playerid, TD_Taixiu[playerid][15], 1);
	PlayerTextDrawSetProportional(playerid, TD_Taixiu[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid, TD_Taixiu[playerid][15], 0);

	return 1;
}
