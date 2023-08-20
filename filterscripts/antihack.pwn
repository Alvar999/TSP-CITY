
//Includes
#include <a_samp>
#include <zcmd> // se for usar strcmp retire essa include e o comando na linha 199
#include <bini>
#define RED 0xAA3333AA

//define's
#define CONFIG "MF_CONFIG.ini" // Local onde as configurações do anti cheat são salvas
#define CONFIGMONEY "MF_MONEY.ini" // Local onde o money dos players são salvos
#define WARNINGSKICK 3 // max de avisos do anti god para kickar. recomendado 3 para cima
#define DIALOG_ANTICHEAT 9999 // 9999 e o id do dialog

//variaveis
static kickado[MAX_PLAYERS];// para não floodar o chat
static AntiFakeKill[MAX_PLAYERS]; // variavel do anti fake kill
static PlayerTimer1[MAX_PLAYERS];// timer do AntiMoneyHack
static PlayerTimer2[MAX_PLAYERS];// timer do CheckCheat
static money[MAX_PLAYERS];//variavel do anti money hack
static string[256]; // variavel global
static antifake,antiskin,antifly,antimoney,antigod,antijetpack,modtrol;//configs
static hits[MAX_PLAYERS];//hit GOD acertados
static MORTO[MAX_PLAYERS];// para garantir que não vai getar a vida de mortos
static CHECANDO[MAX_PLAYERS];//garantir uma checagem mais correta
//////////////////////////////////////////////////////////////////
public OnFilterScriptInit()
{
	for(new x = 0; x < GetMaxPlayers(); ++x)// se voce usar em /rcon loadfs ele vai recarregar o sistema
	{
		if(IsPlayerConnected(x))
		{
			PlayerTimer1[x] = SetTimerEx("MF_AntiMoneyHack", 1000, true, "i", x); // 1000 = 1 segundo
			PlayerTimer2[x] = SetTimerEx("CheckCheat", 1000,true,"i", x); // 1000 = 1 segundo
		}
	}
	// Carregar configurações
	if(fexist(CONFIG)) // verifica se existe o arquivo da config
	{
		INI_Open(CONFIG);
		antifake = INI_ReadInt(CONFIG, "antifake");
		antiskin = INI_ReadInt(CONFIG, "antiskin");
		antifly = INI_ReadInt(CONFIG, "antifly");
		antimoney = INI_ReadInt(CONFIG, "antimoney");
		antigod = INI_ReadInt(CONFIG, "antigod");
		antijetpack = INI_ReadInt(CONFIG, "antijetpack");
		modtrol = INI_ReadInt(CONFIG, "modtrol");
		INI_Close();
		// printf = print formatada
		print("1 = Ativado | 0 = Desativado");
		printf("Anti Fake Kill \t\t%d",antifake);
		printf("Anti Skin Bug \t\t%d",antiskin);
		printf("Anti FLy \t\t%d",antifly);
		printf("Anti Money Hack \t%d",antimoney);
		printf("Anti G0D Hack \t\t%d",antigod);
		printf("Anti God of Cars \t%d",modtrol);
	}
	else // se não existe ele vai criar-lo
	{
		INI_Create(CONFIG);
		INI_WriteInt(CONFIG, "antifake", antifake = 1);
		INI_WriteInt(CONFIG, "antiskin", antiskin = 1);
		INI_WriteInt(CONFIG, "antifly", antifly = 1);
		INI_WriteInt(CONFIG, "antigod", antigod = 1);
		INI_WriteInt(CONFIG, "antijetpack", antijetpack = 1);
		INI_WriteInt(CONFIG, "antimoney", antimoney = 0);
		INI_WriteInt(CONFIG, "modtrol", modtrol = 1);
		INI_Save();
		printf("%s / Criado",CONFIG); // se ele for criado vai aparecer isto no log
		INI_Create(CONFIGMONEY);
		printf("%s / Criado",CONFIGMONEY); // igualmente
		INI_Save();
	}
	print("\n----------------------------------------------");
	print("  Anti Cheat 1.2 By [$]_Red_[MF] Loaded");
	print("     Server ip: 167.114.42.20:7762\n");
	print("----------------------------------------------\n");
	return 1;
}
//////////////////////////////////////////////////////////////////
public OnFilterScriptExit()
{
	INI_Exit();
	return true;
}
//////////////////////////////////////////////////////////////////
public OnPlayerConnect(playerid)
{
	if(antimoney == 1)
	{
		INI_Open(CONFIGMONEY);
		MF_GivePlayerMoney(playerid, INI_ReadInt(CONFIGMONEY, pName(playerid)));
		INI_Close();
	}
	CHECANDO[playerid] = 0;
	MORTO[playerid] = 0;
	hits[playerid] = 0;
	PlayerTimer1[playerid] = SetTimerEx("MF_AntiMoneyHack", 200, true, "i", playerid); // 200 = 200 ms
	PlayerTimer2[playerid] = SetTimerEx("CheckCheat", 1000,true,"i", playerid); // 1000 = 1 segundo
	return 1;
}
//////////////////////////////////////////////////////////////////
public OnPlayerDisconnect(playerid)
{
	INI_Open(CONFIGMONEY);
	INI_WriteInt(CONFIGMONEY, pName(playerid), money[playerid]);
	INI_Save();
	kickado[playerid] = 0;
	AntiFakeKill[playerid] = 0;

	// desligar os timersquando o players deslogar diminui o lag no server
	KillTimer(PlayerTimer1[playerid]);
	KillTimer(PlayerTimer2[playerid]);
	return 1;
}
//////////////////////////////////////////////////////////////////
public OnPlayerDeath(playerid, killerid, reason)
{
	if(antifake == 1)
	{
		AntiFakeKill[playerid]++;
		SetTimerEx("Antifakekill", 1000,false,"i",playerid);
	}
	MORTO[playerid] = 1;
	hits[playerid] = 0;
	return 1;
}
/////////////////////////////////////////////////////////////////////////
public OnPlayerSpawn(playerid)
{
	MORTO[playerid] = 0;
	CHECANDO[playerid] = 0;
	hits[playerid] = 0;
	return 1;
}
/////////////////////////////////////////////////////////////////////////
public OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid)
{
	if(antigod == 1)
	{
		if(damagedid != INVALID_PLAYER_ID)
		{
			if(CHECANDO[damagedid] == 0)
			{
				if(MORTO[damagedid] == 0)
				{
					if(weaponid != 34)
					{
						CHECANDO[damagedid] = 1; // não dar bugs na hora de checar o player
						static Float:Health,Float:Armour;
						GetPlayerHealth(damagedid, Health);
						GetPlayerArmour(damagedid, Armour);
						if(Armour > 0.0)
						{                              // \/ Para não dar falsas denuncias por causa do ping
							SetTimerEx("CheckArmour", GetPlayerPing(damagedid)+300, false, "ii", damagedid, Armour);
						}
						else
						{
							SetTimerEx("CheckHealth", GetPlayerPing(damagedid)+300, false, "ii", damagedid, Health);
						}
					}
				}
			}
		}
	}
	return 1;
}
//////////////////////////////////////////////////////////////////
CMD:anticheat(playerid, params[])
{
    if(!IsPlayerAdmin(playerid)) return 1; // so admins rcon pode usar esse comando
	Dialog(playerid);
	return 1;
}
//////////////////////////////////////////////////////////////////
// Se for usar o strcmp apague as linhas acima dos comandos antigos e libere as linhas abaixo
// e retire a include zcmd do topo desse filterscript


/*

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/mf", cmdtext, true, 10) == 0)
	{
 		if(!IsPlayerAdmin(playerid)) return 1; // so admins rcon pode usar esse comando
		Dialog(playerid);
		return 1;
	}
	return 0;
}

*/


//////////////////////////////////////////////////////////////////
public OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(modtrol == 1)
	{
	if(oldstate == 3 && newstate == 2) return KickPlayer(playerid, "Mod Trol");
	if(oldstate == 2 && newstate == 3) return KickPlayer(playerid, "Mod Trol");
	}
	return 1;
}
//////////////////////////////////////////////////////////////////
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == DIALOG_ANTICHEAT)
	{
		if(response)
		{
			INI_Open(CONFIG);
			if(listitem == 0)
			{
				if(antifly == 1)
				{
					antifly = 0;
				}
				else
				{
					antifly = 1;
				}
			}
			if(listitem == 1)
			{
				if(antiskin == 1)
				{
					antiskin = 0;
				}
				else
				{
					antiskin = 1;
				}
			}
			if(listitem == 2)
			{
				if(antifake == 1)
				{
					antifake = 0;
				}
				else
				{
					antifake = 1;
				}
			}
			if(listitem == 3)
			{
				if(antimoney == 1)
				{
					antimoney = 0;
				}
				else
				{
					for(new x = 0; x < GetMaxPlayers(); ++x)
					{
						if(IsPlayerConnected(x))
						{
							money[x] = GetPlayerMoney(x);
						}
					}
					antimoney = 1;
					SendClientMessage(playerid, -1, "Se você estiver usando outro anti money hack por favor desligue para não cauzar conflito.");
				}
			}
			if(listitem == 4)
			{
				if(antigod == 1)
				{
					antigod = 0;
				}
				else
				{
					antigod = 1;
				}
			}
			if(listitem == 5)
			{
				if(antijetpack == 1)
				{
					antijetpack = 0;
				}
				else
				{
					antijetpack = 1;
				}
			}
 			if(listitem == 6)
			{
				if(modtrol == 1)
				{
					modtrol = 0;
				}
				else
				{
					modtrol = 1;
				}
			}
			Dialog(playerid);
			// Salva as alterações feitas
			INI_WriteInt(CONFIG, "antifake", antifake);
			INI_WriteInt(CONFIG, "antiskin", antiskin);
			INI_WriteInt(CONFIG, "antifly", antifly);
			INI_WriteInt(CONFIG, "antimoney", antimoney);
			INI_WriteInt(CONFIG, "antijetpack", antijetpack);
			INI_WriteInt(CONFIG, "antigod", antigod);
			INI_WriteInt(CONFIG, "modtrol", modtrol);
			INI_Save();
		}
		return 1;
	}
	return 0;
}
//////////////////////////////////////////////////////////////////
forward CheckCheat(playerid);
public CheckCheat(playerid)
{

	if(antiskin == 1)
	{
		if(GetPlayerWeapon(playerid) != WEAPON_PARACHUTE && GetPlayerAnimationIndex(playerid) == 974) return KickPlayer(playerid, "Skin Bug");
		if(GetPlayerWeapon(playerid) != WEAPON_PARACHUTE && GetPlayerAnimationIndex(playerid) == 972) return KickPlayer(playerid, "Skin Bug");
		if(GetPlayerWeapon(playerid) != WEAPON_PARACHUTE && GetPlayerAnimationIndex(playerid) == 968) return KickPlayer(playerid, "Skin Bug");
	}

	if(antifly == 1)
	{
		if(GetPlayerWeapon(playerid) != WEAPON_PARACHUTE && GetPlayerAnimationIndex(playerid) == 959) return KickPlayer(playerid, "Fly");
		if(GetPlayerWeapon(playerid) != WEAPON_PARACHUTE && GetPlayerAnimationIndex(playerid) == 958) return KickPlayer(playerid, "Fly");
		if(!IsPlayerInWater(playerid) && GetPlayerAnimationIndex(playerid) == 1539) return KickPlayer(playerid, "Fly");
		if(!IsPlayerInWater(playerid) && GetPlayerAnimationIndex(playerid) == 1538) return KickPlayer(playerid, "Fly");  // novo anin que anti fly pega
	}

	if(antijetpack == 1)
	{
		if(GetPlayerSpecialAction(playerid) == SPECIAL_ACTION_USEJETPACK)
		{
			if(!IsPlayerAdmin(playerid))
			{
				//SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);// aqui ele so vai retirar a jetpack so players logados na RCON pode ter jetpack
				KickPlayer(playerid, "JetPack Hack");
			}
		}
	}

	return 1;
}
//////////////////////////////////////////////////////////////////
forward Antifakekill(playerid);
public Antifakekill(playerid)
{
	if(AntiFakeKill[playerid] > 3) return KickPlayer(playerid, "Fake Kill");
	AntiFakeKill[playerid] = 0;
	return 1;
}
//////////////////////////////////////////////////////////////////
stock IsPlayerInWater(playerid)
{
	new Float:Z;// não mude para static
	GetPlayerPos(playerid,Z,Z,Z);
	if(Z < 0.7) switch(GetPlayerAnimationIndex(playerid)) { case 1543,1538,1539: return 1; }
	if(GetPlayerDistanceFromPoint(playerid,-965,2438,42) <= 700 && Z < 45)return 1;
	new Float:water_places[][] =
	{

		{
			25.0,	2313.0,	-1417.0,	23.0},
		{
			15.0,	1280.0,	-773.0,		1082.0},
		{
			15.0,	1279.0,	-804.0,		86.0},
		{
			20.0,	1094.0,	-674.0,		111.0},
		{
			26.0,	194.0,	-1232.0,	76.0},
		{
			25.0,	2583.0,	2385.0,		15.0},
		{
			25.0,	225.0,	-1187.0,	73.0},
		{
			50.0,	1973.0,	-1198.0,	17.0}
	};
	for(new t=0; t < sizeof water_places; t++)
	if(GetPlayerDistanceFromPoint(playerid,water_places[t][1],water_places[t][2],water_places[t][3]) <= water_places[t][0]) return 1;
	return 0;
}

/////////////////////////////////////////////////////////////////////
stock pName(playerid)// stock para pegar nome de players
{
	static name[24];
	GetPlayerName(playerid, name, sizeof(name));
	return name;
}
//////////////////////////////////////////////////////////////////
forward KickPlayer(playerid, caso[]);
public KickPlayer(playerid, caso[])
{
	if(kickado[playerid] == 0)
	{
		kickado[playerid]++;
		format(string, sizeof(string), "{FFFF00}[ANTI-CHEAT]: {FF0000}%s {FFFFFF}foi kickado {000000}[{FFFF00}Motivo: {00FF00}%s{000000}]", pName(playerid),caso); // uma mensagem mais bonita :D
		SendClientMessageToAll(-1, string);
		printf(">>[ANTI-CHEAT]: %s foi kickado [Motivo: %s]", pName(playerid),caso); // escrever no log o player que foi kickado
		Kick(playerid);
	}
	return 1;
}
//////////////////////////////////////////////////////////////////
forward Dialog(playerid);
public Dialog(playerid)
{
	static antifly2[30],antiskin2[30],antifake2[30],antimoney2[30],antigod2[30],antijetpack2[30],modtrol2[30];
	switch(antifly)
	{
		case 0: antifly2 = "{FF0000}Da Tat{FFFFFF}";
		case 1: antifly2 = "{00FF00}Da Bat{FFFFFF}";
	}
	switch(antiskin)
	{
		case 0: antiskin2 = "{FF0000}Da Tat{FFFFFF}";
		case 1: antiskin2 = "{00FF00}Da Bat{FFFFFF}";
	}
	switch(antifake)
	{
		case 0: antifake2 = "{FF0000}Da Tat{FFFFFF}";
		case 1: antifake2 = "{00FF00}Da Bat{FFFFFF}";
	}
	switch(antimoney)
	{
		case 0: antimoney2 = "{FF0000}Da Tat{FFFFFF}";
		case 1: antimoney2 = "{00FF00}Da Bat{FFFFFF}";
	}
	switch(antigod)
	{
		case 0: antigod2 = "{FF0000}Da Tat{FFFFFF}";
		case 1: antigod2 = "{00FF00}Da Bat{FFFFFF}";
	}
	switch(antijetpack)
	{
		case 0: antijetpack2 = "{FF0000}Da Tat{FFFFFF}";
		case 1: antijetpack2 = "{00FF00}Da Bat{FFFFFF}";
	}
	switch(modtrol)
	{
		case 0: modtrol2 = "{FF0000}Da Tat{FFFFFF}";
		case 1: modtrol2 = "{00FF00}Da Bat{FFFFFF}";
	}
	static config[356];
	format(config, sizeof config, "{FFFFFF}Anti Fly \t\t\t %s\nAnti Skin Bug \t\t %s\nAnti Fake Kill \t\t %s\nAnti Money Hack \t %s\nAnti G0D Hack \t\t %s\nAnti JetPack Hack \t %s\nAnti God Of Car \t %s",antifly2,antiskin2,antifake2,antimoney2,antigod2,antijetpack2,modtrol2);
	return ShowPlayerDialog(playerid, DIALOG_ANTICHEAT, DIALOG_STYLE_LIST, " HE THONG ANTI CHEAT", config, "Chon", "Thoat");
}
//////////////////////////////////////////////////////////////////
forward MF_AntiMoneyHack(playerid);
public MF_AntiMoneyHack(playerid)//MoneyCheatCheck
{
	if(antimoney == 1)
	{
		if(GetPlayerMoney(playerid) > money[playerid])
		{
			ResetPlayerMoney(playerid);
			GivePlayerMoney(playerid, money[playerid]);
		}
	}
	return 1;
}
//////////////////////////////////////////////////////////////////
/*
Funsão para ser ultilizada fora do FS
CallRemoteFunction("MF_GivePlayerMoney", "ii", playerid, quantidade);
================================================================
Funsão para ser ultilizada dentro do FS
MF_GivePlayerMoney(playerid, quantidade);
*/
stock MF_GivePlayerMoney(playerid, quantidade)//GivePlayerMoney
{
	ResetPlayerMoney(playerid);
	GivePlayerMoney(playerid, money[playerid] + quantidade);
	money[playerid] = GetPlayerMoney(playerid);
	return 1;
}
//////////////////////////////////////////////////////////////////
forward CheckHealth(playerid, Float:OldHealth);
public CheckHealth(playerid, Float:OldHealth)
{
	static Float:Health;
	GetPlayerHealth(playerid, Health);
	if(Health == OldHealth && MORTO[playerid] == 0)
	{
		hits[playerid]++;
		if(hits[playerid] >= WARNINGSKICK) return KickPlayer(playerid, "Health H4CK");
	}
	CHECANDO[playerid] = 0;
	return 1;
}
/////////////////////////////////////////////////////////////////////////
forward CheckArmour(playerid, Float:OldArmour);
public CheckArmour(playerid, Float:OldArmour)
{
	static Float:Armour;
	GetPlayerArmour(playerid, Armour);
	if(Armour == OldArmour && MORTO[playerid] == 0)
	{
		hits[playerid]++;
		if(hits[playerid] >= WARNINGSKICK) return KickPlayer(playerid, "Armour H4CK");
	}
	CHECANDO[playerid] = 0;
	return 1;
}
/////////////////////////////////////////////////////////////////////////