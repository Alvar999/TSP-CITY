#include <a_samp>
#pragma tabsize 0

#undef MAX_PLAYERS
#define MAX_PLAYERS 700

public OnFilterScriptInit() {

    print("RemoveBuilding Filterscript Initiated");
}

public OnPlayerConnect(playerid)
{
		//
	
    //bank
	RemoveBuildingForPlayer(playerid, 4600, 1453.599, -989.484, 34.437, 0.250);
	RemoveBuildingForPlayer(playerid, 4625, 1453.599, -989.484, 34.437, 0.250);
	RemoveBuildingForPlayer(playerid, 1294, 1421.910, -1029.880, 27.179, 0.250);
	RemoveBuildingForPlayer(playerid, 1283, 1490.300, -1031.660, 25.992, 0.250);
	RemoveBuildingForPlayer(playerid, 1294, 1492.089, -1030.069, 27.351, 0.250);
	RemoveBuildingForPlayer(playerid, 1283, 1479.300, -1042.079, 25.750, 0.250);
	//lspd
	
    //spawn newbie
	RemoveBuildingForPlayer(playerid, 713, 2275.390, -1438.664, 22.554, 0.250);
	RemoveBuildingForPlayer(playerid, 1297, 2273.640, -1434.148, 26.390, 0.250);
	RemoveBuildingForPlayer(playerid, 17733, 2307.921, -1434.039, 21.679, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2283.843, -1471.375, 23.015, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2291.140, -1473.992, 23.328, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2285.898, -1473.992, 23.078, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2285.062, -1466.281, 23.179, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2301.656, -1473.914, 23.687, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2296.382, -1473.992, 23.546, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2327.718, -1474.000, 24.179, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2322.476, -1474.000, 24.078, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2317.234, -1474.000, 23.984, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2331.328, -1471.507, 24.179, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2332.242, -1466.375, 24.179, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2291.445, -1423.195, 24.054, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2291.062, -1428.484, 24.000, 0.250);
	RemoveBuildingForPlayer(playerid, 17563, 2307.921, -1434.039, 21.679, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2292.218, -1412.671, 24.195, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2291.820, -1417.914, 24.109, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2292.539, -1407.406, 24.195, 0.250);
	RemoveBuildingForPlayer(playerid, 1308, 2333.164, -1428.929, 23.195, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2295.414, -1394.164, 24.195, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2292.875, -1396.898, 24.195, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2292.773, -1402.148, 24.195, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2300.679, -1394.164, 24.195, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2305.937, -1394.164, 24.195, 0.250);
	RemoveBuildingForPlayer(playerid, 1308, 2309.953, -1393.820, 23.210, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2311.203, -1394.164, 24.195, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2316.468, -1394.164, 24.195, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2321.710, -1394.203, 24.195, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 2326.265, -1396.054, 24.195, 0.250);
	RemoveBuildingForPlayer(playerid, 17504, 2378.671, -1455.257, 26.742, 0.250);
	//mechanic
	RemoveBuildingForPlayer(playerid, 5397, 1866.329, -1789.780, 20.945, 0.250);
	RemoveBuildingForPlayer(playerid, 5536, 1866.329, -1789.780, 20.945, 0.250);
	RemoveBuildingForPlayer(playerid, 1308, 1867.719, -1798.199, 12.703, 0.250);
	return 1;
}

