#include <ysi\y_hooks>

#define MAX_GARBAGE_BINS (50)

#define SendSyntaxMessage(%0,%1) \
	SendClientMessageEx(%0, COLOR_GREY, "[SYNTAX]:{FFFFFF} "%1) 

#define SendErrorMessage(%0,%1) \
	SendClientMessageEx(%0, COLOR_LIGHTRED, "[BAO LOI]:{FFFFFF} "%1)

#define SendServerMessage(%0,%1) \
	SendClientMessageEx(%0, COLOR_SERVER, "[MAY CHU]:{FFFFFF} "%1)

#define COLOR_DARKBLUE    (0x1394BFFF)
#define COLOR_SERVER      (0xFFFF90FF)

enum garbageData {
	garbageID,
	garbageExists,
 	garbageModel,
	garbageCapacity,
	Float:garbagePos[4],
	garbageInterior,
	garbageWorld,
	Text3D:garbageText3D,
	bool:dangluc,
	Garbage_timeex,
	garbageObject
};

new PlayerText:Garbage_PTD[MAX_PLAYERS][1];// Pro
new PlayerThungRacComplete[MAX_PLAYERS char] = { DefaultProgress, ... }; // progress
new GarbageData[MAX_GARBAGE_BINS][garbageData];

hook OnPlayerDisconnect(playerid, reason) {
	if(GetPVarInt(playerid,"DangLucThungRac") == 1 ) {
		ksinfo[GetPVarInt(playerid,"GarbageID")][dangdao] = false;
		DeletePVar(playerid,"DangHaiCan");
		KillTimer(GarbageData[GetPVarInt(playerid,"GarbageID")][Garbage_timeex]); 
		PlayerTextDrawHide(playerid, Garbage_PTD[playerid][0]);
		SwitchTextDraws(playerid, 0);
		PlayerThungRacComplete[playerid] = DefaultProgress;
	}
}


CMD:nhatrac(playerid, params[])
{
	new
		id = Garbage_Nearest(playerid);

	if (id == -1)
	    return SendErrorMessage(playerid, "Ban khong o gan thung rac nao.");

	if (GarbageData[id][garbageCapacity] < 1)
	    return SendErrorMessage(playerid, "Thung rac nay khong co rac.");

	if(IsPlayerInAnyVehicle(playerid))
	{
        return SendClientMessage(playerid, -1, "{ff6600}[Nhat Rac] {ffffff}Ban khong the lam dieu nay khi o trong xe.");
    }
    if(GetPVarInt(playerid,"DangLucThungRac") == 1) return SendClientMessage(playerid, -1, "{ff6600}[Nhat Rac] {ffffff}Ban dang luc thung rac roi roi.");
	if(GarbageData[id][dangluc] == true) return SendClientMessage(playerid, -1, "{ff6600}[Nhat Rac] {ffffff}Thung rac nay co nguoi luc roi, vui long cho.");
	TogglePlayerControllable(playerid, 0);
	SetPlayerArmedWeapon(playerid, 0);
	ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0, 1);
	SwitchTextDraws(playerid, 1);
	PlayerTextDrawTextSize(playerid, Garbage_PTD[playerid][0], PlayerThungRacComplete[playerid]*1.0, 17.0000);
	PlayerTextDrawShow(playerid, Garbage_PTD[playerid][0]);
	SetPVarInt(playerid, "DangLucThungRac", 1);
	SetPVarInt(playerid, "GarbageID", id);
	GarbageData[id][dangluc] = true;
	GarbageData[id][Garbage_timeex] = SetTimerEx("TimeLucThungRac", 1000, true, "dd", playerid, id);


  	//SetPlayerAttachedObject(playerid, 4, 1264, 6, 0.000000, 0.000000, 0.000000, 0.000000, 270.000000, 90.000000, 0.500000, 0.500000, 0.500000);
	// ShowPlayerFooter(playerid, "Apasa ~y~'N'~w~ pentru a incarca gunoiul.");

	return 1;
}

forward TimeLucThungRac(playerid, id);
public TimeLucThungRac(playerid, id)
{
	if(0 < PlayerThungRacComplete[playerid] < 100)
	{
		PlayerThungRacComplete[playerid]-= 2;
		PlayerTextDrawTextSize(playerid, Garbage_PTD[playerid][0], PlayerThungRacComplete[playerid]*1.0, 17.0000);//1.211894
		PlayerTextDrawShow(playerid, Garbage_PTD[playerid][0]);
		PlayerPlaySound(playerid,20803,0.0,0.0,0.0);
		return 1;
	}
	if(PlayerThungRacComplete[playerid] >= 100)
	{
		new string[128];
		new randomvatlieu = 50 + random(20);
		format(string, sizeof(string), "{ff6600}[Nhat Rac] {ffffff}Ban da luc thung rac va nhan duoc %d vat lieu", randomvatlieu);
		SendClientMessage(playerid, -1, string);
		PlayerInfo[playerid][pMats] += randomvatlieu;

		GarbageData[id][garbageCapacity]--;



		format(string, sizeof(string), "[Garbage %d]\n{FFFFFF}Trash Capacity: %d/20", id, GarbageData[id][garbageCapacity]);
	  	UpdateDynamic3DTextLabelText(GarbageData[id][garbageText3D], COLOR_DARKBLUE, string);

   		Garbage_Save(id);

	}
	else if(PlayerThungRacComplete[playerid] <= 0)
	{
	    SendClientMessage(playerid, -1, "{ff6600}[Nhat Rac] {ffffff}Ban da tu bo viec luc thung rac va khong nhan duoc gi ca");
	}

	PlayerTextDrawHide(playerid, Garbage_PTD[playerid][0]);
	SwitchTextDraws(playerid, 0);
	PlayerThungRacComplete[playerid] = DefaultProgress;
	DeletePVar(playerid, "DangLucThungRac");
    KillTimer(GarbageData[id][Garbage_timeex]); 
	DeletePVar(playerid,"GarbageID");
 	ClearAnimations(playerid);
 	TogglePlayerControllable(playerid, 1);
 	GarbageData[id][dangluc] = false;
	// SetTimerEx("RespawnKhoangSan", 120000, false, "d", i);
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(newkeys == KEY_NO)
	{
	    if(GetPVarInt(playerid, "DangLucThungRac"))
	    {
	    	PlayerThungRacComplete[playerid] += 2;
	    	return 1;
	    }
	}
	return 1;
}


stock Garbage_Create(playerid, type)
{
	for (new i = 0; i != MAX_GARBAGE_BINS; i ++) if (!GarbageData[i][garbageExists])
	{
	    switch (type) {
	        case 1: GarbageData[i][garbageModel] = 1236;
	        case 2: GarbageData[i][garbageModel] = 1300;
	    }
	    GarbageData[i][garbageExists] = true;
	    GarbageData[i][garbageCapacity] = 20;

	    GetPlayerPos(playerid, GarbageData[i][garbagePos][0], GarbageData[i][garbagePos][1], GarbageData[i][garbagePos][2]);
	    GetPlayerFacingAngle(playerid, GarbageData[i][garbagePos][3]);

		switch (type) {
		    case 1: {
		    	GarbageData[i][garbagePos][0] = GarbageData[i][garbagePos][0] + (1.8 * floatsin(-GarbageData[i][garbagePos][3], degrees));
			    GarbageData[i][garbagePos][1] = GarbageData[i][garbagePos][1] + (1.8 * floatcos(-GarbageData[i][garbagePos][3], degrees));
			}
			case 2: {
		    	GarbageData[i][garbagePos][0] = GarbageData[i][garbagePos][0] + (1.0 * floatsin(-GarbageData[i][garbagePos][3], degrees));
			    GarbageData[i][garbagePos][1] = GarbageData[i][garbagePos][1] + (1.0 * floatcos(-GarbageData[i][garbagePos][3], degrees));
			}
		}
		GarbageData[i][garbageInterior] = GetPlayerInterior(playerid);
		GarbageData[i][garbageWorld] = GetPlayerVirtualWorld(playerid);

		Garbage_Refresh(i);
		mysql_function_query(MainPipeline, "INSERT INTO `garbage` (`garbageCapacity`) VALUES(0)", false, "OnGarbageCreated", "d", i);
		return i;
	}
	return -1;
}

stock Garbage_Delete(garbageid)
{
	if (garbageid != -1 && GarbageData[garbageid][garbageExists])
	{
	    new
	        string[64];

		format(string, sizeof(string), "DELETE FROM `garbage` WHERE `garbageID` = '%d'", GarbageData[garbageid][garbageID]);
		mysql_function_query(MainPipeline, string, false, "OnQueryFinish", "i", SENDDATA_THREAD);

        if (IsValidDynamic3DTextLabel(GarbageData[garbageid][garbageText3D]))
	        DestroyDynamic3DTextLabel(GarbageData[garbageid][garbageText3D]);

		if (IsValidDynamicObject(GarbageData[garbageid][garbageObject]))
		    DestroyDynamicObject(GarbageData[garbageid][garbageObject]);

	    GarbageData[garbageid][garbageExists] = false;
	    GarbageData[garbageid][garbageCapacity] = 0;
	    GarbageData[garbageid][garbageID] = 0;
	}
	return 1;
}

Garbage_Nearest(playerid)
{
    for (new i = 0; i != MAX_GARBAGE_BINS; i ++) if (GarbageData[i][garbageExists] && IsPlayerInRangeOfPoint(playerid, 3.0, GarbageData[i][garbagePos][0], GarbageData[i][garbagePos][1], GarbageData[i][garbagePos][2]))
	{
		if (GetPlayerInterior(playerid) == GarbageData[i][garbageInterior] && GetPlayerVirtualWorld(playerid) == GarbageData[i][garbageWorld])
			return i;
	}
	return -1;
}

stock Garbage_Refresh(garbageid)
{
	if (garbageid != -1 && GarbageData[garbageid][garbageExists])
	{
	    if (IsValidDynamic3DTextLabel(GarbageData[garbageid][garbageText3D]))
	        DestroyDynamic3DTextLabel(GarbageData[garbageid][garbageText3D]);

		if (IsValidDynamicObject(GarbageData[garbageid][garbageObject]))
		    DestroyDynamicObject(GarbageData[garbageid][garbageObject]);

		static
			string[64];

		format(string, sizeof(string), "[Thung rac %d]\n{FFFFFF}So luong rac: %d/30", garbageid, GarbageData[garbageid][garbageCapacity]);
		GarbageData[garbageid][garbageText3D] = CreateDynamic3DTextLabel(string, COLOR_DARKBLUE, GarbageData[garbageid][garbagePos][0], GarbageData[garbageid][garbagePos][1], GarbageData[garbageid][garbagePos][2], 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, GarbageData[garbageid][garbageWorld], GarbageData[garbageid][garbageInterior]);
		GarbageData[garbageid][garbageObject] = CreateDynamicObject(GarbageData[garbageid][garbageModel], GarbageData[garbageid][garbagePos][0], GarbageData[garbageid][garbagePos][1], (GarbageData[garbageid][garbageModel] == 1236) ? (GarbageData[garbageid][garbagePos][2] - 0.4) : (GarbageData[garbageid][garbagePos][2] - 0.6), 0.0, 0.0, GarbageData[garbageid][garbagePos][3], GarbageData[garbageid][garbageWorld], GarbageData[garbageid][garbageInterior]);
	}
	return 1;
}

stock Garbage_Save(garbageid)
{
	static
	    query[300];

	format(query, sizeof(query), "UPDATE `garbage` SET `garbageModel` = '%d', `garbageCapacity` = '%d', `garbageX` = '%.4f', `garbageY` = '%.4f', `garbageZ` = '%.4f', `garbageA` = '%.4f', `garbageInterior` = '%d', `garbageWorld` = '%d' WHERE `garbageID` = '%d'",
        GarbageData[garbageid][garbageModel],
        GarbageData[garbageid][garbageCapacity],
        GarbageData[garbageid][garbagePos][0],
        GarbageData[garbageid][garbagePos][1],
        GarbageData[garbageid][garbagePos][2],
        GarbageData[garbageid][garbagePos][3],
        GarbageData[garbageid][garbageInterior],
        GarbageData[garbageid][garbageWorld],
        GarbageData[garbageid][garbageID]
	);
	return mysql_function_query(MainPipeline, query, false, "OnQueryFinish", "i", SENDDATA_THREAD);
}


forward OnGarbageCreated(garbageid);
public OnGarbageCreated(garbageid)
{
	if (garbageid == -1 || !GarbageData[garbageid][garbageExists])
	    return 0;

	GarbageData[garbageid][garbageID] = mysql_insert_id();
	Garbage_Save(garbageid);

	return 1;
}

stock LoadGarbage()
{
	printf("[LoadGarbage] Loading Garbage from the database, please wait...");
	mysql_function_query(MainPipeline, "SELECT * FROM `garbage`", true, "OnLoadGarbage", "");
}

forward OnLoadGarbage();
public OnLoadGarbage()
{
	new fields, rows, result[128];
	cache_get_data(rows, fields, MainPipeline);

	for (new i = 0; i < rows; i ++) if (i < MAX_GARBAGE_BINS)
	{
	    GarbageData[i][garbageExists] = true;
	    cache_get_field_content(i, "garbageID", result, MainPipeline); GarbageData[i][garbageID] = strval(result);
	    cache_get_field_content(i, "garbageModel", result, MainPipeline); GarbageData[i][garbageModel] = strval(result);
	    cache_get_field_content(i, "garbageCapacity", result, MainPipeline); GarbageData[i][garbageCapacity] = strval(result);
	    cache_get_field_content(i, "garbageX", result, MainPipeline); GarbageData[i][garbagePos][0] = floatstr(result);
        cache_get_field_content(i, "garbageY", result, MainPipeline); GarbageData[i][garbagePos][1] = floatstr(result);
        cache_get_field_content(i, "garbageZ", result, MainPipeline); GarbageData[i][garbagePos][2] = floatstr(result);
        cache_get_field_content(i, "garbageA", result, MainPipeline); GarbageData[i][garbagePos][3] = floatstr(result);
        cache_get_field_content(i, "garbageInterior", result, MainPipeline); GarbageData[i][garbageInterior] = strval(result);
		cache_get_field_content(i, "garbageWorld", result, MainPipeline); GarbageData[i][garbageWorld] = strval(result);

		Garbage_Refresh(i);
	}
	return 1;
}


GetClosestGarbage(playerid)
{
	new
	    Float:fDistance[2] = {99999.0, 0.0},
	    iIndex = -1
	;
	for (new i = 0; i < MAX_GARBAGE_BINS; i ++) if (GarbageData[i][garbageExists] && GarbageData[i][garbageCapacity] > 0 && GetPlayerInterior(playerid) == GarbageData[i][garbageInterior] && GetPlayerVirtualWorld(playerid) == GarbageData[i][garbageWorld])
	{
		fDistance[1] = GetPlayerDistanceFromPoint(playerid, GarbageData[i][garbagePos][0], GarbageData[i][garbagePos][1], GarbageData[i][garbagePos][2]);

		if (fDistance[1] < fDistance[0])
		{
		    fDistance[0] = fDistance[1];
		    iIndex = i;
		}
	}
	return iIndex;
}


CMD:findgarbage(playerid, params[])
{
/*	if (PlayerData[playerid][pJob] != JOB_GARBAGE)
	    return SendErrorMessage(playerid, "You don't have the appropriate job.");*/

	new id = GetClosestGarbage(playerid);

	if (id == -1)
	    return SendErrorMessage(playerid, "Khong tim thay thung rac nao ca.");

	//PlayerData[playerid][pCP] = 1;

	SetPlayerCheckpoint(playerid, GarbageData[id][garbagePos][0], GarbageData[id][garbagePos][1], GarbageData[id][garbagePos][2], 2.5);
	SendServerMessage(playerid, "Da Tim thay vi tri thung rac tren ban do gan ban nhat.");
	return 1;
}

CMD:xoathungrac(playerid, params[])
{
	static
	    id = 0;

	if (PlayerInfo[playerid][pAdmin] < 1338)
	    return SendErrorMessage(playerid, "Ban khong co quyen su dung lenh nay.");

	if (sscanf(params, "d", id))
	    return SendSyntaxMessage(playerid, "/xoathungrac [garbage id]");

	if ((id < 0 || id >= MAX_GARBAGE_BINS) || !GarbageData[id][garbageExists])
	    return SendErrorMessage(playerid, "ID thung rac khong ton tai.");

	Garbage_Delete(id);
	new string[128];
	format(string, sizeof(string), "[MAY CHU]:{FFFFFF} Ban da thanh cong pha huy thung rac ID: %d.", id);
	SendClientMessage(playerid, COLOR_SERVER, string);
	return 1;
}

CMD:taothungrac(playerid, params[])
{
	static
	    id = -1,
		type;

    if (PlayerInfo[playerid][pAdmin] < 1338)
	    return SendErrorMessage(playerid, "Ban khong co quyen su dung lenh nay.");

	if (sscanf(params, "d", type))
	{
	    SendSyntaxMessage(playerid, "/taothungrac [type]");
	    SendClientMessage(playerid, COLOR_YELLOW, "[TYPES]:{FFFFFF} 1: Dumpster | 2: Trash Can");
		return 1;
	}
	if (type < 1 || type > 2)
	    return SendErrorMessage(playerid, "Chi duoc nhap 1 hoac 2.");

	id = Garbage_Create(playerid, type);

	if (id == -1)
	    return SendErrorMessage(playerid, "Da vuot muc toi da ma co the tao thung rac.");

	new string[128];
	format(string, sizeof(string), "[MAY CHU]:{FFFFFF} Ban da thanh cong tao thung rac ID: %d.", id);
	SendClientMessage(playerid, COLOR_SERVER, string);
	return 1;
}

// Vut Rac
/*if ((id = Garbage_Nearest(playerid)) != -1)
				{
				    if (GarbageData[id][garbageCapacity] >= 20)
				        return SendErrorMessage(playerid, "This garbage bin is full of trash.");

                    GarbageData[id][garbageCapacity]++;
                    Garbage_Save(id);

					Inventory_Remove(playerid, string);
                    SendNearbyMessage(playerid, 30.0, COLOR_PURPLE, "** %s throws a \"%s\" into the garbage bin.", ReturnName(playerid, 0), string);

                    format(string, sizeof(string), "[Garbage %d]\n{FFFFFF}Trash Capacity: %d/20", id, GarbageData[id][garbageCapacity]);
                    UpdateDynamic3DTextLabelText(GarbageData[id][garbageText3D], COLOR_DARKBLUE, string);*/


stock LoadPlayerGarbageTD(playerid)
{
	//ProgressTD
	Garbage_PTD[playerid][0] = CreatePlayerTextDraw(playerid, 260.0000, 396.0000, "ld_spac:WHITE");
	PlayerTextDrawTextSize(playerid, Garbage_PTD[playerid][0], 0.0000, 17.0000);
	PlayerTextDrawAlignment(playerid, Garbage_PTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, Garbage_PTD[playerid][0], -6160129);
	PlayerTextDrawBackgroundColor(playerid, Garbage_PTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, Garbage_PTD[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, Garbage_PTD[playerid][0], 0);
	PlayerTextDrawSetShadow(playerid, Garbage_PTD[playerid][0], 0);
	return 1;
}
