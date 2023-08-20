
#include <ysi\y_hooks>

#define SZ: sizeof 
#define FRtime:!%1(%2) forward %1(%2); public %1(%2)


enum oil_info {
	o_health,
	o_respawn, 
	Text3D:o_name,
	// 
	o_occupyid, // Nguoi chiem
}

new const Float: Pst_Oil[][] = {
	{-2945.0449,265.7803,0.1064,74.7260}, // vi tri khai thac
	{-3002.8123,271.4796,-0.2966,96.9738},
	{-3001.9995,219.8991,0.7854,204.1339},
	{-2954.1602,199.4748,-0.4849,272.1280},
	{-2952.7510,176.4152,0.6278,170.6077},
	{-2958.4377,163.0112,0.1204,94.4663},
	{-2950.9778,132.3136,0.6832,194.4211},
	{-2980.1831,122.9648,0.3082,73.7854},
	{-2987.5813,205.1066,0.7077,6.1055}

};

new OilInfo[SZ: Pst_Oil][oil_info];

hook OnGameModeInit() {
	//printf("Te: %d", SZ(Pst_Oil));
	for(new i = 0 ; i < SZ: Pst_Oil; i ++) {
		// Create
		OilInfo[i][o_name] = CreateDynamic3DTextLabel("...", -1, Pst_Oil[i][0],Pst_Oil[i][1],Pst_Oil[i][2]+2, 12);
		CreateDynamicObject(3474, Pst_Oil[i][0],Pst_Oil[i][1],Pst_Oil[i][2]-3.5,0,0,0);
		//
		OilInfo[i][o_health] = 100;
		OilInfo[i][o_occupyid] = INVALID_PLAYER_ID;
		UpdateOilInfo(i);
	}
	CreateActor(72, -2866.1194,262.0343,6.1085,80.3660); // khu vuc ban dau mo
	CreateDynamic3DTextLabel("{f6a201}Dau Mo\n{FFFFFF}Nguoi thu mua dau tho\n Y De Ban", -1, -2866.1194,262.0343,6.1085+0.5, 8);
	return 1;
}

hook OnPlayerConnect(playerid) {
	SetPVarInt(playerid, "OccupyID", -1);
	return 1;
}

hook OnPlayerDisconnect(playerid, reason) {
	if(GetPVarInt(playerid, "OccupyID") != -1) {
		new i = GetPVarInt(playerid, "OccupyID");
		KillTimer(GetPVarInt(playerid, "PlayerOccupy"));
		SetPVarInt(playerid, "OccupyID", -1);
		OilInfo[i][o_respawn] = gettime() + 10;
		OilInfo[i][o_occupyid] = INVALID_PLAYER_ID;		
		UpdateOilInfo(i);
	}
	return 1;
}

hook OnPlayerDeath(playerid) {
	if(GetPVarInt(playerid, "OccupyID") != -1) {
		new i = GetPVarInt(playerid, "OccupyID");
		OilInfo[i][o_respawn] = gettime() + 10;
		OilInfo[i][o_occupyid] = INVALID_PLAYER_ID;		
		KillTimer(GetPVarInt(playerid, "PlayerOccupy"));
		SetPVarInt(playerid, "OccupyID", -1);
		UpdateOilInfo(i);
	}	
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(newkeys == KEY_YES) {
		if(IsPlayerInRangeOfPoint(playerid, 2,-2866.1194,262.0343,6.1085)) {
			ShowPlayerDialog(playerid, 1114, DIALOG_STYLE_INPUT, "Sell", "Dau ($100000)\nNhap so luong ban muon ban.", "Ban", "Huy");
		}
	}
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == 1114) {
		if(response) {
			if(strval(inputtext)) {
				listitem = GetPVarInt(playerid, "Listitem_");
				new amount = strval(inputtext);
				if(amount > 0 && PlayerInfo[playerid][pDau] >= amount) {
					new string[128];
					PlayerInfo[playerid][pCash]+= amount*100000;
					PlayerInfo[playerid][pMats]+= amount*10000;
					GiveDau(playerid, -amount);

					format(string, 128, "Ban da ban %d dau voi gia $%d va nhan them 10k vat lieu",amount , amount*100000 , amount*10000); // 100k 1 dầu
					SendClientMessage(playerid, -1, string);
				}
				else SendClientMessage(playerid, -1, "So luong khong hop le..");
			}
		}
	}
	return 1;
}

UpdateOilInfo(i) {
	new string[128];
	format(string, 128, "Khu dau mo\nTrang thai: %d%%\nSo huu: %s", OilInfo[i][o_health], GetoNameEx(OilInfo[i][o_occupyid]));
	UpdateDynamic3DTextLabelText(OilInfo[i][o_name], -1, string);
}

SetOilRespawn(i, s) {
	OilInfo[i][o_health] = 100;
	OilInfo[i][o_respawn] = gettime() + s;
	OilInfo[i][o_occupyid] = INVALID_PLAYER_ID;
}

stock GetoNameEx(i) {
	new name[32];
	if(i == INVALID_PLAYER_ID) name = "None";
	else GetPlayerName(i, name, 32);
	return name;
}

stock CheckRangeOil(playerid) {
	for(new i = 0; i < SZ: Pst_Oil; i ++) {
		if(IsPlayerInRangeOfPoint(playerid, 6, Pst_Oil[i][0],Pst_Oil[i][1],Pst_Oil[i][2])) {
			return i;
		}
	}
	return -1;
}

FRtime:!StartOccupy(playerid, i) {
	new ran = 1+random(15);
	if(IsPlayerInRangeOfPoint(playerid, 10, Pst_Oil[i][0],Pst_Oil[i][1],Pst_Oil[i][2])) {
		if(OilInfo[i][o_health] - ran > 0) {
			OilInfo[i][o_health] -= ran; 
		}
		else { // <
			SetOilRespawn(i, 90); // 90 giay khai thac 
			KillTimer(GetPVarInt(playerid, "PlayerOccupy"));
			printf("PVariable :%d", GetPVarInt(playerid, "PlayerOccupy"));

			new str[128], rand = 1 + random(1); // 1 dầu
			GiveDau(playerid, rand);
			format(str, 128, "Ban nhan duoc %d dau", rand);
			SendClientMessage(playerid, -1, str);
			SetPVarInt(playerid, "OccupyID", -1); 
		}
	}
	else {
		OilInfo[i][o_respawn] = gettime() + 60; // 60 giay moi co the khai thac tiep
		OilInfo[i][o_occupyid] = INVALID_PLAYER_ID;
		KillTimer(GetPVarInt(playerid, "PlayerOccupy"));
		SetPVarInt(playerid, "OccupyID", -1); 
		SendClientMessage(playerid, -1, "Ban da di qua xa khu vuc khai thac");
	}
	UpdateOilInfo(i);
	return 1;
}

CMD:khaithacdau(playerid) {
	if(GetPVarInt(playerid, "OccupyID") != -1) return 1;
	new i = CheckRangeOil(playerid);
	if(PlayerInfo[playerid][pDau] < 20) {
	}
	else SendClientMessage(playerid, -1, "Ban da khai thac du so luong vui long di ban");
	if(i == -1) {
		SendClientMessage(playerid, -1, "Ban khong the khai thac o day.");
	}
	else {
		new str[128];
		if(OilInfo[i][o_occupyid] != INVALID_PLAYER_ID) {
			format(str, 128, "Dang duoc khai thac boi %s", GetoNameEx(OilInfo[i][o_occupyid]));
			SendClientMessage(playerid, -1, str);
		}
		else {
			if(OilInfo[i][o_respawn] > gettime()) {
				format(str, 128, "Con %ds nua de co the khai thac o day ...", OilInfo[i][o_respawn] - gettime());
				SendClientMessage(playerid, -1, str);
			}
			else {
				OilInfo[i][o_occupyid] = playerid;
				SetPVarInt(playerid, "OccupyID", i);
				SendClientMessage(playerid, -1, "Ban dang chiem khu nay. Vui long khong roi khoi day 10.0m");
				SetPVarInt(playerid, "PlayerOccupy", SetTimerEx("StartOccupy", 5000, true, "dd", playerid, i));
				//printf("PVariable :%d", GetPVarInt(playerid, "PlayerOccupy"));
				UpdateOilInfo(i);
			}
		}
	}
	return 1;
}  
forward GiveDau(playerid,value);
public GiveDau(playerid,value){
	new query[128];
	PlayerInfo[playerid][pDau] += value;
	format(query, sizeof(query), "UPDATE accounts SET `Dau` =%d WHERE `id` = %d", PlayerInfo[playerid][pDau], GetPlayerSQLId(playerid));
	mysql_function_query(MainPipeline, query, false, "OnQueryFinish", "ii", SENDDATA_THREAD, playerid);
	return 1;
}
