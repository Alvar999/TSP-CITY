//#include <a_samp>
//#include <zcmd>
#include <YSI\y_hooks>

#define MAX_MESS_TD 10

new PlayerText:MessageText[MAX_PLAYERS][MAX_MESS_TD];

new PlayerMessTD[MAX_PLAYERS][MAX_MESS_TD];
static ColorPhaiDazzn[MAX_PLAYERS][MAX_MESS_TD],ColorBoxPhaiDazzn[MAX_PLAYERS][MAX_MESS_TD];

static TimerPhaimo[MAX_PLAYERS][MAX_MESS_TD]; 

stock CreateTDMSG(playerid) {
	for(new i = 0 ; i < MAX_MESS_TD; i++) {
   
        MessageText[playerid][i]= CreatePlayerTextDraw(playerid, 334.961547, 412.533538 - ( 15 * i ), "~r~anh_chang_voi_di_den_timanh_");
        PlayerTextDrawLetterSize(playerid, MessageText[playerid][i], 0.184551, 1.074933);
        PlayerTextDrawTextSize(playerid, MessageText[playerid][i], 0.000000, 9.000000);
        PlayerTextDrawAlignment(playerid, MessageText[playerid][i], 2);
        PlayerTextDrawColor(playerid, MessageText[playerid][i], -1);
        PlayerTextDrawUseBox(playerid, MessageText[playerid][i], 1);
        PlayerTextDrawBoxColor(playerid, MessageText[playerid][i], 177);
        PlayerTextDrawSetShadow(playerid, MessageText[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, MessageText[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, MessageText[playerid][i], 255);
        PlayerTextDrawFont(playerid, MessageText[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, MessageText[playerid][i], 1);
        PlayerTextDrawSetShadow(playerid, MessageText[playerid][i], 0);

    }
}
CMD:testmess(playerid,params[]) 
{
	TSPNotice(playerid,params,5);
	return 1; 
}

stock TSPNotice(playerid,text[],time = 5) 
{
	
	new i = 0;
	PlayerTextDrawHide(playerid, MessageText[playerid][i]);
    PlayerTextDrawTextSize(playerid, MessageText[playerid][i], 0, 1 + (3.6 * strlen(text)));
	PlayerTextDrawSetString(playerid, MessageText[playerid][i], text);
	PlayerTextDrawBoxColor(playerid, MessageText[playerid][i], 125);
	PlayerTextDrawColor(playerid, MessageText[playerid][i], -1);
	PlayerTextDrawShow(playerid, MessageText[playerid][i]);
	PlayerMessTD[playerid][i] = 1;
	SetTimerEx("HidePlayerMSG", 1000 * time, 0, "ii", playerid,i);
	return 1;
}
stock CheckInvaildSlotMSG(playerid) {
	new check = 0;
	for(new i = 0 ; i < MAX_MESS_TD; i++) {
		if(PlayerMessTD[playerid][i] == 0) {
			check = 1;
			break;
		}
	}
	return check;
}
forward HidePlayerMSG(playerid,i);
public HidePlayerMSG(playerid,i) {
	ColorPhaiDazzn[playerid][i] = -1;


//	PlayerMessTD[playerid][i] = 0;
	ColorPhaiDazzn[playerid][i]  = 0;
	ColorBoxPhaiDazzn[playerid][i] = 128;
	TimerPhaimo[playerid][i] = SetTimerEx("NhatDan", 100 , false, "ii", playerid,i);
}
forward NhatDan(playerid,i);
public NhatDan(playerid,i) {
	ColorPhaiDazzn[playerid][i] += -10;
	ColorBoxPhaiDazzn[playerid][i] -= 5;
	PlayerTextDrawBoxColor(playerid, MessageText[playerid][i], ColorBoxPhaiDazzn[playerid][i] );
	PlayerTextDrawColor(playerid,  MessageText[playerid][i], ColorPhaiDazzn[playerid][i] );
	PlayerTextDrawShow(playerid, MessageText[playerid][i]);
	if(ColorBoxPhaiDazzn[playerid][i]  <= 0) PlayerTextDrawBoxColor(playerid, MessageText[playerid][i], 0 );
	PlayerTextDrawHide(playerid, MessageText[playerid][i]);
	if(ColorPhaiDazzn[playerid][i] <= -255) {
		PlayerTextDrawHide(playerid, MessageText[playerid][i]);
		PlayerMessTD[playerid][i] = 0;
		KillTimer(TimerPhaimo[playerid][i]);
		//printf("Finish %d",i);
		return 1;
	}
	return true;
}
hook OnPlayerConnect(playerid) {
	CreateTDMSG(playerid);
}