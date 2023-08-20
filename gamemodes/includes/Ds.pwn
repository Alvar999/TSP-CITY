#include <discord-connector>
#include <discord-cmd>
#pragma tabsize 0

#include <YSI\y_hooks>

static DCC_Channel:g_Discord_Chat;
static DCC_Channel:g_Gang_Chat;
static DCC_Channel:g_Verify_Chat;
static DCC_Channel:succes_Chat;
static DCC_Channel:g_Admin_Chat;
static DCC_Channel:newbie_Chat;

static DCC_Guild:guildName;

static DCC_Role:xacthuc_role;
static DCC_Role:verifyRole;
static DCC_Role:adminRole;
static DCC_Role:trumRole;
static DCC_Role:advisorRole;
static DCC_Role:HoTroRole;


new Verify[999][21];
new online;






hook OnGameModeInit()
{
    SetTimer("BotStatus", 1000, true);
    newbie_Chat = DCC_FindChannelById("924865960136019978");
    g_Discord_Chat = DCC_FindChannelById("911640601307541504"); // Discord channel ID
    // g_Gang_Chat = DCC_FindChannelById("897654497046847489");
    g_Gang_Chat = DCC_FindChannelById("898388155793829888");
    guildName = DCC_FindGuildById("908339152750256128");
    adminRole = DCC_FindRoleById("908349795213656114");
    trumRole = DCC_FindRoleById("869252274566877224");
    succes_Chat = DCC_FindChannelById("915617630642130954");
    g_Verify_Chat = DCC_FindChannelById("911640601307541504");
    verifyRole = DCC_FindRoleById("924628730649915423");
    advisorRole = DCC_FindRoleById("908349805510664282"); 
    HoTroRole = DCC_FindRoleById("908349819104399360"); 
    xacthuc_role = DCC_FindRoleById("911639866423509052");
    g_Admin_Chat = DCC_FindChannelById("908349879250731018");
    
    return 1;
}


SendErrorEmbedMessage(DCC_Channel:channel, const error_message[])
{
    new DCC_Embed:embed = DCC_CreateEmbed("ERROR!");
    DCC_SetEmbedColor(embed, 0xFF0000);
    DCC_SetEmbedDescription(embed, error_message);
    DCC_SendChannelEmbedMessage(channel, embed);
    return 1;
}




SendSuccessEmbedMessage(DCC_Channel:channel, const Success_message[])
{
    new DCC_Embed:embed = DCC_CreateEmbed("SUCCESS:tick:");
    DCC_SetEmbedColor(embed, 0x00FF00);
    DCC_SetEmbedDescription(embed, Success_message);
    DCC_SendChannelEmbedMessage(channel, embed);
    return 1;
}



DCMD:verify(user, channel, params[])
{

    new bool:hasRole, bool: verifyhasRole;
    DCC_HasGuildMemberRole(guildName, user, adminRole, hasRole);
    DCC_HasGuildMemberRole(guildName, user, verifyRole, verifyhasRole);

    if(channel != g_Verify_Chat)
        return 1;

    if(verifyhasRole){
        new query[512], userIDstr[DCC_ID_SIZE];
        DCC_GetUserId(user, userIDstr, sizeof userIDstr);
        format(query,sizeof(query), "SELECT `Username` FROM `accounts` WHERE `dID`='%s'", userIDstr);
        mysql_function_query(MainPipeline, query, true, "OnCheckUsernameDiscord", "i", _:user);
        return 1;
    }
    new name[MAX_PLAYER_NAME];
    if(sscanf(params, "s[124]", name)) return DCC_SendChannelMessage(channel, "```SU DUNG: !verify [player name]```");
    new giveplayerid = ReturnUser(name);

    if (IsPlayerConnected(giveplayerid)) {
        new string[128];
        format(string,sizeof(string),"```Account %s dang online, vui long /q truoc khi verify !```", name);
        DCC_SendChannelMessage(channel, string);
        return 1;
    }
    else {
        new tmpName[24], query[512];

        mysql_escape_string(name, tmpName);


        new userid[21];
        DCC_GetUserId(user, userid,DCC_ID_SIZE);
        printf("Debug 1 : %s", userid);



        format(query,sizeof(query), "SELECT `dID` FROM `accounts` WHERE `Username`='%s'", tmpName);
        mysql_function_query(MainPipeline, query, true, "OnCheckVerifyAccountDiscord", "is", _:user, tmpName);

    }
    return 1;
}



forward OnCheckUsernameDiscord(DCC_User:user);
public OnCheckUsernameDiscord(DCC_User:user)
{
        new rows, fields;
        new string[256], sqlid[MAX_PLAYER_NAME];
        cache_get_data(rows, fields, MainPipeline);

        if(rows)
        {
            cache_get_field_content(0, "Username", sqlid, MainPipeline, MAX_PLAYER_NAME);
            new userID[DCC_ID_SIZE];
            DCC_GetUserId(user, userID, sizeof userID);
            format(string, sizeof(string), "<@%s> ơi ! Tài khoản discord của bạn đã được liên kết với account %s !.", userID, sqlid);
            DCC_SendChannelMessage(g_Verify_Chat, string);
        }
        return 1;
}

forward OnCheckVerifyAccountDiscord(DCC_User:user,name[]);
public OnCheckVerifyAccountDiscord(DCC_User:user,name[])
{
        new rows, fields;
        new string[256], sqlid[DCC_ID_SIZE], did;
        cache_get_data(rows, fields, MainPipeline);

        if(rows)
        {
            cache_get_field_content(0, "dID", sqlid, MainPipeline, 21);

            printf("dID: %d", did);

            if (strlen(sqlid) == 1)
            {
                new userIDstr[DCC_ID_SIZE], query[512];
                new MaKichHoat = random(999);
                DCC_GetUserId(user, userIDstr, sizeof userIDstr);
                printf("UserIdstr : %s", userIDstr);
                Verify[MaKichHoat] = userIDstr;
                format(query,sizeof(query),"UPDATE `accounts` SET `MaKichHoat`= %d WHERE `Username` = '%s'", MaKichHoat, name);
                mysql_function_query(MainPipeline, query, false, "OnVerifyAccountDiscord", "isd", _:user, name, MaKichHoat);
            } else {
                new DCC_User:userVerify;
                new namedis[DCC_USERNAME_SIZE];
                new userID[DCC_ID_SIZE];
                DCC_GetUserId(user, userID, sizeof userID);
                userVerify = DCC_FindUserById(sqlid);
                DCC_GetUserName(userVerify, namedis, sizeof namedis);
                format(string, sizeof(string), "<@%s> ơi ! Account %s đã được liên kết với Discord %s ! - Vui lòng nhập chính xác tên của bạn.", userID, name, namedis);
                DCC_SendChannelMessage(g_Verify_Chat, string);
            }

        } else {
            printf("not rows dID: %d", did);
            format(string,sizeof(string),"Không tìm thấy acc %s\n Vui lòng nhập đúng tên để tiến hành verify! ", name);
            SendErrorEmbedMessage(g_Verify_Chat, string);

        }
        return 1;
}



forward OnVerifyAccountDiscord(DCC_User:user,name[], MaKichHoat);
public OnVerifyAccountDiscord(DCC_User:user,name[], MaKichHoat)
{
    new string[256];
    new namedis[DCC_USERNAME_SIZE];

    DCC_GetUserName(user, namedis, sizeof namedis);

    if(mysql_affected_rows(MainPipeline)) {
        format(string, sizeof(string), "```Mã kích hoạt của bạn là %d, vui lòng đăng nhập vào game - /verify %d để liên kết với tài khoản discord.```", MaKichHoat, MaKichHoat);
        DCC_SendChannelMessage(g_Verify_Chat, string);

    }
    else {
        format(string, sizeof(string), "```Debug```");
        DCC_SendChannelMessage(g_Verify_Chat, string);
    }
    return 1;
}


CMD:verify(playerid, params[]) {
        new string[128], MaKichHoat;
        if(sscanf(params, "d", MaKichHoat)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /verify [MaKichHoat]");
        if (PlayerInfo[playerid][pMaKichHoat] == 0) return SendClientMessageEx(playerid, COLOR_GREY, "Ban chua thuc hien lien ket tren discord! - Vui long len discord !verify [ Ten tai khoan cua ban ] de thuc hien lien ket.");
        if (MaKichHoat != PlayerInfo[playerid][pMaKichHoat]) return SendClientMessageEx(playerid, COLOR_GREY, "Ma kich hoat discord cua ban sai! vui long thu lai");
        PlayerInfo[playerid][pdID] = Verify[MaKichHoat];
        new DCC_User:userVerify;
        userVerify = DCC_FindUserById(Verify[MaKichHoat]);
        DCC_AddGuildMemberRole(guildName, userVerify, verifyRole);
        SendClientMessageEx(playerid, COLOR_GREY, "Ban da kich hoat thanh cong Discord cua ban!");
        format(string, sizeof(string), "UPDATE `accounts` SET `dID` = %s WHERE `id` = '%d'", PlayerInfo[playerid][pdID], GetPlayerSQLId(playerid));
        mysql_function_query(MainPipeline, string, false, "OnQueryFinish", "ii", SENDDATA_THREAD, playerid);
        printf("Debug %s %s", Verify[MaKichHoat], PlayerInfo[playerid][pdID]);
        // Verify[MaKichHoat] = -1;
        DCC_RemoveGuildMemberRole(guildName, userVerify, xacthuc_role);
        new namedis[DCC_USERNAME_SIZE];
        DCC_GetUserName(userVerify, namedis, sizeof namedis);
        format(string, sizeof(string), "Người chơi %s đã verify thành công Account Discord %s.", GetPlayerNameEx(playerid), namedis);
		SendSuccessEmbedMessage(succes_Chat, string);
        return 1;
}




DCMD:banaccount(user, channel, params[])
{


    if(channel != g_Admin_Chat)
        return 1;


    new bool:hasRole;
    DCC_HasGuildMemberRole(guildName, user, adminRole, hasRole);

   	if(!hasRole){
        new string[128];
        format(string,sizeof(string),"Bạn không có quyền sử dụng lệnh này! ");
        SendErrorEmbedMessage(g_Admin_Chat, string);

        return 1;
    }

    new namedis[DCC_USERNAME_SIZE];
    DCC_GetUserName(user, namedis, sizeof namedis);

	new string[128], playername[MAX_PLAYER_NAME], reason[64];
	if(sscanf(params, "s[24]s[64]", playername, reason)) return DCC_SendChannelMessage(channel, "Sử Dụng: !banaccount [player name] [reason]");

    new giveplayerid = ReturnUser(playername);
	if(IsPlayerConnected(giveplayerid))
	{
			new playerip[32], query[128];
			GetPlayerIp(giveplayerid, playerip, sizeof(playerip));
			format(string, sizeof(string), "AdmCmd: %s(IP:%s) was banned boi %s, ly do: %s", GetPlayerNameEx(giveplayerid), playerip, namedis, reason);
			Log("logs/ban.log", string);
			SendSuccessEmbedMessage(g_Admin_Chat, "Người chơi online và đã bị banned!");
			format(string, sizeof(string), "AdmCmd: %s was banned boi %s, ly do: %s", GetPlayerNameEx(giveplayerid), namedis, reason);
			SendClientMessageToAllEx(COLOR_LIGHTRED, string);
			PlayerInfo[giveplayerid][pBanned] = 1;
			new ip[32];
			GetPlayerIp(giveplayerid,ip,sizeof(ip));

			format(query,sizeof(query), "SELECT `id`, `IP` FROM `accounts` WHERE `Username`='%s'", GetPlayerNameEx(giveplayerid));
		    mysql_function_query(MainPipeline, query, true, "OnBanIPDiscord", "s", namedis);

			MySQLBan(GetPlayerSQLId(giveplayerid),ip,reason,1,namedis);
			format(string, sizeof(string), "Banned account (%s)", GetPlayerNameEx(giveplayerid));
			SystemBan(giveplayerid, string);
			SetTimerEx("KickEx", 1000, 0, "i", giveplayerid);
	}
	else
	{
		new query[128], tmpName[24];

		mysql_escape_string(playername, tmpName);
		format(query, sizeof(query), "UPDATE `accounts` SET `Band`=1 WHERE `Username`='%s' AND `AdminLevel` < 2 AND `PermBand` < 3", tmpName);
		mysql_function_query(MainPipeline, query, false, "OnBanPlayerDiscord", "sss", tmpName, reason, namedis);

		format(query,sizeof(query), "SELECT `id`, `IP` FROM `accounts` WHERE `Username`='%s'", tmpName);
		mysql_function_query(MainPipeline, query, true, "OnBanIPDiscord", "s", namedis);

	}
	return 1;
}

forward OnBanPlayerDiscord(name[], reason[], namedis[]);
public OnBanPlayerDiscord(name[], reason[], namedis[])
{
	new string[128];
    if(mysql_affected_rows(MainPipeline)) {
        format(string, sizeof(string), "%s da cam tai khoan %s.", namedis, name);
        SendSuccessEmbedMessage(g_Admin_Chat, string);

        format(string, sizeof(string), "[Discord AdmCmd]: %s da cam tai khoan %s offline, ly do: %s", name, namedis, reason);
        Log("logs/ban.log", string);
        format(string, 128, "[Discord AdmCmd]: %s da cam tai khoan %s offline, ly do: %s", name, namedis, reason);
        ABroadCast(COLOR_LIGHTRED,string,2);
        print(string);
    }
    else {
        format(string, sizeof(string), "Da co van de say ra voi cam tai khoan %s's.", name);
        SendErrorEmbedMessage(g_Admin_Chat, string);
    }
	return 1;
}


forward OnBanIPDiscord(namedis[]);
public OnBanIPDiscord(namedis[])
{
    new rows, fields;
    new string[128], ip[32], sqlid[5], id;
    cache_get_data(rows, fields, MainPipeline);

    if(rows)
    {
        cache_get_field_content(0, "id", sqlid, MainPipeline); id = strval(sqlid);
        cache_get_field_content(0, "IP", ip, MainPipeline, 16);

        MySQLBan(id, ip, "Offline Banned (/banaccount)", 1, namedis);

        format(string, sizeof(string), "INSERT INTO `ip_bans` (`ip`, `date`, `reason`, `admin`) VALUES ('%s', NOW(), '%s', '%s')", ip, "Offline Banned", namedis);
        mysql_function_query(MainPipeline, string, false, "OnQueryFinish", "i", SENDDATA_THREAD);
    }
	return 1;
}




forward OnTakeAdminAccountDiscord(index[]);
public OnTakeAdminAccountDiscord(index[])
{
	new string[128];

	if(mysql_affected_rows(MainPipeline)) {
		format(string, sizeof(string), "Bạn đã make thành công Admin %s.", index);
		SendSuccessEmbedMessage(g_Admin_Chat, string);

		Log("logs/admin.log", string);
	}
	else {
		format(string, sizeof(string), "Đã có vấn đề xảy ra khi make Admin %s.", index);
		SendErrorEmbedMessage(g_Admin_Chat, string);
	}


	return 1;
}



DCMD:makeadmin(user, channel, params[])
{

    if(channel != g_Admin_Chat)
        return 1;


    new bool:hasRole;
    DCC_HasGuildMemberRole(guildName, user, adminRole, hasRole);

   	if(!hasRole){
        DCC_SendChannelMessage(channel, "Ban khong co quyen su dung lenh nay!");
        return 1;
    }
	else {

	new leveladmin,name[MAX_PLAYER_NAME];
	if(sscanf(params, "s[124]d", name,leveladmin)) return DCC_SendChannelMessage(channel, "SỬ DỤNG: !makeadmin [player name] [LEVEL]");

	new tmpName[24], query[512];

	mysql_escape_string(name, tmpName);

//	SetPVarString(playerid, "OnCrashZoneAccount", tmpName);


	format(query,sizeof(query),"UPDATE `accounts` SET `AdminLevel`=%d WHERE `Username` = '%s'", leveladmin, tmpName);
	mysql_function_query(MainPipeline, query, false, "OnTakeAdminAccountDiscord", "s", tmpName);
	return 1;
	}
}


/*stock GetPlayerNameIngame(DCC_User:user) {
    new userID[DCC_ID_SIZE], query[512];
    DCC_GetUserId(user, userID, sizeof userIDstr);


    format(query,sizeof(query), "SELECT `Username` FROM `accounts` WHERE `dID`='%s'", userID);
    mysql_function_query(MainPipeline, query, true, "OnCheckNickNameIngame", "is", _:user, tmpName);
}

forward OnCheckNickNameIngame(DCC_User:user);
public OnCheckNickNameIngame(DCC_User:user)
{
        new rows, fields;
        new string[256], iCoin[15],iCoin2, szQuery[128];
        cache_get_data(rows, fields, MainPipeline);

        if(rows)
        {
            cache_get_field_content(0, "iCoin", iCoin, MainPipeline); iCoin2 = strval(iCoin);

*/

DCMD:givemoney(user, channel, params[])
{

    if(channel != g_Admin_Chat)
        return 1;


    new bool:hasRole;
    DCC_HasGuildMemberRole(guildName, user, adminRole, hasRole);

   	if(!hasRole){
        DCC_SendChannelMessage(channel, "Ban khong co quyen su dung lenh nay!");
        return 1;
    }
	else {
        new namedis[DCC_USERNAME_SIZE];
        DCC_GetUserName(user, namedis, sizeof namedis);

	    new string[128], query[256], playername[MAX_PLAYER_NAME], amount;
	    if(sscanf(params, "s[24]d", playername, amount)) return DCC_SendChannelMessage(channel, "Sử Dụng: !givemoney [player name] [ammount]");

        new giveplayerid = ReturnUser(playername);
	    if(IsPlayerConnected(giveplayerid)) {
            GivePlayerCashEx(giveplayerid, 2, amount);
            format(string, sizeof(string), "Bạn đã give %d money cho người chơi %s.", amount, playername);
		    SendSuccessEmbedMessage(g_Admin_Chat, string);

            format(string, sizeof(string), "[Discord] [AdmCmd] : %s da give %d money cho %s", namedis, amount, GetPlayerNameEx(giveplayerid));
			SendClientMessageToAllEx(COLOR_LIGHTRED, string);
        }
        else {
            new type = 1;
            format(query,sizeof(query), "SELECT `Money` FROM `accounts` WHERE `Username`='%s'", playername);
            mysql_function_query(MainPipeline, query, true, "OnGiveMoneyDiscord", "dsd", amount, playername, type);
        }
    }
    return 1;
}


DCMD:checkmoney(user, channel, params[])
{

    if(channel != g_Admin_Chat)
        return 1;


    new bool:hasRole;
    DCC_HasGuildMemberRole(guildName, user, adminRole, hasRole);

    if(!hasRole){
        DCC_SendChannelMessage(channel, "Ban khong co quyen su dung lenh nay!");
        return 1;
    }
    else {
        new namedis[DCC_USERNAME_SIZE];
        DCC_GetUserName(user, namedis, sizeof namedis);

        new string[128], query[256], playername[MAX_PLAYER_NAME];
        if(sscanf(params, "s[24]", playername)) return DCC_SendChannelMessage(channel, "Sử Dụng: !checkmoney [player name]");

        new giveplayerid = ReturnUser(playername);
        if(IsPlayerConnected(giveplayerid)) {
            format(string, sizeof(string), "Người chơi %s hiện đang có số tiền là %d.", playername, PlayerInfo[giveplayerid][pCash]);
            DCC_SendChannelMessage(g_Admin_Chat, string);
        }
        else {
            new amount = 0;
            new type = 2;
            format(query,sizeof(query), "SELECT `Money` FROM `accounts` WHERE `Username`='%s'", playername);
            mysql_function_query(MainPipeline, query, true, "OnGiveMoneyDiscord", "dsd", amount, playername, type);
        }
    }
    return 1;
}




forward OnGiveMoneyDiscord(amount, playername[], type);
public OnGiveMoneyDiscord(amount, playername[], type)
{
        new rows, fields;
        new string[256], money[15],money2, szQuery[128];
        cache_get_data(rows, fields, MainPipeline);

        if(rows)
        {
            cache_get_field_content(0, "Money", money, MainPipeline); money2 = strval(money);
            money2 += amount;
            if(type == 1)
            {
                format(szQuery, sizeof(szQuery), "UPDATE `accounts` SET `Money`=%d WHERE `Username` = '%s'", money2, playername);
    			mysql_function_query(MainPipeline, szQuery, false, "OnFinishGiveMoneyDiscord", "ds", amount, playername);
            }
            else if(type == 2)
            {
                format(szQuery, sizeof(szQuery), "Người chơi %s hiện đang có số tiền là %d$", playername, money2);
                DCC_SendChannelMessage(g_Admin_Chat, szQuery);
            }
        } else {
            format(string,sizeof(string),"Không tìm thấy acc %s\n Vui lòng nhập đúng tên để tiến hành give money! ", playername);
            SendErrorEmbedMessage(g_Admin_Chat, string);

        }
        return 1;
}


forward OnFinishGiveMoneyDiscord(amount, playername[]);
public OnFinishGiveMoneyDiscord(amount, playername[])
{
    new string[128];


	if(mysql_affected_rows(MainPipeline)) {


    format(string, sizeof(string), "Bạn đã give thành công %d money cho người chơi %s", amount, playername);
    SendSuccessEmbedMessage(g_Admin_Chat, string);
    }
    else {
		format(string, sizeof(string), "Error?");
		SendErrorEmbedMessage(g_Admin_Chat, string);
	}
    return 1;
}



DCMD:giveicoin(user, channel, params[])
{

    if(channel != g_Admin_Chat)
        return 1;


    new bool:hasRole;
    DCC_HasGuildMemberRole(guildName, user, adminRole, hasRole);

   	if(!hasRole){
        DCC_SendChannelMessage(channel, "Ban khong co quyen su dung lenh nay!");
        return 1;
    }
	else {
        new namedis[DCC_USERNAME_SIZE];
        DCC_GetUserName(user, namedis, sizeof namedis);

	    new string[128], query[256], playername[MAX_PLAYER_NAME], amount;
	    if(sscanf(params, "s[24]d", playername, amount)) return DCC_SendChannelMessage(channel, "Sử Dụng: !givecredit [player name] [ammount]");

        new giveplayerid = ReturnUser(playername);
	    if(IsPlayerConnected(giveplayerid)) {
            PlayerInfo[giveplayerid][piCoin] += amount;
            format(string, sizeof(string), "Bạn đã give %d iCoin cho người chơi %s.", amount, playername);
		    SendSuccessEmbedMessage(g_Admin_Chat, string);

            format(string, sizeof(string), "[Discord] [AdmCmd] : %s da give %d iCoin cho %s", namedis, amount, GetPlayerNameEx(giveplayerid));
			SendClientMessageToAllEx(COLOR_LIGHTRED, string);
        }
        else {
            new type = 1;
            format(query,sizeof(query), "SELECT `iCoin` FROM `accounts` WHERE `Username`='%s'", playername);
            mysql_function_query(MainPipeline, query, true, "OnGiveiCoinDiscord", "dsd", amount, playername, type);
        }
    }
    return 1;
}



DCMD:checkicoin(user, channel, params[])
{

    if(channel != g_Admin_Chat)
        return 1;


    new bool:hasRole;
    DCC_HasGuildMemberRole(guildName, user, adminRole, hasRole);

    if(!hasRole){
        DCC_SendChannelMessage(channel, "Ban khong co quyen su dung lenh nay!");
        return 1;
    }
    else {
        new namedis[DCC_USERNAME_SIZE];
        DCC_GetUserName(user, namedis, sizeof namedis);

        new string[128], query[256], playername[MAX_PLAYER_NAME];
        if(sscanf(params, "s[24]", playername)) return DCC_SendChannelMessage(channel, "Sử Dụng: !checkicoin [player name]");

        new giveplayerid = ReturnUser(playername);
        if(IsPlayerConnected(giveplayerid)) {
            format(string, sizeof(string), "Người chơi %s hiện đang có số iCoin là %d.", playername, PlayerInfo[giveplayerid][piCoin]);
            DCC_SendChannelMessage(g_Admin_Chat, string);
        }
        else {
            new amount = 0;
            new type = 2;
            format(query,sizeof(query), "SELECT `iCoin` FROM `accounts` WHERE `Username`='%s'", playername);
            mysql_function_query(MainPipeline, query, true, "OnGiveiCoinDiscord", "dsd", amount, playername, type);
        }
    }
    return 1;
}


forward OnGiveiCoinDiscord(amount, playername[], type);
public OnGiveiCoinDiscord(amount, playername[], type)
{
        new rows, fields;
        new string[256], iCoin[15],iCoin2, szQuery[128];
        cache_get_data(rows, fields, MainPipeline);

        if(rows)
        {
            cache_get_field_content(0, "iCoin", iCoin, MainPipeline); iCoin2 = strval(iCoin);
            iCoin2 += amount;
            if (type == 1)
            {
                format(szQuery, sizeof(szQuery), "UPDATE `accounts` SET `iCoin`=%d WHERE `Username` = '%s'", iCoin2, playername);
			    mysql_function_query(MainPipeline, szQuery, false, "OnFinishGiveiCoinDiscord", "ds", amount, playername);
            }
            else if(type == 2)
            {
                format(szQuery, sizeof(szQuery), "Người chơi %s hiện đang có số iCoin là %d", playername, iCoin2);
                DCC_SendChannelMessage(g_Admin_Chat, szQuery);
            }
        } else {
            format(string,sizeof(string),"Không tìm thấy acc %s\n Vui lòng nhập đúng tên để tiến hành give iCoin! ", playername);
            SendErrorEmbedMessage(g_Admin_Chat, string);

        }
        return 1;
}


forward OnFinishGiveiCoinDiscord(amount, playername[]);
public OnFinishGiveiCoinDiscord(amount, playername[])
{
    new string[128];


	if(mysql_affected_rows(MainPipeline)) {


    format(string, sizeof(string), "Bạn đã give thành công %d iCoin cho người chơi %s", amount, playername);
    SendSuccessEmbedMessage(g_Admin_Chat, string);
    }
    else {
		format(string, sizeof(string), "Error?");
		SendErrorEmbedMessage(g_Admin_Chat, string);
	}
    return 1;
}



DCMD:prisonaccount(user, channel, params[])
{


    if(channel != g_Admin_Chat)
        return 1;


    new bool:hasRole;
    DCC_HasGuildMemberRole(guildName, user, adminRole, hasRole);

   	if(!hasRole){
        new string[128];
        format(string,sizeof(string),"Bạn không có quyền sử dụng lệnh này! ");
        SendErrorEmbedMessage(g_Admin_Chat, string);

        return 1;
    }
	else {
        new string[128], name[MAX_PLAYER_NAME], minutes, reason[64];
		if(sscanf(params, "s[24]ds[64]", name, minutes, reason)) return DCC_SendChannelMessage(channel, "Sử Dụng: !prisonaccount [player name] [minutes] [reason]");
		new giveplayerid = ReturnUser(name);
		new namedis[DCC_USERNAME_SIZE];
		DCC_GetUserName(user, namedis, sizeof namedis);
 		if (IsPlayerConnected(giveplayerid))
 		{
			SetPlayerArmedWeapon(giveplayerid, 0);

			if(GetPVarInt(giveplayerid, "IsInArena") >= 0)
			{
				LeavePaintballArena(giveplayerid, GetPVarInt(giveplayerid, "IsInArena"));
			}
			GameTextForPlayer(giveplayerid, "~w~Welcome to ~n~~r~Fort DeMorgan", 5000, 3);
			ResetPlayerWeaponsEx(giveplayerid);
			format(string, sizeof(string), "[Discord AdmCmd]: %s has been prisoned boi %s, ly do: %s", GetPlayerNameEx(giveplayerid), namedis, reason);
			Log("logs/admin.log", string);
		//	SendClientMessageEx(playerid, COLOR_WHITE, "The person is online and has been prisoned!");
		    SendSuccessEmbedMessage(g_Admin_Chat, "Nguoi choi dang online va da duoc prison");
			format(string, sizeof(string), "[Discord] [AdmCmd] : %s has been prisoned boi %s, ly do: %s", GetPlayerNameEx(giveplayerid), namedis, reason);
			SendClientMessageToAllEx(COLOR_LIGHTRED, string);
			PlayerInfo[giveplayerid][pWantedLevel] = 0;
			SetPlayerWantedLevel(giveplayerid, 0);
			PlayerInfo[giveplayerid][pJailTime] = minutes*60;
			SetPVarInt(giveplayerid, "_rAppeal", gettime()+60);
			format(PlayerInfo[giveplayerid][pPrisonReason], 128, "[OOC][PRISON] %s", reason);
			format(PlayerInfo[giveplayerid][pPrisonedBy], MAX_PLAYER_NAME, "%s", namedis);
			PhoneOnline[giveplayerid] = 1;
			SetPlayerInterior(giveplayerid, 1);
			PlayerInfo[giveplayerid][pInt] = 1;
			new rand = random(sizeof(OOCPrisonSpawns));
			Streamer_UpdateEx(giveplayerid, OOCPrisonSpawns[rand][0], OOCPrisonSpawns[rand][1], OOCPrisonSpawns[rand][2]);
			SetPlayerPos(giveplayerid, OOCPrisonSpawns[rand][0], OOCPrisonSpawns[rand][1], OOCPrisonSpawns[rand][2]);
			SetPlayerSkin(giveplayerid, 50);
			SetPlayerColor(giveplayerid, TEAM_APRISON_COLOR);
			Player_StreamPrep(giveplayerid, OOCPrisonSpawns[rand][0], OOCPrisonSpawns[rand][1], OOCPrisonSpawns[rand][2], FREEZE_TIME);
    		return 1;
 		}
 		else
 		{
			new tmpName[24], tmpPrisonedBy[24], tmpPrisonReason[64], query[512];
			format(tmpPrisonReason, 64, "[OOC][JAILACC] %s", reason);
			format(tmpPrisonedBy, 24, "%s", namedis);
			mysql_escape_string(name, tmpName);
			mysql_escape_string(tmpPrisonReason, tmpPrisonReason);


			format(query,sizeof(query),"UPDATE `accounts` SET `PrisonReason` = '%s', `PrisonedBy` = '%s', `JailTime` = %d WHERE `Username` = '%s'", tmpPrisonReason, tmpPrisonedBy, minutes*60, tmpName);
			mysql_function_query(MainPipeline, query, false, "OnJailAccountDiscord", "ss", tmpName, tmpPrisonReason);
		}
	}
	return 1;
}

forward OnJailAccountDiscord(name[],reason[]);
public OnJailAccountDiscord(name[],reason[])
{
	new string[124];

	if(mysql_affected_rows(MainPipeline)) {
		format(string, sizeof(string), "Bạn đã bỏ tù thành công người chơi %s's .", name);
		SendSuccessEmbedMessage(g_Admin_Chat, string);

		//format(string, sizeof(string), "AdmCmd: %s da bi bo tu offline boi %s, ly do: %s", name, GetPlayerNameEx(index), reason);
		//Log("logs/admin.log", string);
	}
	else {
		format(string, sizeof(string), "Đã có vấn đề xảy ra khi bỏ tù %s's.", name);
		SendErrorEmbedMessage(g_Admin_Chat, string);
	}


	return 1;
}



Group_ListGroupsDiscord() {

	new
        DCC_Embed:embed = DCC_CreateEmbed(),
		szDialogStr[MAX_GROUPS * (GROUP_MAX_NAME_LEN + 106)],
		iCount;

	while(iCount < MAX_GROUPS) {
		if(arrGroupData[iCount][g_szGroupName][0])
			format(szDialogStr, sizeof szDialogStr, "%s\n(%i) %s", szDialogStr, iCount, arrGroupData[iCount][g_szGroupName]);

		else
			format(szDialogStr, sizeof szDialogStr, "%s\n(%i) (Trống)", szDialogStr, iCount);

		++iCount;
	}
    format(szDialogStr, sizeof szDialogStr, "%s\nTrên đây là ID Group\n Vui lòng sử dụng !makeleader [playername] [IDGroup]", szDialogStr);
	new diagTitle[64];
	format(diagTitle, sizeof(diagTitle), "Group List");
    DCC_SetEmbedTitle(embed, diagTitle);
	DCC_SetEmbedDescription(embed, szDialogStr);
    DCC_SendChannelEmbedMessage(g_Admin_Chat, embed);
    return 1;
}





DCMD:makeleader(user, channel, params[])
{
    if(channel != g_Admin_Chat)
    return 1;

    new bool:hasRole;
    DCC_HasGuildMemberRole(guildName, user, adminRole, hasRole);

   	if(!hasRole)
    {
        new string[128];
        format(string,sizeof(string),"Bạn không có quyền sử dụng lệnh này! ");
        SendErrorEmbedMessage(g_Admin_Chat, string);

        return 1;
    }
	else {
        new name[MAX_PLAYER_NAME], IDGroup;
		if(sscanf(params, "s[24]d", name, IDGroup)) {
            DCC_SendChannelMessage(channel, "Sử Dụng: !makeleader [player name] [iD Group]");
            return Group_ListGroupsDiscord();
        }
        if(IDGroup >= MAX_GROUPS) return SendErrorEmbedMessage(g_Admin_Chat, "Không tìm thấy ID Group!");
        new string[128],giveplayerid = ReturnUser(name);
        if(IsPlayerConnected(giveplayerid)) {


            PlayerInfo[giveplayerid][pLeader] = IDGroup;
			PlayerInfo[giveplayerid][pMember] = IDGroup;
			PlayerInfo[giveplayerid][pRank] = Group_GetMaxRank(IDGroup);
			PlayerInfo[giveplayerid][pDivision] = -1;
			PlayerInfo[giveplayerid][pFMember] = INVALID_FAMILY_ID;


			format(string, sizeof(string), "You have been made the leader of the %s by Administrator Discord.", arrGroupData[IDGroup][g_szGroupName]);
			SendClientMessageEx(giveplayerid, COLOR_LIGHTBLUE, string);


            format(string, sizeof(string), "Bạn đã make leader faction %s thành công cho người chơi %s.", arrGroupData[IDGroup][g_szGroupName], name);
		    SendSuccessEmbedMessage(g_Admin_Chat, string);

        }
        else {
            new query[256];

		    format(query,sizeof(query),"UPDATE `accounts` SET `Leader` = %d, `Member` = %d, `Rank` = %d, `FMember` = 255, `Division` = -1 WHERE `Username` = '%s'", IDGroup, IDGroup, Group_GetMaxRank(IDGroup), name);
		    mysql_function_query(MainPipeline, query, true, "OnMakeLeaderDiscord", "ds", IDGroup, name);
        }
    }
    return 1;
}

forward OnMakeLeaderDiscord(IDGroup, playername[]);
public OnMakeLeaderDiscord(IDGroup, playername[])
{
    new string[128];


	if(mysql_affected_rows(MainPipeline)) {


    format(string, sizeof(string), "Bạn đã make leader faction %s thành công cho người chơi %s.", arrGroupData[IDGroup][g_szGroupName], playername);
    SendSuccessEmbedMessage(g_Admin_Chat, string);
    }
    else {
		format(string, sizeof(string), "Không tìm thấy người chơi - Vui lòng nhập đúng tên");
		SendErrorEmbedMessage(g_Admin_Chat, string);
	}
    return 1;
}

DCMD:online(user, channel, params[])
{
        new bool:hasRole;
        DCC_HasGuildMemberRole(guildName, user, verifyRole, hasRole);

   	    if(!hasRole){
            new string[128];
            format(string,sizeof(string),"Bạn cần xác thực để sử dụng câu lệnh này T-T");
            SendErrorEmbedMessage(channel, string);
            return 1;
        }
        new count;
        new DCC_Embed:embed = DCC_CreateEmbed("TSPCity.Net", "Danh Sách Người Chơi Đang Online", .thumbnail_url="https://scontent.fsgn2-3.fna.fbcdn.net/v/t1.15752-9/263314580_297637995578592_4229045674950183251_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=ae9488&_nc_ohc=YWeV35eh8gAAX9nCBrW&_nc_ht=scontent.fsgn2-3.fna&oh=c9d5975ef6cbd8f73528b818295d158a&oe=61CDFF98");
        for(new i = 0;i < MAX_PLAYERS; i++)
        {
            if(IsPlayerConnected(i))
            {
                new name[MAX_PLAYER_NAME];
                GetPlayerName(i, name, MAX_PLAYER_NAME);
                new str[50], str1[50];
                format(str, sizeof str, "ID: %d - Name : %s", i, name);
                format(str1, sizeof str1, "Người chơi (%d)", count+1);
                DCC_AddEmbedField(embed, str1, str, false);
                count++;
            }
        }
        new str[128];
        format(str, sizeof str, "Hiện tại đang có %d người chơi đang online", count);
        DCC_SendChannelEmbedMessage(channel, embed, str);
        return 1;
}



hook OnPlayerConnect(playerid)
{
	online++;


	return 1;

}

hook OnPlayerDisconnect(playerid, reason)
{
	online--;
	new reasontext[526], str[128];
	switch(reason)
	{
	    case 0: reasontext = "Timeout/Crash";
	    case 1: reasontext = "Quit";
	    case 2: reasontext = "Kick/Ban";
	}

    format(str, sizeof str, "```Người chơi %s đã rời khỏi server (%s) - Hiện tại đang có %d người chơi online```", GetPlayerNameEx(playerid), reasontext, online);
    DCC_SendChannelMessage(g_Admin_Chat, str);

	return 1;
}


stock ShowInventoryDiscord(playerid,targetid)
{
	if(IsPlayerConnected(targetid))
	{
		new resultline[1024], header[65], org[128], employer[GROUP_MAX_NAME_LEN], rank[GROUP_MAX_RANK_LEN], division[GROUP_MAX_DIV_LEN];
		new sext[16], std[20], nation[24], biz[128];
		if(PlayerInfo[targetid][pSex] == 1) { sext = "Male"; } else { sext = "Female"; }
		switch(GetPVarInt(targetid, "STD"))
		{
		    case 1: std = "Chlamydia";
		    case 2: std = "Gonorrhea";
		    case 3: std = "Syphilis";
		    default: std = "None";
		}
		if(PlayerInfo[targetid][pMember] != INVALID_GROUP_ID)
		{
			GetPlayerGroupInfo(targetid, rank, division, employer);
			format(org, sizeof(org), "Faction: %s (%d)\nRank: %s (%d)\nDivision: %s (%d)\n", employer, PlayerInfo[targetid][pMember], rank, PlayerInfo[targetid][pRank], division, PlayerInfo[targetid][pDivision]);
		}
		else if(PlayerInfo[targetid][pFMember] < INVALID_FAMILY_ID)
		{
			if(0 <= PlayerInfo[targetid][pDivision] < 5) format(division, sizeof(division), "%s", FamilyDivisionInfo[PlayerInfo[targetid][pFMember]][PlayerInfo[targetid][pDivision]]);
			else division = "None";
			format(org, sizeof(org), "Family: %s (%d)\nRank: %s (%d)\nDivision: %s (%d)\n", FamilyInfo[PlayerInfo[targetid][pFMember]][FamilyName], PlayerInfo[targetid][pFMember], FamilyRankInfo[PlayerInfo[targetid][pFMember]][PlayerInfo[targetid][pRank]], PlayerInfo[targetid][pRank], division, PlayerInfo[targetid][pDivision]);
		}
		else format(org, sizeof(org), "");
		if(PlayerInfo[targetid][pBusiness] != INVALID_BUSINESS_ID) format(biz, sizeof(biz), "Business: %s (%d)\nRank: %s (%d)\n", Businesses[PlayerInfo[targetid][pBusiness]][bName], PlayerInfo[targetid][pBusiness], GetBusinessRankName(PlayerInfo[targetid][pBusinessRank]), PlayerInfo[targetid][pBusinessRank]);
		else format(biz, sizeof(biz), "");
		switch(PlayerInfo[targetid][pNation])
		{
			case 0: nation = "San Andreas";
			case 1: nation = "Tierra Robada";
		}
		new insur[20];
		switch(PlayerInfo[targetid][pInsurance])
		{
			case 1: insur = "County General";
			case 2: insur = "All Saints";
			case 3: insur = "Montgomery";
			case 4: insur = "Fort Carson";
			case 5: insur = "San Fierro";
			case 6: insur = "Club VIP";
			case 7: insur = "Home Care";
			case 9: insur = "El Quebrados";
			case 10: insur = "SAAS Base Hospital";
			case 11: insur = "Las Venturas";
			case 12: insur = "Famed Room";
			case 13: insur = "DeMorgan";
			case 14: insur = "Bayside";
			default: insur = "None";
		}
		new staffrank[64];
		if(PlayerInfo[targetid][pHelper] > 0 || PlayerInfo[targetid][pAdmin] == 1 || (PlayerInfo[targetid][pAdmin] > 1 && PlayerInfo[playerid][pAdmin] <= PlayerInfo[targetid][pAdmin])) format(staffrank, sizeof(staffrank), "%s", GetStaffRank(targetid));
		else staffrank = "";
		new drank[64];
		if(PlayerInfo[targetid][pDonateRank] > 0)
		{
			switch(PlayerInfo[targetid][pDonateRank])
			{
				case 1: drank = "Bronze VIP\n";
				case 2: drank = "Silver VIP\n";
				case 3: drank = "Gold VIP{FFFFFF\n";
				case 4: drank = "Platinum VIP\n";
				case 5: drank = "VIP Moderator\n";
			}
		}
		new famedrank[64];
		if(PlayerInfo[targetid][pFamed] > 0)
		{
			switch(PlayerInfo[targetid][pFamed])
			{
				case 1: famedrank = "Old-School\n";
				case 2: famedrank = "Chartered Old-School\n";
				case 3: famedrank = "Famed\n";
				case 4: famedrank = "Famed Commissioner\n";
				case 5: famedrank = "Famed Moderator\n";
				case 6: famedrank = "Famed Vice-Chairman\n";
				case 7: famedrank = "Famed Chairman\n";
			}
		}
		if(PlayerInfo[targetid][pMarriedID] == -1) format(PlayerInfo[targetid][pMarriedName], MAX_PLAYER_NAME, "Nobody");
		new nxtlevel = PlayerInfo[targetid][pLevel]+1;
		//new expamount = nxtlevel*4;
		new costlevel = nxtlevel*25000;
		new exp = ((50 * (PlayerInfo[targetid][pLevel]) * (PlayerInfo[targetid][pLevel]) * (PlayerInfo[targetid][pLevel]) - 150 * (PlayerInfo[targetid][pLevel]) * (PlayerInfo[targetid][pLevel]) + 600 * (PlayerInfo[targetid][pLevel])) / 5) - PlayerInfo[playerid][pXP];
		new Float:health, Float:armor;
		GetPlayerHealth(targetid, health);
		GetPlayerArmour(targetid, armor);
		new Float:px,Float:py,Float:pz;
		GetPlayerPos(targetid, px, py, pz);
		new zone[MAX_ZONE_NAME];
		GetPlayer3DZone(targetid, zone, sizeof(zone));

		format(header, sizeof(header), "Thong tin cua %s", GetPlayerNameEx(targetid));
		format(resultline, sizeof(resultline),"%s\n\
		%s\
		%s\
		Giay Phep Vu Khi:%d\n\
		Can Cuoc Cong Dan:%d\n\
		Cap do: %d\n\
		Gioi tinh: %s\n\
		Ngay sinh: %s\n\
		Vi tri hien tai: %s (%0.2f, %0.2f, %0.2f)\n\
		Da ket hon: %s\n\
		Mau: %.1f\n\
		Giap: %.1f\n\
		Trang thai: %d\n\
		Fitness: %d\n\
		Gio da choi: %s\n\
		Diem nang cap: %s\n\
		XP can thiet de nang cap: %s va $%s)\n\
		Quoc tich: %s\n\
		%s\
		%s\
		Cong viec: %s (Cap do: %d)\n\
		Cong viec 2: %s (Cap do: %d)\n\
		Bao hiem: %s",
		staffrank,
		famedrank,
		drank,
		PlayerInfo[targetid][pGiayPhepVuKhi],
		PlayerInfo[targetid][pCMND],
		PlayerInfo[targetid][pLevel],
		sext,
		PlayerInfo[targetid][pBirthDate],
		zone, px, py, pz,
		PlayerInfo[targetid][pMarriedName],
		health,
		armor,
		PlayerInfo[targetid][pHunger],
		PlayerInfo[targetid][pFitness],
		number_format(PlayerInfo[targetid][pConnectHours]),
		number_format(PlayerInfo[targetid][gPupgrade]),
		number_format(CheckXP(exp)),
		number_format(costlevel),
		nation,
		org,
		biz,
		GetJobName(PlayerInfo[targetid][pJob]),
		GetJobLevel(targetid, PlayerInfo[targetid][pJob]),
		GetJobName(PlayerInfo[targetid][pJob2]),
		GetJobLevel(targetid, PlayerInfo[targetid][pJob2]),
		insur);

        new DCC_Embed:embed = DCC_CreateEmbed("TSPCity.Net", "Player Connect", .thumbnail_url="https://scontent.fsgn2-3.fna.fbcdn.net/v/t1.15752-9/263314580_297637995578592_4229045674950183251_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=ae9488&_nc_ohc=YWeV35eh8gAAX9nCBrW&_nc_ht=scontent.fsgn2-3.fna&oh=c9d5975ef6cbd8f73528b818295d158a&oe=61CDFF98");

        DCC_SetEmbedTitle(embed, header);
        DCC_SetEmbedDescription(embed, resultline);

        new str[128];
        format(str, sizeof str, "```Người chơi %s đã kết nối vào server - Hiện tại đang có %d người chơi online```", GetPlayerNameEx(playerid), online);
        DCC_SendChannelEmbedMessage(g_Admin_Chat, embed, str);
    }
	return 1;
}


DCMD:newb(user, channel, params[])
{
    if(channel != newbie_Chat)
        return 1;


    new bool:hasRole1, bool:hasRole2;
    DCC_HasGuildMemberRole(guildName, user, HoTroRole, hasRole1);
    DCC_HasGuildMemberRole(guildName, user, advisorRole, hasRole2);

    if((hasRole1) || (hasRole2)){
        new string[128];
        new namedis[DCC_USERNAME_SIZE];
        DCC_GetUserName(user, namedis, sizeof namedis);
        if(hasRole2) format(string, sizeof(string), "** Advisor %s: %s", namedis, params);
        else if(hasRole1) format(string, sizeof(string), "** Admin %s: %s", namedis, params);
        foreach(new n: Player)
        {
            if (gNewbie[n]==0)
            {
                SendClientMessageEx(n, COLOR_NEWBIE, string);
            }
        }
    }
    else {
        new string[128];
        format(string,sizeof(string),"Bạn không có quyền sử dụng lệnh này! ");
        SendErrorEmbedMessage(newbie_Chat, string);
    }
    return 1;
}


CMD:newb(playerid, params[])
{
    if(gPlayerLogged{playerid} == 0) return SendClientMessageEx(playerid, COLOR_GREY, "Ban chua dang nhap.");
    if(PlayerInfo[playerid][pTut] == 0) return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong the lam dieu nay bay gio.");
    if((nonewbie) && PlayerInfo[playerid][pAdmin] < 2) return SendClientMessageEx(playerid, COLOR_GRAD2, "Kenh hoi dap newbie dang tat!");
    if(PlayerInfo[playerid][pNMute] == 1) return SendClientMessageEx(playerid, COLOR_GREY, "Ban da bi cam noi chuyen tren kenh hoi dap.");
    if(gNewbie[playerid] == 1) return SendClientMessageEx(playerid, COLOR_GREY, "Ban da tat kenh hoi dap, /tognewbie de mo!");
    new ip[32];
    new string[128];
	GetPlayerIp(playerid, ip, sizeof(ip));
    if(strfind(params, "nhu cc", true) != -1) {
	    SendClientMessageEx(playerid, COLOR_RED, "Khong duoc dung tu ngu nay.");
	    format(string, sizeof(string), "{AA3333}[Spam Kenh Newbie]{ffffff} %s (IP:%s) {ffffff}da nhap noi dung : {ffff00}%s.", GetPlayerNameEx(playerid), ip, params);
		ABroadCast(COLOR_YELLOW, string, 2);
		return 0;
	}
	if(strfind(params, "sv", true) != -1) {
	    SendClientMessageEx(playerid, COLOR_RED, "Khong duoc dung tu ngu nay.");
	    format(string, sizeof(string), "{AA3333}[Spam Kenh Newbie]{ffffff} %s (IP:%s) {ffffff}da nhap noi dung : {ffff00}%s.", GetPlayerNameEx(playerid), ip, params);
		ABroadCast(COLOR_YELLOW, string, 2);
		return 0;
	}
	if(strfind(params, "gta", true) != -1) {
	    SendClientMessageEx(playerid, COLOR_RED, "Khong duoc dung tu ngu nay.");
	    format(string, sizeof(string), "{AA3333}[Spam Kenh Newbie]{ffffff} %s (IP:%s) {ffffff}da nhap noi dung : {ffff00}%s.", GetPlayerNameEx(playerid), ip, params);
		return 0;
	}
	if(strfind(params, "di me may", true) != -1) {
	    SendClientMessageEx(playerid, COLOR_RED, "Khong duoc dung tu ngu nay.");
	    format(string, sizeof(string), "{AA3333}[Spam Kenh Newbie]{ffffff} %s (IP:%s) {ffffff}da nhap noi dung : {ffff00}%s.", GetPlayerNameEx(playerid), ip, params);
		ABroadCast(COLOR_YELLOW, string, 2);
		return 0;
	}
	if(strfind(params, "dmm", true) != -1) {
	    SendClientMessageEx(playerid, COLOR_RED, "Khong duoc dung tu ngu nay.");
	    format(string, sizeof(string), "{AA3333}[Spam Kenh Newbie]{ffffff} %s (IP:%s) {ffffff}da nhap noi dung : {ffff00}%s.", GetPlayerNameEx(playerid), ip, params);
		ABroadCast(COLOR_YELLOW, string, 2);
		return 0;
	}
	if(strfind(params, "clmm", true) != -1) {
	    SendClientMessageEx(playerid, COLOR_RED, "Khong duoc dung tu ngu nay.");
	    format(string, sizeof(string), "{AA3333}[Spam Kenh Newbie]{ffffff} %s (IP:%s) {ffffff}da nhap noi dung : {ffff00}%s.", GetPlayerNameEx(playerid), ip, params);
		ABroadCast(COLOR_YELLOW, string, 2);
		return 0;
	}
	if(strfind(params, "cc", true) != -1) {
	    SendClientMessageEx(playerid, COLOR_RED, "Khong duoc dung tu ngu nay.");
	    format(string, sizeof(string), "{AA3333}[Spam Kenh Newbie]{ffffff} %s (IP:%s) {ffffff}da nhap noi dung : {ffff00}%s.", GetPlayerNameEx(playerid), ip, params);
		ABroadCast(COLOR_YELLOW, string, 2);
		return 0;
	}
	if(strfind(params, "ngu nhu cho", true) != -1) {
	    SendClientMessageEx(playerid, COLOR_RED, "Khong duoc dung tu ngu nay.");
	    format(string, sizeof(string), "{AA3333}[Spam Kenh Newbie]{ffffff} %s (IP:%s) {ffffff}da nhap noi dung : {ffff00}%s.", GetPlayerNameEx(playerid), ip, params);
		ABroadCast(COLOR_YELLOW, string, 2);
		return 0;
	}
	if(strfind(params, "cmm", true) != -1) {
	    SendClientMessageEx(playerid, COLOR_RED, "Khong duoc dung tu ngu nay.");
     	format(string, sizeof(string), "{AA3333}[Spam Kenh Newbie]{ffffff} %s (IP:%s) {ffffff}da nhap noi dung : {ffff00}%s.", GetPlayerNameEx(playerid), ip, params);
		ABroadCast(COLOR_YELLOW, string, 2);
		return 0;
	}
	if(strfind(params, "con me may", true) != -1) {
	    SendClientMessageEx(playerid, COLOR_RED, "Khong duoc dung tu ngu nay.");
	    format(string, sizeof(string), "{AA3333}[Spam Kenh Newbie]{ffffff} %s (IP:%s) {ffffff}da nhap noi dung : {ffff00}%s.", GetPlayerNameEx(playerid), ip, params);
		ABroadCast(COLOR_YELLOW, string, 2);
		return 0;
	}
	if(strfind(params, "sv rac", true) != -1) {
	    SendClientMessageEx(playerid, COLOR_RED, "Khong duoc dung tu ngu nay.");
	    format(string, sizeof(string), "{AA3333}[Spam Kenh Newbie]{ffffff} %s (IP:%s) {ffffff}da nhap noi dung : {ffff00}%s.", GetPlayerNameEx(playerid), ip, params);
		ABroadCast(COLOR_YELLOW, string, 2);
		return 0;
	}
	if(strfind(params, ".", true) != -1) {
	    SendClientMessageEx(playerid, COLOR_RED, "Khong duoc dung tu ngu nay.");
	    format(string, sizeof(string), "{AA3333}[Spam Kenh Newbie]{ffffff} %s (IP:%s) {ffffff}da nhap noi dung : {ffff00}%s.", GetPlayerNameEx(playerid), ip, params);
		ABroadCast(COLOR_YELLOW, string, 2);
		return 0;
	}
	if(strfind(params, "-", true) != -1) {
	    SendClientMessageEx(playerid, COLOR_RED, "Khong duoc dung tu ngu nay.");
	    format(string, sizeof(string), "{AA3333}[Spam Kenh Newbie]{ffffff} %s (IP:%s) {ffffff}da nhap noi dung : {ffff00}%s.", GetPlayerNameEx(playerid), ip, params);
		ABroadCast(COLOR_YELLOW, string, 2);
		return 0;
	}
    if(gettime() < NewbieTimer[playerid])
    {
        format(string, sizeof(string), "Ban phai cho %d giay de tiep tuc hoi dap tren kenh nay.", NewbieTimer[playerid]-gettime());
        SendClientMessageEx(playerid, COLOR_GREY, string);
        return 1;
    }

    if(isnull(params)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: (/newb)ie [noi dung]");

    if(PlayerInfo[playerid][pHelper] < 1 && PlayerInfo[playerid][pAdmin] < 1)
    {
        NewbieTimer[playerid] = gettime()+60;
        format(string, sizeof(string), "{7DAEFF}** [Thanh Vien] %s [%d] da noi: %s", GetPlayerNameEx(playerid), playerid, params);
	}
    if(PlayerInfo[playerid][pHelper] == 1 && PlayerInfo[playerid][pAdmin] < 2)
    {
        NewbieTimer[playerid] = gettime()+30;
        format(string, sizeof(string), "{f0e68c}** [Helper] %s [%d] tra loi: %s", GetPlayerNameEx(playerid), playerid, params);
		ReportCount[playerid]++;
        ReportHourCount[playerid]++;
        AddCAReportToken(playerid); // Advisor Tokens
    }
    if(PlayerInfo[playerid][pAdmin] == 1)
    {
        NewbieTimer[playerid] = gettime()+30;
        if(PlayerInfo[playerid][pSMod] == 1) format(string, sizeof(string), "** Senior Moderator %s: %s", GetPlayerNameEx(playerid), params);
        else format(string, sizeof(string), "** Moderator %s: %s", GetPlayerNameEx(playerid), params);
    }
    if(PlayerInfo[playerid][pHelper] == 2 && PlayerInfo[playerid][pAdmin] < 2)
    {
        NewbieTimer[playerid] = gettime()+10;
        format(string, sizeof(string), "{6495ed}**[Community Advisor] %s [%d] tra loi: %s", GetPlayerNameEx(playerid), playerid, params);
	}
    if(PlayerInfo[playerid][pHelper] == 3 && PlayerInfo[playerid][pAdmin] < 2)
    {
        NewbieTimer[playerid] = gettime()+10;
        format(string, sizeof(string), "{6495ed}** {FFCC99}[Senior Advisor] %s [%d] tra loi: %s", GetPlayerNameEx(playerid), playerid, params);
	}
    if(PlayerInfo[playerid][pHelper] >= 4 && PlayerInfo[playerid][pAdmin] < 2)
    {
        NewbieTimer[playerid] = gettime()+10;
        format(string, sizeof(string), "{6495ed}** {98fb98}[Chief Advisor] %s [%d] tra loi: %s", GetPlayerNameEx(playerid), playerid, params);
	}
    if(PlayerInfo[playerid][pAdmin] >= 2) format(string, sizeof(string), "**{adff2f} [BQT] %s tra loi: %s", GetPlayerNameEx(playerid), params);
	foreach(new n: Player)
    {
        if (gNewbie[n]==0)
        {
            SendClientMessageEx(n, COLOR_NEWBIE, string);
        }
    }
    new discordstr[128];
    format(discordstr, sizeof(discordstr), "**[Newbie][InGame]**: %s", string);
    DCC_SendChannelMessage(newbie_Chat, discordstr);
    return 1;
}



DCMD:checktimeadmin(user, channel, params[])
{
    if(channel != g_Admin_Chat)
        return 1;


    new bool:hasRole;
    DCC_HasGuildMemberRole(guildName, user, adminRole, hasRole);

    if(!hasRole){
        new string[128];
        format(string,sizeof(string),"Bạn không có quyền sử dụng lệnh này! ");
        SendErrorEmbedMessage(g_Admin_Chat, string);

        return 1;
    }
    else {
        GetAdminDiscord(INVALID_PLAYER_ID);
    }
    return 1;
}
stock GetAdminDiscord(playerid)
{
    new query[256];
    format(query, sizeof(query), "SELECT `Username`, `AdminLevel`, `ATime` FROM `accounts`  WHERE `AdminLevel` >= 2 ORDER BY `AdminLevel` DESC LIMIT 5000");
    mysql_function_query(MainPipeline, query, true, "LoadAdminDiscord", "i", playerid);
}


forward LoadAdminDiscord(playerid);
public LoadAdminDiscord(playerid)
{
    new id, sender[MAX_PLAYER_NAME], sDate[20], rows, fields;
    new gString[4000];
    new string2[4000];

    new DCC_Embed:embed = DCC_CreateEmbed();
    new name[128];
    cache_get_data(rows, fields, MainPipeline);
    if(rows)
    {
        for(new i; i < rows; i++)
        {
            id ++;
            cache_get_field_content(i, "Username", sender, MainPipeline, MAX_PLAYER_NAME);
            cache_get_field_content(i, "AdminLevel", sDate, MainPipeline, sizeof(sDate));
            cache_get_field_content(i, "ATime", name, MainPipeline, sizeof(name)); 
            new datelog = strval(name);
            new giveplayerid = ReturnUser(sender);
            new check;
            if(IsPlayerConnected(giveplayerid)) check = 1; else check =0;
            if(check == 1)
            {
                format(gString, sizeof(gString), "%s\n**%s**     |**%s**     |**%s**     |**Online**", gString, sender, sDate, TimeConvert(PlayerInfo[giveplayerid][pATime] + (gettime() - AdminTime[giveplayerid])));
            }
            if(check == 0)
            {
                format(gString, sizeof(gString), "%s\n**%s**     |**%s**     |**%s**     |**Offline**", gString, sender, sDate, TimeConvert(datelog));
            }
            //format(gString, sizeof(gString), "%s\n%d\t%s\t%s\t%s", gString, id, sender, sDate, GetNameOnline(check));
            format(string2,sizeof(string2),"Tên Admin     |Admin Level     |Thời Gian     |Tình Trạng \n%s",gString);
            //ShowPlayerDialog(playerid, DIALOG_XEMTHANHVIEN1, DIALOG_STYLE_TABLIST_HEADERS, "Thoi Gian Lam Viec Cua Admin", string2,"Ok", "");
            new diagTitle[64];
            format(diagTitle, sizeof(diagTitle), "Thời Gian Làm Việc Của Admin");
            DCC_SetEmbedTitle(embed, diagTitle);
        }
        DCC_SetEmbedDescription(embed, string2);
        DCC_SendChannelEmbedMessage(g_Admin_Chat, embed);
    }
    return 1;
}
