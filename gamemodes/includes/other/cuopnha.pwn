#include <ysi\y_hooks>

#define         DIALOG_BEKHOANHA                   (9998)
#define TimeRob 70

new RobHouseID[MAX_PLAYERS];
new bool:UnLock[MAX_PLAYERS];
new PassHouse[MAX_PLAYERS];
new TimeRobHouse[MAX_PLAYERS];

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == DIALOG_BEKHOANHA)
	{
	    if(response)
		{
			new result;
	   		if(sscanf(inputtext, "d",result)) {
	   			new str[568];
				format(str,568,"Mat Khau la mot day so gom 2 chu so \n \n {E6F1D8}Goi Y: La mot chu so nam trong khoang [%d - %d] \n \n Mat Khau sai!", (PassHouse[playerid] - random(10)), (PassHouse[playerid] + random(10)));
				return ShowPlayerDialog(playerid, DIALOG_BEKHOANHA, DIALOG_STYLE_INPUT, "Hay Nhap Mat Khau Nha", str, "Lua chon", "Huy bo");
	   		}
	   		if (PassHouse[playerid] == result)
	   		{
				for(new i = 0; i < sizeof(HouseInfo); i++)
				{
					if (IsPlayerInRangeOfPoint(playerid,3,HouseInfo[i][hExteriorX], HouseInfo[i][hExteriorY], HouseInfo[i][hExteriorZ]))
					{
					    new string[128];
					    TimeRobHouse[playerid] = gettime() + TimeRob;
					    SendMessageRobHouseForPolice(playerid, i);
					    ++PlayerInfo[playerid][pCrimes];
					    PlayerInfo[playerid][pWantedLevel] += 1;
					    if(PlayerInfo[playerid][pWantedLevel] > 6)
					    {
					        PlayerInfo[playerid][pWantedLevel] = 6;
					    }
					    SetPlayerWantedLevel(playerid, PlayerInfo[playerid][pWantedLevel]);
					    PassHouse[playerid] = 0;
						format(string, sizeof(string), "* %s Da Be Khoa House Thanh Cong.", GetPlayerNameEx(playerid));
						ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
						SetPlayerInterior(playerid,HouseInfo[i][hIntIW]);
						SetPlayerPos(playerid,HouseInfo[i][hInteriorX],HouseInfo[i][hInteriorY],HouseInfo[i][hInteriorZ]);
						GameTextForPlayer(playerid, "~r~Da Be Khoa Thanh Cong", 5000, 1);
						PlayerInfo[playerid][pInt] = HouseInfo[i][hIntIW];
						PlayerInfo[playerid][pVW] = HouseInfo[i][hIntVW];
						SetPlayerVirtualWorld(playerid,HouseInfo[i][hIntVW]);
						UnLock[playerid]=true;
	                    RobHouseID[playerid] = i;
						if(HouseInfo[i][hCustomInterior] == 1) Player_StreamPrep(playerid, HouseInfo[i][hInteriorX],HouseInfo[i][hInteriorY],HouseInfo[i][hInteriorZ], FREEZE_TIME);
					}
				}
			}
			else 
			{
				new str[568];
				format(str,568,"Mat Khau la mot day so gom 2 chu so \n \n {E6F1D8}Goi Y: La mot chu so nam trong khoang [%d - %d] \n \n Mat Khau sai!", (PassHouse[playerid] - random(10)), (PassHouse[playerid] + random(10)));
				return ShowPlayerDialog(playerid, DIALOG_BEKHOANHA, DIALOG_STYLE_INPUT, "Hay Nhap Mat Khau Nha", str, "Lua chon", "Huy bo");
			}
		}
	}
    return 1;
}


CMD:cuoptien(playerid,params[])
{
	if(UnLock[playerid]==true)
	{
		if(TimeRobHouse[playerid] > gettime()) {
			new string[128];
	        SendClientMessage(playerid, -1, "Vi ban chua tim hieu ki ve ngoi nha nay.");
	        format(string,128,"Ban can phai doi %ds de co the hieu ve ngoi nha nay moi co the cuop duoc ngoi nha nay.", TimeRobHouse[playerid] - gettime());
	        SendClientMessage(playerid, -1, string);
		}
		else {
		    UnLock[playerid] = false;
		    SendClientMessageEx(playerid,COLOR_GRAD1,"Ban da cuop 25.000$ cua ngoi nha nay, hay tron truoc khi canh sat toi!");
		    GivePlayerCash(playerid,25000);
		    if (HouseInfo[RobHouseID[playerid]][hSafeMoney] >= 25000)
		    {
		    	HouseInfo[RobHouseID[playerid]][hSafeMoney] -= 25000;
		    	PlayerInfo[playerid][pHouseRob] = 1; // Mat 100k
		    }
		    else
		    {
		    	new string[128];
		    	format(string, sizeof(string), "UPDATE `accounts` SET `HouseRob` = 2 WHERE `Username` = '%s'", HouseInfo[RobHouseID[playerid]][hOwnerName]);
	        	mysql_function_query(MainPipeline, string, false, "OnQueryFinish", "ii", SENDDATA_THREAD, playerid);
		    }
		    SendMessageRobHouseForEveryOne(RobHouseID[playerid]);
			RobHouseID[playerid]=-1;
			PlayerInfo[playerid][pCuopNha]=1;
		}
	}
	return 1;
}

CMD:bekhoanha(playerid, params[])
{
    if(PlayerInfo[playerid][pCuopNha] >=1) return    SendClientMessageEx(playerid,COLOR_GRAD1,"Ban chi co the tiep tuc cuop nha sau 3h");
    if(CopOnline < 2) return  SendClientMessage(playerid, -1, "Can toi thieu 2 canh sat de cuop nha!");
    if(PlayerInfo[playerid][pMember]!=INVALID_GROUP_ID) return  SendClientMessageEx(playerid,COLOR_GRAD1,"Ban dang trong 1 to chuc, khong the cuop nha!");
 	for(new h = 0; h < sizeof(HouseInfo); h++)
	{
        if(IsPlayerInRangeOfPoint(playerid, 2.0, HouseInfo[h][hExteriorX], HouseInfo[h][hExteriorY], HouseInfo[h][hExteriorZ]) && GetPlayerInterior(playerid) == HouseInfo[h][hExtIW] && GetPlayerVirtualWorld(playerid) == HouseInfo[h][hExtVW])
		{
			if (PassHouse[playerid] == 0) PassHouse[playerid] = random(100);
			new str[568];
			format(str,568,"Mat Khau la mot day so gom 2 chu so \n \n {E6F1D8}Goi Y: La mot chu so nam trong khoang [%d - %d]", (PassHouse[playerid] - random(10)), (PassHouse[playerid] + random(10)));
			ShowPlayerDialog(playerid, DIALOG_BEKHOANHA, DIALOG_STYLE_INPUT, "Hay Nhap Mat Khau Nha", str, "Lua chon", "Huy bo");
		}
	}
	return 1;
}

hook OnPlayerConnect(playerid)
{
	PassHouse[playerid] = 0;
	TimeRobHouse[playerid] = 0;
	return 1;
}

stock HouseInfoExitRebuild(playerid)
{
    for(new i = 0; i <  sizeof(HouseInfo); i++) {
        if (IsPlayerInRangeOfPoint(playerid,3.0,HouseInfo[i][hInteriorX], HouseInfo[i][hInteriorY], HouseInfo[i][hInteriorZ]) && PlayerInfo[playerid][pVW] == HouseInfo[i][hIntVW]) {
            if(UnLock[playerid]==true)
            {
                UnLock[playerid] = false;
				SendClientMessageEx(playerid,COLOR_LIGHTBLUE,"Ban khong con kha nang cuop tien ngoi nha nay!");
				RobHouseID[playerid]=-1;
				TimeRobHouse[playerid] = 0;
            }
			SetPlayerInterior(playerid,0);
            PlayerInfo[playerid][pInt] = 0;
            SetPlayerPos(playerid,HouseInfo[i][hExteriorX],HouseInfo[i][hExteriorY],HouseInfo[i][hExteriorZ]);
            SetPlayerFacingAngle(playerid, HouseInfo[i][hExteriorA]);
            SetCameraBehindPlayer(playerid);
            SetPlayerVirtualWorld(playerid, HouseInfo[i][hExtVW]);
            PlayerInfo[playerid][pVW] = HouseInfo[i][hExtVW];
			PlayerInfo[playerid][pInt] = HouseInfo[i][hExtIW];
            SetPlayerInterior(playerid, HouseInfo[i][hExtIW]);
			if(HouseInfo[i][hCustomExterior]) Player_StreamPrep(playerid, HouseInfo[i][hExteriorX],HouseInfo[i][hExteriorY],HouseInfo[i][hExteriorZ], FREEZE_TIME);
            return 1;
        }
    }
    return 1;
}


stock SendMessageRobHouseForPolice(playerid, iHouse) {
        foreach(new i: Player)
        {
            if(IsACop(i)) {
                new szMessage[256];
                format(szMessage, sizeof(szMessage), "Toi ac: Cuop Nha, nguoi trinh bao: Chu Nha : %s, nguoi thuc hien toi ac : %s", HouseInfo[iHouse][hOwnerName], GetPlayerNameEx(playerid));
                SendClientMessageEx(i, COLOR_LIGHTBLUE, szMessage);
                format(szMessage, sizeof(szMessage), "Dia Diem : Nha cua %s - Da Duoc Danh Dau Tren Ban Do", HouseInfo[iHouse][hOwnerName]);
                SendClientMessageEx(i, COLOR_LIGHTBLUE, szMessage);
                SetPlayerCheckpoint(i, HouseInfo[iHouse][hExteriorX],HouseInfo[iHouse][hExteriorY],HouseInfo[iHouse][hExteriorZ], 3.0);
            }
        }
}

CMD:showinteriorplayer(playerid) {
	new string[128];
	format(string, sizeof(string), "Interior : %d", PlayerInfo[playerid][pInt]);
	SendClientMessageToAll(COLOR_GREEN, string);
	return 1;
}

stock SendMessageRobHouseForEveryOne(iHouse) {
	new string[128];
	format(string, sizeof(string), "Tin tuc 24h: Camera phat hien mot ten trom vao nha cua %s va lay di mot so tien", HouseInfo[iHouse][hOwnerName]);
	SendClientMessageToAll(COLOR_GREEN, string);
}