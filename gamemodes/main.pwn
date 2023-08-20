#pragma disablerecursion
#define SERVER_GM_TEXT "TSP-CITY v2"
//mgsu#3010
#pragma warning disable 219
#include <bini>

#include <a_samp>
#undef 	 MAX_PLAYERS
#define  MAX_PLAYERS (200)
#include <a_mysql>
#include <streamer>
#include <yom_buttons>
#include <ZCMD>
#include <sscanf2>
#include <foreach>
#include <strlib>
#include <YSI\y_timers>
#include <YSI\y_utils>
#include <progress2>
#if defined SOCKET_ENABLED
#include <socket>




#endif

#include "./includes/tsp.pwn"
#include "./includes/timers.pwn"
#include "./includes/streamer.pwn"
#include "./includes/textdraws.pwn"
////
#include "./includes/other/flymode.pwn"
#include "./includes/other/cuopbank.pwn"
#include "./includes/other/chet.pwn"
#include "./includes/other/Taixiu.pwn"
#include "./includes/other/daumo.pwn"

#include "./includes/other/CuopCuaHang.pwn"
//#include "./includes/other/pool.pwn"
#include "./includes/other/tunhan.pwn"
#include "./includes/other/Phone.pwn"
#include "./includes/other/cuopnha.pwn"
#include "./includes/other/GarbageSystem.pwn"
#include "./includes/other/cccd.pwn"
#include "./includes/other/loading.pwn"
#include "./includes/other/Taxi.pwn"
#include "./includes/other/Grab.pwn"



main() {}

public OnGameModeInit()
{
	CCCDTD();
	print("Dang chuan bi tai gamemode, xin vui long cho doi...");
	g_mysql_Init();
	return 1;
}

public OnGameModeExit()
{
    g_mysql_Exit();
	return 1;
}

