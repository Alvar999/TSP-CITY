
#include "YSI\y_hooks"
#define LOADING_KHAITHAC 2
#define LOADING_LOGIN 3
#define LOADING_CAUCA 4
#define LOADING_CHEBIENCAN 6
#define LOADING_RUATIEN 7
#define LOADING_CHATGO 8
#define LOADING_HAILUA 112
#define LOADING_SANXUATBANH 113

new PlayerText:Loader[MAX_PLAYERS][3];



public OnLoadingFinish(playerid,loadingid) {
    switch(loadingid) {
        case LOADING_HAIRAU: {
            if(csinfo[GetPVarInt(playerid,"HaiCanID")][RauMuong_enable] == true) {
		        ClearAnimations(playerid);
		        KillTimer(csinfo[GetPVarInt(playerid,"HaiCanID")][RauMuong_timeex]); 
				csinfo[GetPVarInt(playerid,"HaiCanID")][RauMuong_enable] = false;
				DestroyDynamicObject(csinfo[GetPVarInt(playerid,"HaiCanID")][RauMuong_object]);
				DestroyDynamic3DTextLabel(csinfo[GetPVarInt(playerid,"HaiCanID")][RauMuong_text]);
				csinfo[GetPVarInt(playerid,"HaiCanID")][RauMuong_timethuhoach] = 0;
		    	SetPlayerAttachedObject(playerid, 1, 19473, 1, 0.035000, 0.606999, -0.885999, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000);
		 		ApplyAnimation(playerid, "carry", "crry_prtial", 4.1,1,1,0,0,0); 
		 		SetPlayerSpecialAction(playerid,SPECIAL_ACTION_CARRY);
		 		SetPlayerCheckpoint(playerid, -17.1264,1557.6027,12.7500, 3.0);
		 		CP[playerid] = 987;
		 		ClearAnimations(playerid);
		 		TogglePlayerControllable(playerid, 1);
				SetTimerEx("RespawnRauMuong", 12000, false, "d", GetPVarInt(playerid,"HaiCanID"));
				DeletePVar(playerid,"DangHaiCan");
				DeletePVar(playerid,"HaiCanID");
            } 
        }
        case LOADING_SUAXE:{
        	new string[32 + MAX_PLAYER_NAME];
        	PlayerInfo[playerid][pMats] -= 500;
        	SetVehicleHealth((GetPVarInt(playerid, "CarFixID")), 1000.0);
        	format(string, sizeof(string), "* %s da sua chua chiec xe.", GetPlayerNameEx(playerid));
    		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
    		DeletePVar(playerid, "CarFixID");
    		SendClientMessageEx(playerid, COLOR_LIGHTBLUE,"* Ban ton 500 vat lieu de sua chiec xe nay.");
        }
        case LOADING_RAVIEN:{
        	DeletePVar(playerid, "TimeRaVien");
        	DeletePVar(playerid, "RaVien");

       		SetPVarInt(playerid, "HospitalTimer", 0);

        	HospitalSpawn(playerid);
			VaoVien[playerid] = 0;
  			TogglePlayerControllable(playerid, 1);
        }
        case LOADING_TRUCK:{
        	DeletePVar(playerid, "LoadTruckTime");
			DeletePVar(playerid, "IsFrozen");
			TogglePlayerControllable(playerid, 1);

	  		new vehicleid = GetPlayerVehicleID(playerid);
	  		new truckdeliver = GetPVarInt(playerid, "TruckDeliver");
	  		TruckContents{vehicleid} = truckdeliver;
	  		TruckUsed[playerid] = vehicleid;
	  		if(!IsABoat(vehicleid))
	  		{
		  		new route = random(sizeof(TruckerDropoffs));
		  		TruckRoute[vehicleid] = route;
				// 1 = food and bev
				// 2 = clothing
				// 3 = legal mats
				// 4 = 24/7 items
				// 5 = weapons
				// 6 = illegal drugs
				// 7 = illegal materials
				if(truckdeliver == 1)
				{
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE,"* Xe cua ban da chat day thuc pham va do uong.");
					SetPlayerCheckpoint(playerid, TruckerDropoffs[route][PosX], TruckerDropoffs[route][PosY], TruckerDropoffs[route][PosZ], 5);
				}
				else if(truckdeliver == 2)
				{
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE,"* Xe cua ban da chat day quan ao.");
					SetPlayerCheckpoint(playerid, TruckerDropoffs[route][PosX], TruckerDropoffs[route][PosY], TruckerDropoffs[route][PosZ], 5);
				}
				else if(truckdeliver == 3)
				{
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE,"* Xe cua ban da chat day vat lieu.");
					SetPlayerCheckpoint(playerid, TruckerDropoffs[route][PosX], TruckerDropoffs[route][PosY], TruckerDropoffs[route][PosZ], 5);
				}
				else if(truckdeliver == 4)
				{
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE,"* Xe cua ban da chat day vat pham 24/7.");
					SetPlayerCheckpoint(playerid, TruckerDropoffs[route][PosX], TruckerDropoffs[route][PosY], TruckerDropoffs[route][PosZ], 5);
				}
				else if(truckdeliver == 5)
				{
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE,"* Xe cua ban da chat day vu khi.");
					SetPlayerCheckpoint(playerid, TruckerDropoffs[route][PosX], TruckerDropoffs[route][PosY], TruckerDropoffs[route][PosZ], 5);
				}
				else if(truckdeliver == 6)
				{
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE,"* Xe cua ban da chat day thuoc.");
					SetPlayerCheckpoint(playerid, TruckerDropoffs[route][PosX], TruckerDropoffs[route][PosY], TruckerDropoffs[route][PosZ], 5);
				}
				else if(truckdeliver == 7)
				{
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE,"* Xe cua ban da chat day vat lieu pham phap.");
					SetPlayerCheckpoint(playerid, TruckerDropoffs[route][PosX], TruckerDropoffs[route][PosY], TruckerDropoffs[route][PosZ], 5);
				}
				SendClientMessageEx(playerid, COLOR_REALRED, "CANH BAO: Coi chung nhung ten cuop, chung co the lay hang hoa cua ban va tau thoat...");
			}
			else
			{
				new route = random(sizeof(BoatDropoffs));
		  		TruckRoute[vehicleid] = route;

				if(truckdeliver == 1)
				{
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE,"* Thuyen da chat day thuc pham va do uong.");
					SetPlayerCheckpoint(playerid, BoatDropoffs[route][PosX], BoatDropoffs[route][PosY], BoatDropoffs[route][PosZ], 5);
				}
				else if(truckdeliver == 2)
				{
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE,"* Thuyen da chat day quan ao.");
					SetPlayerCheckpoint(playerid, BoatDropoffs[route][PosX], BoatDropoffs[route][PosY], BoatDropoffs[route][PosZ], 5);
				}
				else if(truckdeliver == 3)
				{
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE,"* Thuyen da chat day vat lieu.");
					SetPlayerCheckpoint(playerid, BoatDropoffs[route][PosX], BoatDropoffs[route][PosY], BoatDropoffs[route][PosZ], 5);
				}
				else if(truckdeliver == 4)
				{
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE,"* Thuyen da chat day vat pham 24/7.");
					SetPlayerCheckpoint(playerid, BoatDropoffs[route][PosX], BoatDropoffs[route][PosY], BoatDropoffs[route][PosZ], 5);
				}
				else if(truckdeliver == 5)
				{
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE,"* Thuyen da chat day vu khi.");
					SetPlayerCheckpoint(playerid, BoatDropoffs[route][PosX], BoatDropoffs[route][PosY], BoatDropoffs[route][PosZ], 5);
				}
				else if(truckdeliver == 6)
				{
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE,"* Thuyen da chat day thuoc.");
					SetPlayerCheckpoint(playerid, BoatDropoffs[route][PosX], BoatDropoffs[route][PosY], BoatDropoffs[route][PosZ], 5);
				}
				else if(truckdeliver == 7)
				{
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE,"* Thuyen cua ban da chat day Vat lieu pham phap.");
					SetPlayerCheckpoint(playerid, BoatDropoffs[route][PosX], BoatDropoffs[route][PosY], BoatDropoffs[route][PosZ], 5);
				}
				SendClientMessageEx(playerid, COLOR_REALRED, "CANH BAO:Coi chung nhung ten cuop, chung co the lay hang hoa cua ban va tau thoat...");
			}
			if(truckdeliver >= 5)
			{
				SendClientMessageEx(playerid, COLOR_REALRED, "CANH BAO #2: Ban dang dua hang pham phap, hay coi trung nhan vien thuc thi phap luat.");
			}
			SendClientMessageEx(playerid, COLOR_WHITE, "HUONG DAN: Dua hang hoa yeu cau den dia diem nhan hang (di theo diem do tren rada).");
			for(new i = 0; i < 9; i++) PlayerTextDrawShow(playerid, SpeedoTD[playerid][i]);
			SetPVarInt(playerid, "tpTruckRunTimer", 30);
			SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_TPTRUCKRUNTIMER);
        }
    }   
    return 1;
}



forward LoadingProgress(playerid,loadingid,speed);
forward OnLoadingFinish(playerid,loadingid);
static 
        Loading_Progess[MAX_PLAYERS],
        TimerLoading[MAX_PLAYERS];

stock HideLoading(playerid) {
    KillTimer(TimerLoading[playerid]);
    DeletePVar(playerid, "is_loading");
    Loading_Progess[playerid] = 0;
    PlayerTextDrawHide(playerid, Loader[playerid][0]);
    PlayerTextDrawHide(playerid, Loader[playerid][1]);
    PlayerTextDrawHide(playerid, Loader[playerid][2]);
    return 1;
}
stock LoaderStarting(playerid, loadingid, const LoaderInfo[], Float:speed,color = 3) {
	if(GetPVarInt(playerid, "is_loading") == 1) return 1;
    switch(color) {
        case 1: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], 65443);
        case 2: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], -202218806);
        case 3: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], 1960470730);
        case 4: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], 2021902794);
        case 5: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], -943949110);
        case 6: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], -948405558);
    }
    PlayerTextDrawColor(playerid, Loader[playerid][2], color);
	new str[60];
	format(str, sizeof str, "%s", LoaderInfo);
	PlayerTextDrawSetString(playerid, Loader[playerid][1], str);
    PlayerTextDrawShow(playerid, Loader[playerid][0]);
    PlayerTextDrawShow(playerid, Loader[playerid][1]);
    TimerLoading[playerid] = SetTimerEx("LoadingProgress", 150, true, "iii", playerid,loadingid,floatround(speed));
    SetPVarInt(playerid, "is_loading", 1);
    return 1;
}
CMD:testload(playerid,params[]) {
	LoaderStarting(playerid, 1, "Testing loading", 2,strval(params));
	return 1;
}
public LoadingProgress(playerid,loadingid,speed) {
    new Float:loading_bar;
    Loading_Progess[playerid] += 1 * speed;
    loading_bar = ( Loading_Progess[playerid] *  1.27 );
  // loading_bar = (385 < 257.000000 + loading_bar) ? 117 : loading_bar;
    PlayerTextDrawTextSize(playerid, Loader[playerid][2], 257.000000 + loading_bar, 0.000000);
    PlayerTextDrawShow(playerid, Loader[playerid][2]);
    switch(loadingid) {
      //  case LOADING_KHAITHAC: ApplyAnimation(playerid, "SWORD", "sword_4", 4.0, 1, 0, 0, 0, 0, 1);
        case LOADING_CAUCA: ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0, 1);
        case LOADING_HAIRAU: ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 1, 0, 0, 0, 0, 1);
        case LOADING_CHATGO: ApplyAnimation(playerid, "BASEBALL", "Bat_4", 4.0, 1, 0, 0, 0, 0, 1);
        case LOADING_HAILUA: ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 0, 0, 0, 0, 0, 1);
        case LOADING_SUAXE: ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 0, 0, 0, 0, 0, 1);
        case LOADING_RAVIEN:     ApplyAnimation(playerid, "BEACH", "bather", 4.0, 1, 0, 0, 0, 0, 1);
      //case LOADING_HAILUA: ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 1, 0, 0, 0, 0, 1);
      //case LOADING_SANXUATBANH: ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0, 1);
      //case LOADING_NHATSAO: {
      //    ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 1, 0, 0, 0, 0, 1);
      //    if(OpenSaoVang == false) {
      //        SendClientMessage(playerid,-1,"Thao tac bi huy, event sao vang da dong");
      //        ClearAnimations(playerid);

      //        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
      //        TogglePlayerControllable(playerid, 1);
      //        DeletePVar(playerid, "DangNhatSao");

      //        KillTimer(TimerLoading[playerid]);
      //        DeletePVar(playerid, "is_loading");
      //        Loading_Progess[playerid] = 0;
      //        PlayerTextDrawHide(playerid, Loader[playerid][0]);
      //        PlayerTextDrawHide(playerid, Loader[playerid][1]);
      //        PlayerTextDrawHide(playerid, Loader[playerid][2]);
      //    }
      //}
    }
    if(Loading_Progess[playerid] >= 100) {
        KillTimer(TimerLoading[playerid]);
        DeletePVar(playerid, "is_loading");
        Loading_Progess[playerid] = 0;
        OnLoadingFinish(playerid,loadingid);
        PlayerTextDrawHide(playerid, Loader[playerid][0]);
        PlayerTextDrawHide(playerid, Loader[playerid][1]);
        PlayerTextDrawHide(playerid, Loader[playerid][2]);
    }
}
hook OnPlayerDisconnect(playerid) {
    if(GetPVarInt(playerid, "is_loading") == 1) { 
        KillTimer(TimerLoading[playerid]);
        DeletePVar(playerid, "is_loading");
        Loading_Progess[playerid] = 0;
        PlayerTextDrawHide(playerid, Loader[playerid][0]);
        PlayerTextDrawHide(playerid, Loader[playerid][1]);
        PlayerTextDrawHide(playerid, Loader[playerid][2]);
    }
}

CreateLoading(playerid) {

Loader[playerid][0] = CreatePlayerTextDraw(playerid, 260.309265, 396.149841, "box");
PlayerTextDrawLetterSize(playerid, Loader[playerid][0], 0.000000, 1.098096);
PlayerTextDrawTextSize(playerid, Loader[playerid][0], 385.300018, 0.000000);
PlayerTextDrawAlignment(playerid, Loader[playerid][0], 1);
PlayerTextDrawColor(playerid, Loader[playerid][0], -1);
PlayerTextDrawUseBox(playerid, Loader[playerid][0], 1);
PlayerTextDrawBoxColor(playerid, Loader[playerid][0], 228);
PlayerTextDrawSetShadow(playerid, Loader[playerid][0], 0);
PlayerTextDrawSetOutline(playerid, Loader[playerid][0], 0);
PlayerTextDrawBackgroundColor(playerid, Loader[playerid][0], 255);
PlayerTextDrawFont(playerid, Loader[playerid][0], 1);
PlayerTextDrawSetProportional(playerid, Loader[playerid][0], 1);
PlayerTextDrawSetShadow(playerid, Loader[playerid][0], 0);

Loader[playerid][2] = CreatePlayerTextDraw(playerid, 260.309265, 396.149841, "box");
PlayerTextDrawLetterSize(playerid, Loader[playerid][2], 0.000000, 1.098096);
PlayerTextDrawTextSize(playerid, Loader[playerid][2], 385.300018, 0.000000);
PlayerTextDrawAlignment(playerid, Loader[playerid][2], 1);
PlayerTextDrawColor(playerid, Loader[playerid][2], -1);
PlayerTextDrawUseBox(playerid, Loader[playerid][2], 1);
PlayerTextDrawBoxColor(playerid, Loader[playerid][2], 65443);
PlayerTextDrawSetShadow(playerid, Loader[playerid][2], 0);
PlayerTextDrawSetOutline(playerid, Loader[playerid][2], 0);
PlayerTextDrawBackgroundColor(playerid, Loader[playerid][2], 255);
PlayerTextDrawFont(playerid, Loader[playerid][2], 1);
PlayerTextDrawSetProportional(playerid, Loader[playerid][2], 1);
PlayerTextDrawSetShadow(playerid, Loader[playerid][2], 0);

Loader[playerid][1] = CreatePlayerTextDraw(playerid, 321.385589, 395.916687, "");
PlayerTextDrawLetterSize(playerid, Loader[playerid][1], 0.178857, 1.127499);
PlayerTextDrawAlignment(playerid, Loader[playerid][1], 2);
PlayerTextDrawColor(playerid, Loader[playerid][1], -1);
PlayerTextDrawSetShadow(playerid, Loader[playerid][1], 0);
PlayerTextDrawSetOutline(playerid, Loader[playerid][1], 0);
PlayerTextDrawBackgroundColor(playerid, Loader[playerid][1], 255);
PlayerTextDrawFont(playerid, Loader[playerid][1], 1);
PlayerTextDrawSetProportional(playerid, Loader[playerid][1], 1);
PlayerTextDrawSetShadow(playerid, Loader[playerid][1], 0);

}