#include <ysi\y_hooks>

#define CUOPCUAHANG_MINMONEY  80000
#define CUOPCUAHANG_MAXMONEY  100000
#define CUOPCUAHANG_TIME 150


enum cRobStore {
    cTimeRob,
    cTimeRespawn,
    cTimeex,
    cAttacker,
    bool:IsRob,
    cLocked
}

new StoreRob[MAX_BUSINESSES][cRobStore];
new CuopCuaHang[MAX_PLAYERS]; 

CMD:cuopcuahang(playerid, params[])
{
    if(PlayerInfo[playerid][pCuopCuaHang] >= 1) return  SendClientMessage(playerid, -1, "[{006600}Cua Hang{ffffff}]:Ban can doi 5h de tiep tuc cuop cua hang!");
    if(CopOnline < 4) return  SendClientMessage(playerid, -1, "[{006600}Cua Hang{ffffff}]:Can toi thieu 4 canh sat de cuop cua hang!");
    if(CuopCuaHang[playerid] == 1) return SendClientMessage(playerid, -1, "[{006600}Cua Hang{ffffff}]:Ban Da Thuc Hien Vu Cuop Roi!");
    SetRobStore(playerid);
    return 1;
}

stock SetRobStore(playerid) {
    new iBusiness = InBusiness(playerid);
    if(StoreRob[iBusiness][IsRob] == true) {
        SendClientMessage(playerid, -1, "[{006600}Cua Hang{ffffff}]:Da Co Mot Nguoi Khac Dang Thuc Hien Vu Cuop O Day!");
        return 1;
    }
    if(StoreRob[iBusiness][cTimeRespawn] > gettime()) {
        new string[128];
        SendClientMessage(playerid, -1, "[{006600}Cua Hang{ffffff}]: Cua Hang Nay Da Bi Cuop Boi Nguoi Khac Roi!");
        format(string,128,"[{006600}Cua Hang{ffffff}]: Con %ds Nua Moi Co The Tiep Tuc Cuop Cua Hang Nay!", StoreRob[iBusiness][cTimeRespawn] - gettime());
        SendClientMessage(playerid, -1, string);
        return 1;
    }
    if (IsAt247(playerid)) {
        StoreRob[iBusiness][cTimeex] = SetTimerEx("RobStoreTime", 1000, true, "ddd", playerid, iBusiness, 1);
    }
    else if (IsAtClothingStore(playerid)) {
         StoreRob[iBusiness][cTimeex] = SetTimerEx("RobStoreTime", 1000, true, "ddd", playerid, iBusiness, 2);
    }
    else if (IsAtRestaurant(playerid)) {
        StoreRob[iBusiness][cTimeex] = SetTimerEx("RobStoreTime", 1000, true, "ddd", playerid, iBusiness, 3);
    }
    else return 1;
    CuopCuaHang[playerid] = 1;
    StoreRob[iBusiness][cAttacker] = playerid;
    StoreRob[iBusiness][IsRob] = true;
    SendMessageRobStoreForPolice(playerid, iBusiness);
    TogglePlayerControllable(playerid, 0);
    SetPlayerArmedWeapon(playerid, 0);
    ApplyAnimation(playerid, "INT_HOUSE", "wash_up", 4.0, 1, 0, 0, 0, 0, 1);

    new string[128];
    format(string,128,"[{006600}Cua Hang{ffffff}]:Cua Hang Da Bao Canh Sat - Ban Nhan Duoc 1 sao tu viec cuop cua hang");
    SendClientMessage(playerid, COLOR_RED, string);


    ++PlayerInfo[playerid][pCrimes];
    PlayerInfo[playerid][pWantedLevel] += 1;
    if(PlayerInfo[playerid][pWantedLevel] > 6)
    {
        PlayerInfo[playerid][pWantedLevel] = 6;
    }
    SetPlayerWantedLevel(playerid, PlayerInfo[playerid][pWantedLevel]);
    return 1;
}

stock SendMessageRobStoreForPolice(playerid, iBusiness) {
        foreach(new i: Player)
        {
            if(IsACop(i)) {
                new szMessage[256];
                format(szMessage, sizeof(szMessage), "Toi ac: Cuop Cua Hang, nguoi trinh bao: Chu Cua Hang : %s, nguoi thuc hien toi ac : %s", Businesses[iBusiness][bOwnerName], GetPlayerNameEx(playerid));
                SendClientMessageEx(i, COLOR_LIGHTBLUE, szMessage);
                format(szMessage, sizeof(szMessage), "Dia Diem : Cua Hang %s - Da Duoc Danh Dau Tren Ban Do", Businesses[iBusiness][bName]);
                SendClientMessageEx(i, COLOR_LIGHTBLUE, szMessage);
                SetPlayerCheckpoint(i, Businesses[iBusiness][bExtPos][0], Businesses[iBusiness][bExtPos][1], Businesses[iBusiness][bExtPos][2], 3.0);
            }
        }
}

//CUOP CUA HANG
forward RobStoreTime(playerid, iBusiness, Type);
public RobStoreTime(playerid, iBusiness, Type)
{
    if (StoreRob[iBusiness][cTimeRob] < CUOPCUAHANG_TIME) {
        new string[128];
        StoreRob[iBusiness][cTimeRob]++;

        format(string, sizeof(string), "CON %d GIAY CON LAI", CUOPCUAHANG_TIME - StoreRob[iBusiness][cTimeRob]);
        GameTextForPlayer(playerid, string, 1000, 5);

    }
    else {
        new string[256];
        ClearAnimations(playerid);
        TogglePlayerControllable(playerid, 1);
        new rand = random(1000);
        switch(rand)
        {
            case 1.200:
            {
                new randcash = 10000 + Random(CUOPCUAHANG_MINMONEY,CUOPCUAHANG_MAXMONEY);
                format(string, sizeof(string), "[{006600}Cua Hang{ffffff}]:Xin chuc mung cua hang nay co rat nhieu tien! - Ban nhan duoc han %d money", randcash);
                SendClientMessage(playerid, -1, string);
                PlayerInfo[playerid][pCash] += randcash;
                ResetRobStore(500, iBusiness);
            }
            case 201.1000:
            {
                new randcash = 1000 + Random(CUOPCUAHANG_MINMONEY,CUOPCUAHANG_MAXMONEY);
                format(string, sizeof(string), "[{006600}Cua Hang{ffffff}]:Ban da nhan duoc %d money", randcash);
                SendClientMessage(playerid, -1, string);
                PlayerInfo[playerid][pCash] += randcash;
                ResetRobStore(500, iBusiness);
            }
            default:
            {
                new randcash = 1000 + Random(CUOPCUAHANG_MINMONEY,CUOPCUAHANG_MAXMONEY);
                format(string, sizeof(string), "[{006600}Cua Hang{ffffff}]:Ban da nhan duoc %d money tu viec cuop cua hang", randcash);
                SendClientMessage(playerid, -1, string);
                PlayerInfo[playerid][pCash] += randcash;
                ResetRobStore(500, iBusiness);
            }
        }
        PlayerInfo[playerid][pCuopCuaHang] = 1;
        KillTimer(StoreRob[iBusiness][cTimeex]); 
    }
    return 1;
}

hook OnPlayerDisconnect(playerid, reason) {

    CuopCuaHang[playerid] = 0;
    return 1;
}


ResetRobStore(time, iBusiness) {
    new iPlayer = StoreRob[iBusiness][cAttacker];
 
    StoreRob[iBusiness][cTimeRob] = 0;
    StoreRob[iBusiness][cAttacker] = INVALID_PLAYER_ID;
    KillTimer(StoreRob[iBusiness][cTimeex]); 
    StoreRob[iBusiness][cTimeRespawn] = gettime() + time;
    StoreRob[iBusiness][IsRob] = false;
    if(CuopCuaHang[iPlayer] == 1 && IsPlayerConnected(iPlayer)) 
        CuopCuaHang[iPlayer] = 0;
}


/*CMD:lockrobstore(playerid) {
    if(PlayerInfo[playerid][pAdmin] <= 2) 
        return 0;
    for(new i; i < MAX_BUSINESSES; i++) {
        if(RobStore[i][cLocked] == 0)
        {
            RobStore[i][cLocked] = 1;
            // SendClientMessageToAll(-1, "[{006600}Cuop Cua Hang{ffffff}]:Ban Quan Tri Da Mo Khoa!");
        }
        else {
            RobStore[iBusiness][cLocked] = 0;
            // SendClientMessageToAll(-1, "[{006600}Cuop Cua Hang{ffffff}]:Cuop Cua Hang Da Bi Khoa!");
        }
    }
    return 1;
}*/

CMD:resetcuopcuahang(playerid) {
    if(PlayerInfo[playerid][pAdmin] >= 2) 
    {  return 0; } 
    for(new i; i < MAX_BUSINESSES; i++)
        ResetRobStore(5, i);
    return 1;
}
