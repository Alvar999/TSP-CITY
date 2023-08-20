#include <a_samp>
#include <YSI\y_hooks>
#include <zcmd>



new gDuty;

new PlayerDuty[MAX_PLAYERS];


new PlayerCall;


new TienThanhToan[MAX_PLAYERS];
new StatusPay[MAX_PLAYERS];
new NguoiVietDon[MAX_PLAYERS];


SendGvOMessage(clientid,string[]){

return SendClientMessageEx(clientid,COLOR_WHITE,string[0]);

}


CMD:gduty(playerid, params[])
{
	if(PlayerInfo[playerid][pJob] == 2 || PlayerInfo[playerid][pJob2] == 2)
	{
		if(PlayerDuty[playerid] == 0)
		{
			SetPlayerColor(playerid, 0x7CFC00AA);
			PlayerDuty[playerid] = 1;

			new szDuty[1280];
			format(szDuty, sizeof(szDuty),"%s Da Onduty , Moi Nguoi Co The /goigrab De Goi Grab Nhe");
			SendClientMessageToAll(0x7CFC00AA, szDuty);
			gDuty+= 1;
		}
		else if(PlayerDuty[playerid] == 1)
		{
			SetPlayerColor(playerid, COLOR_WHITE);
			SendGvOMessage(playerid, "Ban Da Off Duty");
			gDuty -= 1;
		}
	}
	else SendGvOMessage(playerid, "Ban Khong Phai La Nhan Vien Grab");
	return 1;
}
stock SendGrabMessage(string[])
{
	foreach(new i:Player)
	{
		if(PlayerInfo[i][pJob] == 2 || PlayerInfo[i][pJob2] == 2)
		{
			SendGvOMessage(i, string);
		}
	}
}
CMD:goigrab(playerid, params[])
{
	if(gDuty > 0)
	{
		PlayerCall = playerid;
		SetPVarInt(PlayerCall, "GoiXe_",1);
		SendGvOMessage(playerid, "Ban da goi 1 chiec grab bike");

		new szCall[128];
		format(szCall, sizeof(szCall),"%s Da Goi 1 Chiec Grab , Vui Long /acceptgrab !", GetPlayerNameEx(PlayerCall));
		SendGrabMessage(szCall);
	}
	else SendGvOMessage(playerid, "Khong Co Nhan Vien Nao Dang Lam Viec");
	return 1;
}

CMD:acceptgrab(playerid, params[])
{
	if(PlayerInfo[playerid][pJob] == 2 || PlayerInfo[playerid][pJob2] == 2)
	{
		if(GetPVarInt(PlayerCall,"GoiXe_") == 1)
		{
			new Float:TaiXe[3];
			GetPlayerPos(PlayerCall, TaiXe[0], TaiXe[1], TaiXe[2]);

			SetPlayerCheckpoint(playerid, TaiXe[0], TaiXe[1], TaiXe[2], 10);
			SendClientMessage(PlayerCall,COLOR_WHITE, "1 Nhan Vien Da Chap Nhan Cuoc Goi Cua Ban , Hay Giu Vi Tri Nhe");
			SendGvOMessage(playerid, "Ban Da Chap Nhan Cuoc Goi , Vui Long Nhanh Chong Den Do");
			SetPVarInt(PlayerCall, "GoiXe_", 0);
		}
		else SendGvOMessage(playerid, "Khong Co Cuoc Xe Nao Ca");
	}
	else SendGvOMessage(playerid, "Ban Khong Phai Nhan Vien Grab");
	return 1;
}

CMD:viethoadon(playerid, params[])
{
	new giveplayerid, money;
	if(sscanf(params, "ud", giveplayerid, money)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /viethoadon [Player] [Gia tien]");

	if(IsPlayerConnected(giveplayerid))
	{
		if(ProxDetectorS(8.0, playerid, giveplayerid))
		{
			StatusPay[giveplayerid] = 1;
			TienThanhToan[giveplayerid] = money;
			NguoiVietDon[giveplayerid] = playerid;
			SendGvOMessage(playerid,"Ban Da Viet Hoa Don Thanh Cong");
			SendGvOMessage(giveplayerid,"Ban Dang Co 1 Hoa Don , Hay /thanhtoan Nhe");

			new szLog[128];
			format(szLog ,sizeof(szLog),"%s Da Gui Hoa Don Cho %s , Hoa Don La %d$",GetPlayerNameEx(playerid),GetPlayerNameEx(giveplayerid),money);
			Log("logs/viethoadon.log",szLog);
		}
		else SendGvOMessage(playerid,"Ban Khong O Gan Nguoi Do");
	}
	else SendGvOMessage(playerid,"Nguoi Choi Khong Hop Le");
	return 1;
}



CMD:thanhtoan(playerid, params[])
{
	if(StatusPay[playerid] == 1)
	{
		if(TienThanhToan[playerid] > 0)
		{
			PlayerInfo[NguoiVietDon[playerid]][pCash] += TienThanhToan[playerid];
			PlayerInfo[playerid][pCash] -= TienThanhToan[playerid];
			SendGvOMessage(NguoiVietDon[playerid],"Ban Da Tra Hoa Don Thanh Cong");
			SendClientMessage(playerid,COLOR_WHITE,"Ban Da Tra Hoa Don Thanh Cong");
			StatusPay[playerid] = 0;
			TienThanhToan[playerid] = 0;
			NguoiVietDon[playerid] = 0;

		}
		else SendClientMessageEx(playerid,COLOR_WHITE,"So Tien Khong Hop Le");
	}
	else SendClientMessage(playerid,COLOR_WHITE,"Ban Khong Co Hoa Don");
	return 1;
}