#define FILTERSCRIPT

#include <a_samp>

#if defined FILTERSCRIPT

new Object_Floor[27], Object_Roof[7], Object_Wall[39], Object_Table[4], Pickup[2];

public OnPlayerConnect(playerid)
{
    SetPlayerMapIcon(playerid, 12, 2463.0471, -1957.5515, 16.7931, 36, 0, MAPICON_LOCAL);
    return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
    if(pickupid == Pickup[0]) PlayerPlaySound(playerid, 1145, 0.0, 0.0, 0.0), SetPlayerPos(playerid, 1481.0157, -1767.8514, 18.7958), SetPlayerFacingAngle(playerid, 356.0816), SetCameraBehindPlayer(playerid);
	if(pickupid == Pickup[1]) PlayerPlaySound(playerid, 1145, 0.0, 0.0, 0.0), SetPlayerPos(playerid, 1518.8867, -1769.8033, 18.0859), SetPlayerFacingAngle(playerid, 290.4261), SetCameraBehindPlayer(playerid);
	return 1;
}

public OnFilterScriptInit()
{

	Pickup[0] = CreatePickup(1239, 1, 1515.4370, -1770.2100, 18.0859);
	Pickup[1] = CreatePickup(1239, 1, 1481.0104, -1772.3138, 18.7958);

    Object_Wall[0] = CreateObject(19427, 1519.9443359, -1758.0, 18.7689991, 0.0, 0.0, 90.0);
    Object_Wall[1] = CreateObject(19427, 1519.9443359, -1758.0, 22.250, 0.0, 0.0, 90.0);
    Object_Wall[2] = CreateObject(19427, 1519.9443359, -1758.0, 25.750, 0.0, 0.0, 90.0);
    Object_Wall[3] = CreateObject(19427, 1524.750, -1758.0, 18.7689991, 0.0, 0.0, 90.0);
    Object_Wall[4] = CreateObject(19427, 1524.750, -1758.0, 22.250, 0.0, 0.0, 90.0);
    Object_Wall[5] = CreateObject(19427, 1524.750, -1758.0, 25.750, 0.0, 0.0, 90.0);
    Object_Wall[6] = CreateObject(19427, 1528.5742188, -1758.0, 18.7689991, 0.0, 0.0, 90.0);
    Object_Wall[7] = CreateObject(19427, 1528.5742188, -1758.0, 22.250, 0.0, 0.0, 90.0);
    Object_Wall[8] = CreateObject(19427, 1528.5742188, -1758.0, 25.750, 0.0, 0.0, 90.0);
    Object_Wall[9] = CreateObject(19427, 1532.3994141, -1758.0, 18.7689991, 0.0, 0.0, 90.0);
    Object_Wall[10] = CreateObject(19427, 1532.3994141, -1758.0, 22.250, 0.0, 0.0, 90.0);
    Object_Wall[11] = CreateObject(19427, 1532.3994141, -1758.0, 25.750, 0.0, 0.0, 90.0);
    Object_Wall[12] = CreateObject(19427, 1536.2236328, -1758.0, 18.7689991, 0.0, 0.0, 90.0);
    Object_Wall[13] = CreateObject(19427, 1536.2236328, -1758.0, 22.250, 0.0, 0.0, 90.0);
    Object_Wall[14] = CreateObject(19427, 1536.2236328, -1758.0, 25.750, 0.0, 0.0, 90.0);
    Object_Wall[15] = CreateObject(19354, 1538.2128906, -1759.1503906, 25.750, 0.0, 0.0, 44.9945068);
    Object_Wall[16] = CreateObject(19354, 1538.2128906, -1759.1503906, 18.7689991, 0.0, 0.0, 44.9780273);
    Object_Wall[17] = CreateObject(19354, 1538.2128906, -1759.1503906, 22.250, 0.0, 0.0, 44.9890137);
    Object_Wall[18] = CreateObject(19446, 1539.3544922, -1765.1386719, 18.7689991, 0.0, 0.0, 0.0);
    Object_Wall[19] = CreateObject(19446, 1539.3544922, -1765.1386719, 22.250, 0.0, 0.0, 0.0);
    Object_Wall[20] = CreateObject(19446, 1539.3544922, -1765.1386719, 25.750, 0.0, 0.0, 0.0);
    Object_Wall[21] = CreateObject(19354, 1538.1929932, -1771.1469727, 18.7689991, 0.0, 0.0, 315.0);
    Object_Wall[22] = CreateObject(19354, 1538.1923828, -1771.1464844, 22.250, 0.0, 0.0, 315.0);
    Object_Wall[23] = CreateObject(19354, 1538.1923828, -1771.1464844, 25.750, 0.0, 0.0, 315.0);
    Object_Wall[24] = CreateObject(19446, 1532.1910400, -1772.2860107, 18.7689991, 0.0, 0.0, 90.0);
    Object_Wall[25] = CreateObject(19446, 1532.1904297, -1772.2851562, 22.250, 0.0, 0.0, 90.0);
    Object_Wall[26] = CreateObject(19446, 1532.1904297, -1772.2851562, 25.750, 0.0, 0.0, 90.0);
    Object_Wall[27] = CreateObject(19446, 1522.5999756, -1772.2851562, 22.250, 0.0, 0.0, 90.0);
    Object_Wall[28] = CreateObject(19446, 1522.5996094, -1772.2851562, 18.7689991, 0.0, 0.0, 90.0);
    Object_Wall[29] = CreateObject(19446, 1522.5996094, -1772.2851562, 25.750, 0.0, 0.0, 90.0);
    Object_Wall[30] = CreateObject(19446, 1513.0081787, -1772.2851562, 18.7689991, 0.0, 0.0, 90.0);
    Object_Wall[31] = CreateObject(19446, 1513.0078125, -1772.2851562, 22.250, 0.0, 0.0, 90.0);
    Object_Wall[32] = CreateObject(19446, 1513.0078125, -1772.2851562, 25.750, 0.0, 0.0, 90.0);
    Object_Wall[33] = CreateObject(19446, 1515.0, -1768.0, 22.250, 0.0, 0.0, 0.0);
    Object_Wall[34] = CreateObject(19446, 1515.0, -1768.0, 25.750, 0.0, 0.0, 0.0);
    Object_Wall[35] = CreateObject(19446, 1514.9394531, -1769.0117188, 18.7689991, 0.0, 0.0, 0.0);
    Object_Wall[36] = CreateObject(19362, 1522.3496094, -1758.0, 18.7689991, 0.0, 0.0, 90.0);
    Object_Wall[37] = CreateObject(19362, 1522.3496094, -1758.0, 22.250, 0.0, 0.0, 90.0);
    Object_Wall[38] = CreateObject(19362, 1522.3496094, -1758.0, 25.750, 0.0, 0.0, 90.0);

    Object_Floor[2] = CreateObject(19378, 1523.6494141, -1762.7285156, 17.0, 0.0, 90.0, 0.0);// ���
    Object_Floor[7] = CreateObject(19378, 1534.1191406, -1762.7285156, 17.0, 0.0, 90.0, 0.0);
    Object_Floor[8] = CreateObject(19378, 1513.1809082, -1762.7285156, 17.0, 0.0, 90.0, 0.0);
    Object_Floor[9] = CreateObject(19378, 1534.1191406, -1772.3593750, 17.0, 0.0, 90.0, 0.0);
    Object_Floor[10] = CreateObject(19378, 1513.1806641, -1772.3593750, 17.0, 0.0, 90.0, 0.0);
    Object_Floor[11] = CreateObject(19378, 1523.6494141, -1772.3593750, 17.0, 0.0, 90.0, 0.0);

    Object_Floor[12] = CreateObject(19435, 1521.50, -1760.6510010, 16.0, 0.0, 0.0, 11.250);// ����������
    Object_Floor[13] = CreateObject(19435, 1521.6199951, -1762.2089844, 16.0, 0.0, 0.0, 357.250);
    Object_Floor[14] = CreateObject(19435, 1520.9720459, -1759.2039795, 16.0, 0.0, 0.0, 29.250);
    Object_Floor[15] = CreateObject(19435, 1520.0860596, -1757.9090576, 16.0, 0.0, 0.0, 39.2456055);
    Object_Floor[16] = CreateObject(19435, 1521.3659668, -1763.7640381, 16.0, 0.0, 0.0, 343.2479248);
    Object_Floor[17] = CreateObject(19435, 1520.7239990, -1765.1989746, 16.0, 0.0, 0.0, 327.9958496);
    Object_Floor[18] = CreateObject(19435, 1519.7270508, -1766.3850098, 16.0, 0.0, 0.0, 311.9913330);
    Object_Floor[19] = CreateObject(19435, 1518.4410400, -1767.2869873, 16.0, 0.0, 0.0, 297.9897461);
    Object_Floor[20] = CreateObject(19435, 1517.0, -1767.8520508, 16.0, 0.0, 0.0, 283.9876709);
    Object_Floor[21] = CreateObject(19435, 1515.4439697, -1768.0820312, 16.0, 0.0, 0.0, 271.9855957);
    Object_Floor[22] = CreateObject(19364, 1536.50, -1763.50, 16.208, 0.0, 0.0, 0.0);
    Object_Floor[23] = CreateObject(19364, 1536.50, -1766.6999512, 16.208, 0.0, 0.0, 0.0);
    Object_Floor[24] = CreateObject(19364, 1538.0, -1768.3900146, 16.208, 0.0, 0.0, 90.0);
    Object_Floor[25] = CreateObject(19364, 1538.0200195, -1761.8100586, 16.208, 0.0, 0.0, 90.0);
    Object_Floor[26] = CreateObject(18815, 1515.50, -1761.8496094, 3.0, 0.0, 180.0, 0.0);

    Object_Roof[0] = CreateObject(19378, 1534.1191406, -1762.7285156, 27.2999992, 0.0, 90.0, 0.0);// �������
    Object_Roof[1] = CreateObject(19378, 1534.1191406, -1772.3593750, 27.2999992, 0.0, 90.0, 0.0);
    Object_Roof[3] = CreateObject(19378, 1523.6494141, -1772.3593750, 27.2999992, 0.0, 90.0, 0.0);
    Object_Roof[4] = CreateObject(19378, 1513.1806641, -1772.3593750, 27.2999992, 0.0, 90.0, 0.0);
    Object_Roof[5] = CreateObject(19378, 1513.1806641, -1762.7285156, 27.2999992, 0.0, 90.0, 0.0);
    Object_Roof[6] = CreateObject(19378, 1523.6494141, -1762.7285156, 27.2999992, 0.0, 90.0, 0.0);

    Object_Table[0] = CreateObject(2319, 1534.3499756, -1760.1519775, 17.0860004, 0.0, 0.0, 90.0);// �������
    Object_Table[1] = CreateObject(2319, 1526.6533203, -1760.1513672, 17.0860004, 0.0, 0.0, 90.0);
    Object_Table[2] = CreateObject(2319, 1530.50, -1760.1513672, 17.0860004, 0.0, 0.0, 90.0);
    Object_Table[3] = CreateObject(2207, 1522.8850098, -1764.8420410, 17.0860004, 0.0, 0.0, 75.0);

    for(new t; t != 39; t++) SetObjectMaterial(Object_Wall[t], 0, 8399, "vgs_shops", "vgsclubwall05_128", -1);
    for(new t; t != 27; t++) SetObjectMaterial(Object_Floor[t], 0, 8839, "vgsecarshow", "sw_wallbrick_06", -1);
    for(new t; t != 7; t++) SetObjectMaterial(Object_Roof[t], 0, 16150, "ufo_bar", "GEwhite1_64", -1);
    for(new t; t != 4; t++) SetObjectMaterial(Object_Table[t], 0, 13711, "mullho03_lahills", "des_flatlogs", -1);

    CreateObject(1569, 1515.0361328, -1771.7480469, 17.0860004, 0.0, 0.0, 90.0);
    CreateObject(1569, 1515.0250244, -1768.750, 17.0860004, 0.0, 0.0, 270.0);
    CreateObject(19466, 1534.3193359, -1758.0, 17.9870567, 0.0, 0.0, 90.0);
    CreateObject(19466, 1534.3193359, -1758.0, 21.8579998, 0.0, 0.0, 90.0);
    CreateObject(19466, 1534.3193359, -1758.0, 19.9225006, 0.0, 0.0, 90.0);
    CreateObject(19466, 1534.3193359, -1758.0, 23.7935009, 0.0, 0.0, 90.0);
    CreateObject(19466, 1534.3193359, -1758.0, 25.7290001, 0.0, 0.0, 90.0);
    CreateObject(19466, 1534.3193359, -1758.0, 27.6644993, 0.0, 0.0, 90.0);
    CreateObject(19466, 1526.6494141, -1758.0, 17.9870567, 0.0, 0.0, 90.0);
    CreateObject(19466, 1530.50, -1758.0, 17.9870567, 0.0, 0.0, 90.0);
    CreateObject(19466, 1530.50, -1758.0, 19.9225006, 0.0, 0.0, 90.0);
    CreateObject(19466, 1530.50, -1758.0, 21.8579998, 0.0, 0.0, 90.0);
    CreateObject(19466, 1530.50, -1758.0, 23.7935009, 0.0, 0.0, 90.0);
    CreateObject(19466, 1530.50, -1758.0, 25.7290001, 0.0, 0.0, 90.0);
    CreateObject(19466, 1530.50, -1758.0, 27.6644993, 0.0, 0.0, 90.0);
    CreateObject(19466, 1526.6494141, -1758.0, 19.9225006, 0.0, 0.0, 90.0);
    CreateObject(19466, 1526.6494141, -1758.0, 21.8579998, 0.0, 0.0, 90.0);
    CreateObject(19466, 1526.6494141, -1758.0, 23.7935009, 0.0, 0.0, 90.0);
    CreateObject(19466, 1526.6494141, -1758.0, 27.6644993, 0.0, 0.0, 90.0);
    CreateObject(19466, 1526.6494141, -1758.0, 25.7290001, 0.0, 0.0, 90.0);
    CreateObject(802, 1520.6269531, -1764.6030273, 18.0, 0.0, 0.0, 0.0);
    CreateObject(802, 1519.4930420, -1765.9560547, 18.0, 0.0, 0.0, 310.0);
    CreateObject(802, 1517.7869873, -1767.2419434, 18.0, 0.0, 0.0, 285.9957275);
    CreateObject(802, 1515.7320557, -1767.7879639, 18.0, 0.0, 0.0, 335.9906006);
    CreateObject(802, 1521.2080078, -1762.4079590, 18.0, 0.0, 0.0, 112.0);
    CreateObject(802, 1521.2230225, -1760.2769775, 18.0, 0.0, 0.0, 171.9946289);
    CreateObject(802, 1520.3120117, -1758.5489502, 18.0, 0.0, 0.0, 171.9909668);
    CreateObject(14469, 1518.5670166, -1759.7879639, 17.8880005, 0.0, 0.0, 0.0);
    CreateObject(14469, 1519.1300049, -1762.2349854, 17.8880005, 0.0, 0.0, 0.0);
    CreateObject(14469, 1518.2669678, -1764.3459473, 17.8880005, 0.0, 0.0, 0.0);
    CreateObject(14469, 1517.1777344, -1766.2001953, 17.8880005, 0.0, 0.0, 19.9951172);
    CreateObject(1726, 1525.2729492, -1760.4160156, 17.0860004, 0.0, 0.0, 90.0);
    CreateObject(1726, 1529.1992188, -1760.4160156, 17.0860004, 0.0, 0.0, 90.0);
    CreateObject(1726, 1531.8000488, -1758.3544922, 17.0860004, 0.0, 0.0, 269.9945068);
    CreateObject(1726, 1528.0888672, -1758.3544922, 17.0860004, 0.0, 0.0, 269.9945068);
    CreateObject(1726, 1533.1269531, -1760.4160156, 17.0860004, 0.0, 0.0, 90.0);
    CreateObject(1726, 1535.5109863, -1758.3544922, 17.0860004, 0.0, 0.0, 269.9945068);
    CreateObject(2193, 1525.2939453, -1771.7170410, 17.0860004, 0.0, 0.0, 90.0);
    CreateObject(2193, 1527.2130127, -1771.7180176, 17.0860004, 0.0, 0.0, 90.0);
    CreateObject(2193, 1529.1269531, -1771.7340088, 17.0860004, 0.0, 0.0, 90.0);
    CreateObject(2193, 1531.0469971, -1771.7469482, 17.0860004, 0.0, 0.0, 90.0);
    CreateObject(2193, 1532.9620361, -1771.7509766, 17.0860004, 0.0, 0.0, 90.0);
    CreateObject(2356, 1530.4119873, -1771.2640381, 17.0860004, 0.0, 0.0, 90.0);
    CreateObject(2356, 1529.2089844, -1771.2650146, 17.0860004, 0.0, 0.0, 45.0);
    CreateObject(2356, 1527.0179443, -1770.9200439, 17.0860004, 0.0, 0.0, 90.0);
    CreateObject(2356, 1524.6379395, -1771.1719971, 17.0860004, 0.0, 0.0, 72.0);
    CreateObject(2356, 1532.8399658, -1771.1870117, 17.0860004, 0.0, 0.0, 70.9945068);
    CreateObject(1569, 1538.7236328, -1770.5605469, 17.0860004, 0.0, 0.0, 224.7473145);
    CreateObject(2855, 1530.5069580, -1758.6300049, 17.5830002, 0.0, 0.0, 0.0);
    CreateObject(2854, 1526.6130371, -1758.6099854, 17.5830002, 0.0, 0.0, 0.0);
    CreateObject(2853, 1534.3590088, -1758.7370605, 17.5830002, 0.0, 0.0, 180.0);
    CreateObject(2828, 1527.8229980, -1771.1569824, 18.3330002, 0.0, 0.0, 270.0);
    CreateObject(2700, 1532.5100098, -1772.4250488, 19.6079998, 0.0, 0.0, 90.0);
    CreateObject(2700, 1530.5589600, -1772.4160156, 19.6079998, 0.0, 0.0, 90.0);
    CreateObject(2700, 1528.6298828, -1772.4082031, 19.6079998, 0.0, 0.0, 90.0);
    CreateObject(2700, 1526.7760010, -1772.4060059, 19.6079998, 0.0, 0.0, 90.0);
    CreateObject(2700, 1524.8489990, -1772.3730469, 19.6079998, 0.0, 0.0, 90.0);
    CreateObject(2344, 1522.3079834, -1764.3819580, 17.8729992, 0.0, 0.0, 20.0);
    CreateObject(2190, 1523.3590088, -1763.4720459, 17.8630009, 0.0, 0.0, 270.0);
    CreateObject(1808, 1523.5799561, -1758.3050537, 17.0860004, 0.0, 0.0, 0.0);
    CreateObject(1808, 1522.5899658, -1758.2950439, 17.0860004, 0.0, 0.0, 0.0);
    CreateObject(1808, 1521.5340576, -1758.3160400, 17.0860004, 0.0, 0.0, 0.0);
    CreateObject(2894, 1522.8399658, -1764.1340332, 17.8630009, 0.0, 0.0, 64.0);
    CreateObject(2707, 1528.5870361, -1758.1109619, 19.9939995, 0.0, 90.0, 89.9999390);
    CreateObject(2707, 1529.1719971, -1758.1109619, 19.9899998, 0.0, 90.0, 89.9999390);
    CreateObject(2707, 1528.0360107, -1758.1109619, 19.9869995, 0.0, 90.0, 90.0);
    CreateObject(2707, 1531.8809814, -1758.1109619, 19.9759998, 0.0, 90.0, 90.0);
    CreateObject(2707, 1532.4350586, -1758.1109619, 19.9710007, 0.0, 90.0, 90.0);
    CreateObject(2707, 1532.9870605, -1758.1109619, 19.9699993, 0.0, 90.0, 90.0);
    CreateObject(2707, 1535.7030029, -1758.1109619, 19.9699993, 0.0, 90.0, 90.0);
    CreateObject(2707, 1536.2220459, -1758.1109619, 19.9699993, 0.0, 90.0, 90.0);
    CreateObject(2707, 1536.7490234, -1758.1109619, 19.9689999, 0.0, 90.0, 90.0);
    CreateObject(2707, 1524.2390137, -1758.2209473, 19.9939995, 0.0, 90.0, 90.0);
    CreateObject(2707, 1524.7889404, -1758.2070312, 19.9939995, 0.0, 90.0, 90.0);
    CreateObject(2707, 1525.3630371, -1758.1929932, 19.9939995, 0.0, 90.0, 90.0);
    CreateObject(2707, 1520.6379395, -1758.6340332, 19.9939995, 0.0, 90.0, 90.0);
    CreateObject(2707, 1520.1920166, -1758.6839600, 19.9939995, 0.0, 90.0, 90.0);
    CreateObject(2740, 1536.50, -1770.0, 27.0520000, 0.0, 0.0, 0.0);
    CreateObject(2740, 1526.0, -1770.0, 27.0520000, 0.0, 0.0, 0.0);
    CreateObject(2740, 1529.50, -1770.0, 27.0520000, 0.0, 0.0, 0.0);
    CreateObject(2740, 1533.0, -1770.0, 27.0520000, 0.0, 0.0, 0.0);
    CreateObject(2740, 1522.50, -1770.0, 27.0520000, 0.0, 0.0, 0.0);
    CreateObject(2740, 1522.50, -1760.4169922, 27.0520000, 0.0, 0.0, 0.0);
    CreateObject(2740, 1526.0, -1760.4169922, 27.0520000, 0.0, 0.0, 0.0);
    CreateObject(2740, 1529.50, -1760.4169922, 27.0520000, 0.0, 0.0, 0.0);
    CreateObject(2740, 1533.0, -1760.4169922, 27.0520000, 0.0, 0.0, 0.0);
    CreateObject(2740, 1536.50, -1760.4169922, 27.0520000, 0.0, 0.0, 0.0);
    CreateObject(1886, 1515.1619873, -1767.2640381, 21.0189991, 0.0, 0.0, 45.0);
    CreateObject(1886, 1515.0460205, -1772.2779541, 21.0189991, 0.0, 0.0, 135.0);
    CreateObject(1569, 1539.2750244, -1768.0970459, 17.0860004, 0.0, 0.0, 90.0);
    CreateObject(2008, 1537.0310059, -1763.3389893, 17.0860004, 0.0, 0.0, 90.0);
    CreateObject(2008, 1537.0302734, -1765.3388672, 17.0860004, 0.0, 0.0, 90.0);
    CreateObject(2008, 1537.0302734, -1767.3388672, 17.0860004, 0.0, 0.0, 90.0);
    CreateObject(1811, 1537.3590088, -1762.5520020, 17.7119999, 0.0, 0.0, 0.0);
    CreateObject(1811, 1537.3160400, -1764.4200439, 17.7119999, 0.0, 0.0, 0.0);
    CreateObject(1811, 1537.3170166, -1766.4570312, 17.7119999, 0.0, 0.0, 0.0);
    CreateObject(2700, 1539.4940186, -1762.8640137, 19.2709999, 0.0, 0.0, 180.0);
    CreateObject(2700, 1539.4940186, -1763.4790039, 19.2700005, 0.0, 0.0, 179.9945068);
    CreateObject(2700, 1539.4940186, -1764.5649414, 19.2609997, 0.0, 0.0, 179.9945068);
    CreateObject(2700, 1539.4940186, -1765.1960449, 19.2609997, 0.0, 0.0, 179.9945068);
    CreateObject(2776, 1535.9549561, -1767.8730469, 17.5830002, 0.0, 0.0, 180.0);
    CreateObject(2776, 1535.9439697, -1765.4339600, 17.5830002, 0.0, 0.0, 179.9945068);
    CreateObject(2776, 1535.9229736, -1763.2819824, 17.5830002, 0.0, 0.0, 179.9945068);
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

#else

main()
{
	print("\nMAPPING CITY HALL");
}

#endif

