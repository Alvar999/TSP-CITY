#include <ysi\y_hooks>

#define MAX_PARTY 20
#define MAX_MEMBER_PARTY 10
#define BANK_SA 1677.7754,-1000.0110,671.0032 // toa do cuop
#define CUOPBANK_TIME 300 // 5 Phut la hoan thanh
#define ROB_COLOR "{006600}Bank{ffffff}"

#define khuvuctratien_rob -752.4670,1643.2571,31.426

enum cBank {
    thTime,
    thTimeRespawn,
    thPCuop,
    Text3D:thLabel,
    bool:thAttacker,
    thTimeex,
    thLocked,
}

enum ptinfo {
    pt_memcount, 
}

new Bank[cBank]; 
new CuopBank[MAX_PLAYERS];
new Party[MAX_PARTY][ptinfo];
new myparty[MAX_PLAYERS] = 0;
new MoneyBag_Count[MAX_PLAYERS];

CMD:moicuop(playerid, params[]) {
    if(myparty[playerid] > 0) {
        new i,string[128];
        if(sscanf(params, "d", i)) return SendClientMessage(playerid, -1, ""ROB_COLOR": /moicuop [playerid]");

        if(myparty[i] != 0) {
            SendClientMessage(playerid, -1, ""ROB_COLOR":Nguoi nay dang o trong nhom khac");
        }
        else {
            //if(GetPlayerScore(i) >= 3) {
                new partyid = myparty[playerid];
                format(string, 128, ""ROB_COLOR":%s da moi ban tham gia bang cuop so %d", GetPlayerNameEx(playerid), partyid);
                SendClientMessage(i, -1, string);
                SendClientMessage(i, -1, ""ROB_COLOR":Su dung lenh (/chapnhancuop) de tham gia");
                // playerid
                format(string, 128, ""ROB_COLOR":Ban da moi %s ban tham gia bang cuop so %d", GetPlayerNameEx(i), partyid);
                SendClientMessage(i, -1, string);       

                SetPVarInt(i, "Invite_id", playerid);
                SetPVarInt(i, "Invite_Robteam", partyid);
/*          
}
            else {
                SendClientMessage(playerid, -1, ""ROB_COLOR":Nguoi choi nay can cap do 3");
            }*/
        }
    }
    else {
        new party_check = 0;
        for(new i = 1 ; i < MAX_PARTY; i ++) {
            if(Party[i][pt_memcount] == 0) {
                party_check = i;
                break;
            }
        }
        if(party_check == 0) {
            SendClientMessage(playerid, -1, ""ROB_COLOR":Ban khong the tao nhom cuop ngay luc nay!");
        }
        else {
            myparty[playerid] = party_check;
            Party[party_check][pt_memcount] ++;
            SendClientMessage(playerid, -1, ""ROB_COLOR":Ban da tao nhom. Su dung lenh (/moicuop [playerid])");
        }
    }
    return 1;
}

CMD:chapnhancuop(playerid) {
    if(GetPVarInt(playerid, "Invite_Robteam") != 0) {
    if(PlayerInfo[playerid][pLevel] <= 5) {
        new a = GetPVarInt(playerid, "Invite_Robteam"),string[128];
        Party[a][pt_memcount] ++ ;
        myparty[playerid] = a;
        SetPVarInt(playerid, "Invite_Robteam", 0);  
        // Invite ID
        format(string, 128, ""ROB_COLOR":%s da chap nhan tham gia bang cuop so %d", GetPlayerNameEx(playerid), a);
        SendClientMessage(GetPVarInt(playerid, "Invite_id"), -1, string);
     }
        else SendClientMessage(playerid, -1, "Ban Chua Du Cap Do Khong The Thuc Hien Vu Cuop");
    }
    else SendClientMessage(playerid, -1, "ROB_COLOR""Khong ai moi ban vao nhom");
    return 1;
}

CMD:lockbank(playerid) {
    if(PlayerInfo[playerid][pAdmin] <= 2) 
        return 0;
    
    if(Bank[thLocked] == 0)
    {
        Bank[thLocked] = 1;
        SendClientMessageToAll(-1, "[{006600}Ngan Hang{ffffff}]:Ban Quan Tri Da Mo Khoa!");
    }
    else {
        Bank[thLocked] = 0;
        SendClientMessageToAll(-1, "[{006600}Ngan Hang{ffffff}]:Da Khoa lai Hen Vao Ngay Chu Nhat Nhe!");
    }
    return 1;
}

CMD:adminresetbank(playerid) {
    if(PlayerInfo[playerid][pAdmin] >= 2) 
    {  return 0; }  
    ResetBank(5);
    return 1;
}



hook OnPlayerDisconnect(playerid, reason) {

    if(myparty[playerid] > 0) {
        Party[myparty[playerid]][pt_memcount] --;
        myparty[playerid] = 0;
    }      
    return 1;
}

hook OnGameModeInit() {
    Bank[thPCuop] = 0;
    Bank[thLabel] = CreateDynamic3DTextLabel("[{006600}Ngan Hang Vietcombank{ffffff}]\nSu dung [{ffcc99}Y{ffffff}] de cuop", -1, BANK_SA, 5);
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {

 

    if(newkeys & KEY_YES) {
        if(IsPlayerInRangeOfPoint(playerid, 1, BANK_SA)) {
            if(MoneyBag_Count[playerid] > 0 && GetPVarInt(playerid, "DangVanChuyenTien") == 1) {
                if(MoneyBag_Count[playerid] == 2) {
                    return SendClientMessage(playerid, -1, "Da het....");
                }

                MoneyBag_Count[playerid] += 1;
                SetPlayerAttachedObject(playerid, 9, 1550, 1, 0.0000, -0.3530, 0.0000, 0.0000, 55.4000, 0.0000, 1.0000, 1.0000, 1.0000, 0xFFFFFFFF, 0xFFFFFFFF);
                return 1;
                }
            if(Bank[thLocked] == 0) return SendClientMessage(playerid, -1, "Admin dang khoa!");
            if(PlayerInfo[playerid][pLevel] > 5)
            {
                SendClientMessage(playerid, -1, "Ban Chua Du Cap Do 5 Khong The Cuop");
            }
            if(myparty[playerid] <= 0) 
            {

                    SendClientMessage(playerid, -1, "[{006600}Ngan Hang{ffffff}]: Ban khong co nhom ! hay tao nhom (/moicuop)");
                }
                else {
                    if(Party[myparty[playerid]][pt_memcount] >= 0) { // 5 tv
                        if(Bank[thAttacker] == false) {
                            if(Bank[thTimeRespawn] < gettime()) {
                                if(CopOnline < 5) return  SendClientMessage(playerid, -1, "[{006600}Ngan Hang{ffffff}]:Can toi thieu 5 canh sat de cuop bank!");

                                Bank[thTime] = 0;
                                CuopBank[playerid] = 1;
                                Bank[thAttacker] = true;
                                Bank[thPCuop] = playerid;
                                Bank[thTimeex] = SetTimerEx("RobberyGrocery", 1000, true, "d", playerid);
                                SendClientMessageToAll(-1, "[{006600}Ngan Hang{ffffff}]: Hien tai Ngan Hang Vietcombannk dang bi cuop! Yeu cau canh sat co mat o hien truong.");
                            }
                            else {
                                new string[128];
                                SendClientMessage(playerid, -1, "[{006600}Ngan Hang{ffffff}]: Hien tai chua the cuop");
                                format(string,128,"Con %ds nua moi co the cuop", Bank[thTimeRespawn] - gettime());
                                SendClientMessage(playerid, -1, string);
                            
                            }
                        }
                        else 
                            SendClientMessage(playerid, -1, "[{006600}Ngan Hang{ffffff}]: Khong the!");
                    }
                    else 
                        SendClientMessage(playerid, -1, "[{006600}Ngan Hang{ffffff}]: Nhom ban can tren 5 nguoi!");                
                }
 
            }
        }
    return 1;
   }

hook OnPlayerDeath(playerid, killerid) {
    if(CuopBank[playerid] == 1) {
        SendClientMessageToAll(-1, "[{006600}Ngan Hang{ffffff}]: Cuop Ngan Hang da huy do ten cuop da chet!");
        ResetBank(180); // 3 phút           
        CuopBank[playerid] = 0;
        if(IsACop(killerid)) {
            strcpy(PlayerInfo[playerid][pPrisonReason], "Cuop Ngan Hang", 128);
            strcpy(PlayerInfo[playerid][pPrisonedBy], GetPlayerNameEx(killerid), 128);
            PlayerInfo[playerid][pJailTime] += 20*60;    
            SetPlayerInterior(playerid, 10);
            new rand = random(sizeof(LSPDJailSpawns));
            SetPlayerFacingAngle(playerid, LSPDJailSpawns[rand][3]);
            SetPlayerPos(playerid, LSPDJailSpawns[rand][0], LSPDJailSpawns[rand][1], LSPDJailSpawns[rand][2]);                    
        }
    }
    return 1;   
}

forward RobberyGrocery(iBandit);
public RobberyGrocery(iBandit) {
    if(IsPlayerConnected(iBandit)) {
        if(IsPlayerInRangeOfPoint(iBandit, 7.2 , BANK_SA))
        {
            new string[128];
            if(Bank[thTime] < CUOPBANK_TIME)
            {
                Bank[thTime]++; 

                format(string, 128, "[{006600}DANG CUOP{ffffff}]\nCon %d giay nua de hoan thanh\n{AA0000}(%s)", CUOPBANK_TIME-Bank[thTime],GetPlayerNameEx(iBandit));
                UpdateDynamic3DTextLabelText(Bank[thLabel], -1, string);            
            }
            else {
                FinishRobberyGrocery(iBandit);
                SendClientMessageToAll(-1, "[{006600}Ngan Hang{ffffff}]: Cuop da lay tien len xe va dang bo tron");
                ResetBank(300); // 5 phut
            }
        }
        else {
            SendClientMessageToAll(-1, "[{006600}Ngan Hang{ffffff}]: Cuop Ngan Hang da huy do ten cuop da roi khoi khu vuc!");
            ResetBank(180); // 3 phut          
        }
    }
    else {
        SendClientMessageToAll(-1, "[{006600}Ngan Hang{ffffff}]: Cuop Ngan Hang da huy do khong thay ten cuop.");
        ResetBank(120); // 2 phút
    }
    return 1;
}

ResetBank(time = 300) {
    new 
        iPlayer = Bank[thPCuop];
 
    Bank[thTime] = 0;
    Bank[thAttacker] = false;
    KillTimer(Bank[thTimeex]); 
    Bank[thTimeRespawn] = gettime() + time;
    Bank[thPCuop] = INVALID_PLAYER_ID;
    UpdateDynamic3DTextLabelText(Bank[thLabel], -1, "[{006600}Ngan Hang Vietcombank{ffffff}]\nSu dung [{ffcc99}Y{ffffff}] de cuop");  
    if(CuopBank[iPlayer] == 1 && IsPlayerConnected(iPlayer)) 
        CuopBank[iPlayer] = 0;
}

FinishRobberyGrocery(playerid) {    //
    SetPlayerCheckpoint(playerid,khuvuctratien_rob, 5);
    PlayerInfo[playerid][pWantedLevel] += 6;
    SendClientMessage(playerid, -1, "Hay Nhanh Chong Chay Tron Khoi Su Truy Na Cua Luc Luong Cong An.");
    SetPlayerAttachedObject(playerid, 9, 1550, 1, 0.0000, -0.3530, 0.0000, 0.0000, 55.4000, 0.0000, 1.0000, 1.0000, 1.0000, 0xFFFFFFFF, 0xFFFFFFFF); // CJ_MONEY_BAG attached to the Spine of frog_kidaaa
    SetPVarInt(playerid, "DangVanChuyenTien", 1);
    return 1;
}

hook OnPlayerEnterCheckpoint(playerid) {
    if(IsPlayerInRangeOfPoint(playerid, 5, khuvuctratien_rob) && GetPVarInt(playerid, "DangVanChuyenTien")) {
            SetPVarInt(playerid, "DangVanChuyenTien", 0);
            SetPVarInt(playerid, "Chat_BagMoney", 0);
            DisablePlayerCheckpoint(playerid);
            PlayerInfo[playerid][pTienBan] += 800000; // 300k tiền bẩn
            PlayerInfo[playerid][pWantedLevel] -= 6; // khi cuop xong se tu tru sao
            SendClientMessage(playerid, -1, "Ban Nhan Duoc 800.000 Tien Ban");
            SendClientMessage(playerid, -1, "Hay Tim Mot Thoi Diem Thich Hop De Rua Tien Ban");
            MoneyBag_Count[playerid] = 0;
    
    }
    return 1;
}
CMD:giaodichtienban(playerid)
{       
    if (IsPlayerInRangeOfPoint(playerid, 2.0, -2451.1013,-296.3802,40.2905)) {
    if(PlayerInfo[playerid][pTienBan] >= 800000) {
    PlayerInfo[playerid][pTienBan] -= 800000;
    PlayerInfo[playerid][pCash] += 650000;
    SendClientMessage(playerid, -1, "Ban Nhan Duoc Mot So Tien 650,000 Tu Viec Rua Tien");
    }
    else SendClientMessage(playerid, -1, "Khong The Thuc Hien Giao Dich");
    }
    else SendClientMessage(playerid, -1, "Ban Khong O Vi tri giao dich");
    return 1;
}



