#include <ysi\y_hooks>

new OpenCCCD[MAX_PLAYERS];
new WannaShowCCCD[MAX_PLAYERS];
new PlayerShowCCCD[MAX_PLAYERS];

new Text:TD_UDOOST_TD[41];
stock CCCDTD()
{
	TD_UDOOST_TD[0] = TextDrawCreate(223.2647, 172.7833, "LD_BEAT:chit"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[0], 22.0000, 22.0000);
	TextDrawAlignment(TD_UDOOST_TD[0], 1);
	TextDrawColor(TD_UDOOST_TD[0], 808333055);
	TextDrawBackgroundColor(TD_UDOOST_TD[0], 255);
	TextDrawFont(TD_UDOOST_TD[0], 4);
	TextDrawSetProportional(TD_UDOOST_TD[0], 0);
	TextDrawSetShadow(TD_UDOOST_TD[0], 0);

	TD_UDOOST_TD[1] = TextDrawCreate(223.4332, 301.1333, "LD_BEAT:chit"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[1], 22.0000, 22.0000);
	TextDrawAlignment(TD_UDOOST_TD[1], 1);
	TextDrawColor(TD_UDOOST_TD[1], 808333055);
	TextDrawBackgroundColor(TD_UDOOST_TD[1], 255);
	TextDrawFont(TD_UDOOST_TD[1], 4);
	TextDrawSetProportional(TD_UDOOST_TD[1], 0);
	TextDrawSetShadow(TD_UDOOST_TD[1], 0);

	TD_UDOOST_TD[2] = TextDrawCreate(424.6969, 172.8336, "LD_BEAT:chit"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[2], 22.0000, 22.0000);
	TextDrawAlignment(TD_UDOOST_TD[2], 1);
	TextDrawColor(TD_UDOOST_TD[2], 808333055);
	TextDrawBackgroundColor(TD_UDOOST_TD[2], 255);
	TextDrawFont(TD_UDOOST_TD[2], 4);
	TextDrawSetProportional(TD_UDOOST_TD[2], 0);
	TextDrawSetShadow(TD_UDOOST_TD[2], 0);

	TD_UDOOST_TD[3] = TextDrawCreate(424.7190, 301.1497, "LD_BEAT:chit"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[3], 22.0000, 22.0000);
	TextDrawAlignment(TD_UDOOST_TD[3], 1);
	TextDrawColor(TD_UDOOST_TD[3], 808333055);
	TextDrawBackgroundColor(TD_UDOOST_TD[3], 255);
	TextDrawFont(TD_UDOOST_TD[3], 4);
	TextDrawSetProportional(TD_UDOOST_TD[3], 0);
	TextDrawSetShadow(TD_UDOOST_TD[3], 0);

	TD_UDOOST_TD[4] = TextDrawCreate(234.0777, 176.5833, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[4], 202.0000, 143.0000);
	TextDrawAlignment(TD_UDOOST_TD[4], 1);
	TextDrawColor(TD_UDOOST_TD[4], 808333055);
	TextDrawBackgroundColor(TD_UDOOST_TD[4], 255);
	TextDrawFont(TD_UDOOST_TD[4], 4);
	TextDrawSetProportional(TD_UDOOST_TD[4], 0);
	TextDrawSetShadow(TD_UDOOST_TD[4], 0);

	TD_UDOOST_TD[5] = TextDrawCreate(227.0499, 184.9501, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[5], 216.0000, 127.0000);
	TextDrawAlignment(TD_UDOOST_TD[5], 1);
	TextDrawColor(TD_UDOOST_TD[5], 808333055);
	TextDrawBackgroundColor(TD_UDOOST_TD[5], 255);
	TextDrawFont(TD_UDOOST_TD[5], 4);
	TextDrawSetProportional(TD_UDOOST_TD[5], 0);
	TextDrawSetShadow(TD_UDOOST_TD[5], 0);

	TD_UDOOST_TD[6] = TextDrawCreate(224.9923, 174.3831, "LD_BEAT:chit"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[6], 18.0000, 19.0000);
	TextDrawAlignment(TD_UDOOST_TD[6], 1);
	TextDrawColor(TD_UDOOST_TD[6], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[6], 255);
	TextDrawFont(TD_UDOOST_TD[6], 4);
	TextDrawSetProportional(TD_UDOOST_TD[6], 0);
	TextDrawSetShadow(TD_UDOOST_TD[6], 0);

	TD_UDOOST_TD[7] = TextDrawCreate(225.0608, 302.4164, "LD_BEAT:chit"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[7], 18.0000, 19.0000);
	TextDrawAlignment(TD_UDOOST_TD[7], 1);
	TextDrawColor(TD_UDOOST_TD[7], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[7], 255);
	TextDrawFont(TD_UDOOST_TD[7], 4);
	TextDrawSetProportional(TD_UDOOST_TD[7], 0);
	TextDrawSetShadow(TD_UDOOST_TD[7], 0);

	TD_UDOOST_TD[8] = TextDrawCreate(426.9931, 174.4832, "LD_BEAT:chit"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[8], 18.0000, 19.0000);
	TextDrawAlignment(TD_UDOOST_TD[8], 1);
	TextDrawColor(TD_UDOOST_TD[8], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[8], 255);
	TextDrawFont(TD_UDOOST_TD[8], 4);
	TextDrawSetProportional(TD_UDOOST_TD[8], 0);
	TextDrawSetShadow(TD_UDOOST_TD[8], 0);

	TD_UDOOST_TD[9] = TextDrawCreate(427.0876, 302.2164, "LD_BEAT:chit"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[9], 18.0000, 19.0000);
	TextDrawAlignment(TD_UDOOST_TD[9], 1);
	TextDrawColor(TD_UDOOST_TD[9], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[9], 255);
	TextDrawFont(TD_UDOOST_TD[9], 4);
	TextDrawSetProportional(TD_UDOOST_TD[9], 0);
	TextDrawSetShadow(TD_UDOOST_TD[9], 0);

	TD_UDOOST_TD[10] = TextDrawCreate(234.0777, 177.6834, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[10], 202.0000, 140.6712);
	TextDrawAlignment(TD_UDOOST_TD[10], 1);
	TextDrawColor(TD_UDOOST_TD[10], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[10], 255);
	TextDrawFont(TD_UDOOST_TD[10], 4);
	TextDrawSetProportional(TD_UDOOST_TD[10], 0);
	TextDrawSetShadow(TD_UDOOST_TD[10], 0);

	TD_UDOOST_TD[11] = TextDrawCreate(227.8924, 184.4168, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[11], 214.0000, 127.0000);
	TextDrawAlignment(TD_UDOOST_TD[11], 1);
	TextDrawColor(TD_UDOOST_TD[11], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[11], 255);
	TextDrawFont(TD_UDOOST_TD[11], 4);
	TextDrawSetProportional(TD_UDOOST_TD[11], 0);
	TextDrawSetShadow(TD_UDOOST_TD[11], 0);

	TD_UDOOST_TD[12] = TextDrawCreate(225.6073, 175.5167, "LD_BEAT:chit"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[12], 17.0000, 17.0000);
	TextDrawAlignment(TD_UDOOST_TD[12], 1);
	TextDrawColor(TD_UDOOST_TD[12], 808333055);
	TextDrawBackgroundColor(TD_UDOOST_TD[12], 255);
	TextDrawFont(TD_UDOOST_TD[12], 4);
	TextDrawSetProportional(TD_UDOOST_TD[12], 0);
	TextDrawSetShadow(TD_UDOOST_TD[12], 0);

	TD_UDOOST_TD[13] = TextDrawCreate(225.5498, 301.1501, "LD_BEAT:chit"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[13], 17.0000, 20.0000);
	TextDrawAlignment(TD_UDOOST_TD[13], 1);
	TextDrawColor(TD_UDOOST_TD[13], 808333055);
	TextDrawBackgroundColor(TD_UDOOST_TD[13], 255);
	TextDrawFont(TD_UDOOST_TD[13], 4);
	TextDrawSetProportional(TD_UDOOST_TD[13], 0);
	TextDrawSetShadow(TD_UDOOST_TD[13], 0);

	TD_UDOOST_TD[14] = TextDrawCreate(427.4396, 175.3168, "LD_BEAT:chit"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[14], 17.0000, 17.0000);
	TextDrawAlignment(TD_UDOOST_TD[14], 1);
	TextDrawColor(TD_UDOOST_TD[14], 808333055);
	TextDrawBackgroundColor(TD_UDOOST_TD[14], 255);
	TextDrawFont(TD_UDOOST_TD[14], 4);
	TextDrawSetProportional(TD_UDOOST_TD[14], 0);
	TextDrawSetShadow(TD_UDOOST_TD[14], 0);

	TD_UDOOST_TD[15] = TextDrawCreate(427.4081, 303.3835, "LD_BEAT:chit"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[15], 17.0000, 17.0000);
	TextDrawAlignment(TD_UDOOST_TD[15], 1);
	TextDrawColor(TD_UDOOST_TD[15], 808333055);
	TextDrawBackgroundColor(TD_UDOOST_TD[15], 255);
	TextDrawFont(TD_UDOOST_TD[15], 4);
	TextDrawSetProportional(TD_UDOOST_TD[15], 0);
	TextDrawSetShadow(TD_UDOOST_TD[15], 0);

	TD_UDOOST_TD[16] = TextDrawCreate(235.0778, 178.4834, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[16], 200.4808, 139.1221);
	TextDrawAlignment(TD_UDOOST_TD[16], 1);
	TextDrawColor(TD_UDOOST_TD[16], 808333055);
	TextDrawBackgroundColor(TD_UDOOST_TD[16], 255);
	TextDrawFont(TD_UDOOST_TD[16], 4);
	TextDrawSetProportional(TD_UDOOST_TD[16], 0);
	TextDrawSetShadow(TD_UDOOST_TD[16], 0);

	TD_UDOOST_TD[17] = TextDrawCreate(228.5184, 185.4834, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[17], 212.9494, 125.7407);
	TextDrawAlignment(TD_UDOOST_TD[17], 1);
	TextDrawColor(TD_UDOOST_TD[17], 808333055);
	TextDrawBackgroundColor(TD_UDOOST_TD[17], 255);
	TextDrawFont(TD_UDOOST_TD[17], 4);
	TextDrawSetProportional(TD_UDOOST_TD[17], 0);
	TextDrawSetShadow(TD_UDOOST_TD[17], 0);

	TD_UDOOST_TD[18] = TextDrawCreate(237.2629, 195.5001, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[18], 195.3314, 0.6299);
	TextDrawAlignment(TD_UDOOST_TD[18], 1);
	TextDrawColor(TD_UDOOST_TD[18], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[18], 255);
	TextDrawFont(TD_UDOOST_TD[18], 4);
	TextDrawSetProportional(TD_UDOOST_TD[18], 0);
	TextDrawSetShadow(TD_UDOOST_TD[18], 0);

	TD_UDOOST_TD[19] = TextDrawCreate(359.5471, 215.3333, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[19], 47.0000, 1.0000);
	TextDrawAlignment(TD_UDOOST_TD[19], 1);
	TextDrawColor(TD_UDOOST_TD[19], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[19], 255);
	TextDrawFont(TD_UDOOST_TD[19], 4);
	TextDrawSetProportional(TD_UDOOST_TD[19], 0);
	TextDrawSetShadow(TD_UDOOST_TD[19], 0);

	TD_UDOOST_TD[20] = TextDrawCreate(334.9783, 197.5833, "CITIZEN IDENITY CARD"); // ïóñòî
	TextDrawLetterSize(TD_UDOOST_TD[20], 0.1835, 0.6141);
	TextDrawAlignment(TD_UDOOST_TD[20], 2);
	TextDrawColor(TD_UDOOST_TD[20], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[20], 255);
	TextDrawFont(TD_UDOOST_TD[20], 1);
	TextDrawSetProportional(TD_UDOOST_TD[20], 1);
	TextDrawSetShadow(TD_UDOOST_TD[20], 0);

	TD_UDOOST_TD[21] = TextDrawCreate(309.1098, 206.4165, "MA SO CCCD"); // ïóñòî
	TextDrawLetterSize(TD_UDOOST_TD[21], 0.2421, 0.9583);
	TextDrawAlignment(TD_UDOOST_TD[21], 2);
	TextDrawColor(TD_UDOOST_TD[21], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[21], 255);
	TextDrawFont(TD_UDOOST_TD[21], 2);
	TextDrawSetProportional(TD_UDOOST_TD[21], 1);
	TextDrawSetShadow(TD_UDOOST_TD[21], 0);

	TD_UDOOST_TD[22] = TextDrawCreate(355.9618, 207.4997, "ID:"); // ïóñòî
	TextDrawLetterSize(TD_UDOOST_TD[22], 0.1184, 0.5774);
	TextDrawAlignment(TD_UDOOST_TD[22], 2);
	TextDrawColor(TD_UDOOST_TD[22], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[22], 255);
	TextDrawFont(TD_UDOOST_TD[22], 2);
	TextDrawSetProportional(TD_UDOOST_TD[22], 1);
	TextDrawSetShadow(TD_UDOOST_TD[22], 0);

	TD_UDOOST_TD[23] = TextDrawCreate(355.9618, 210.4997, "--"); // ïóñòî
	TextDrawLetterSize(TD_UDOOST_TD[23], 0.1184, 0.5774);
	TextDrawAlignment(TD_UDOOST_TD[23], 2);
	TextDrawColor(TD_UDOOST_TD[23], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[23], 255);
	TextDrawFont(TD_UDOOST_TD[23], 2);
	TextDrawSetProportional(TD_UDOOST_TD[23], 1);
	TextDrawSetShadow(TD_UDOOST_TD[23], 0);

	TD_UDOOST_TD[24] = TextDrawCreate(238.6685, 228.7500, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[24], 47.0000, 1.0000);
	TextDrawAlignment(TD_UDOOST_TD[24], 1);
	TextDrawColor(TD_UDOOST_TD[24], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[24], 255);
	TextDrawFont(TD_UDOOST_TD[24], 4);
	TextDrawSetProportional(TD_UDOOST_TD[24], 0);
	TextDrawSetShadow(TD_UDOOST_TD[24], 0);

	TD_UDOOST_TD[25] = TextDrawCreate(238.7740, 293.4833, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[25], 47.0000, 1.0000);
	TextDrawAlignment(TD_UDOOST_TD[25], 1);
	TextDrawColor(TD_UDOOST_TD[25], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[25], 255);
	TextDrawFont(TD_UDOOST_TD[25], 4);
	TextDrawSetProportional(TD_UDOOST_TD[25], 0);
	TextDrawSetShadow(TD_UDOOST_TD[25], 0);

	TD_UDOOST_TD[26] = TextDrawCreate(238.7741, 294.5663, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[26], 0.5300, -65.7299);
	TextDrawAlignment(TD_UDOOST_TD[26], 1);
	TextDrawColor(TD_UDOOST_TD[26], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[26], 255);
	TextDrawFont(TD_UDOOST_TD[26], 4);
	TextDrawSetProportional(TD_UDOOST_TD[26], 0);
	TextDrawSetShadow(TD_UDOOST_TD[26], 0);

	TD_UDOOST_TD[27] = TextDrawCreate(285.0947, 294.4330, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[27], 0.5300, -65.7299);
	TextDrawAlignment(TD_UDOOST_TD[27], 1);
	TextDrawColor(TD_UDOOST_TD[27], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[27], 255);
	TextDrawFont(TD_UDOOST_TD[27], 4);
	TextDrawSetProportional(TD_UDOOST_TD[27], 0);
	TextDrawSetShadow(TD_UDOOST_TD[27], 0);

	TD_UDOOST_TD[28] = TextDrawCreate(261.6571, 250.0833, "ANH"); // ïóñòî
	TextDrawLetterSize(TD_UDOOST_TD[28], 0.1713, 0.6666);
	TextDrawAlignment(TD_UDOOST_TD[28], 2);
	TextDrawColor(TD_UDOOST_TD[28], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[28], 255);
	TextDrawFont(TD_UDOOST_TD[28], 1);
	TextDrawSetProportional(TD_UDOOST_TD[28], 1);
	TextDrawSetShadow(TD_UDOOST_TD[28], 0);

	TD_UDOOST_TD[29] = TextDrawCreate(261.6571, 255.5832, "DAI"); // ïóñòî
	TextDrawLetterSize(TD_UDOOST_TD[29], 0.1713, 0.6666);
	TextDrawAlignment(TD_UDOOST_TD[29], 2);
	TextDrawColor(TD_UDOOST_TD[29], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[29], 255);
	TextDrawFont(TD_UDOOST_TD[29], 1);
	TextDrawSetProportional(TD_UDOOST_TD[29], 1);
	TextDrawSetShadow(TD_UDOOST_TD[29], 0);

	TD_UDOOST_TD[30] = TextDrawCreate(261.4571, 261.8666, "DIEN"); // ïóñòî
	TextDrawLetterSize(TD_UDOOST_TD[30], 0.1713, 0.6666);
	TextDrawAlignment(TD_UDOOST_TD[30], 2);
	TextDrawColor(TD_UDOOST_TD[30], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[30], 255);
	TextDrawFont(TD_UDOOST_TD[30], 1);
	TextDrawSetProportional(TD_UDOOST_TD[30], 1);
	TextDrawSetShadow(TD_UDOOST_TD[30], 0);

	TD_UDOOST_TD[31] = TextDrawCreate(327.2615, 237.2663, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[31], 97.8003, -1.0000);
	TextDrawAlignment(TD_UDOOST_TD[31], 1);
	TextDrawColor(TD_UDOOST_TD[31], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[31], 255);
	TextDrawFont(TD_UDOOST_TD[31], 4);
	TextDrawSetProportional(TD_UDOOST_TD[31], 0);
	TextDrawSetShadow(TD_UDOOST_TD[31], 0);

	TD_UDOOST_TD[32] = TextDrawCreate(310.8519, 230.8333, "GIOI TINH"); // ïóñòî
	TextDrawLetterSize(TD_UDOOST_TD[32], 0.1961, 0.8183);
	TextDrawAlignment(TD_UDOOST_TD[32], 2);
	TextDrawColor(TD_UDOOST_TD[32], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[32], 255);
	TextDrawFont(TD_UDOOST_TD[32], 1);
	TextDrawSetProportional(TD_UDOOST_TD[32], 1);
	TextDrawSetShadow(TD_UDOOST_TD[32], 0);

	TD_UDOOST_TD[33] = TextDrawCreate(303.0239, 245.3331, "TEN"); // ïóñòî
	TextDrawLetterSize(TD_UDOOST_TD[33], 0.1961, 0.8183);
	TextDrawAlignment(TD_UDOOST_TD[33], 2);
	TextDrawColor(TD_UDOOST_TD[33], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[33], 255);
	TextDrawFont(TD_UDOOST_TD[33], 1);
	TextDrawSetProportional(TD_UDOOST_TD[33], 1);
	TextDrawSetShadow(TD_UDOOST_TD[33], 0);

	TD_UDOOST_TD[34] = TextDrawCreate(313.3246, 260.6329, "NGAY SINH"); // ïóñòî
	TextDrawLetterSize(TD_UDOOST_TD[34], 0.1961, 0.8183);
	TextDrawAlignment(TD_UDOOST_TD[34], 2);
	TextDrawColor(TD_UDOOST_TD[34], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[34], 255);
	TextDrawFont(TD_UDOOST_TD[34], 1);
	TextDrawSetProportional(TD_UDOOST_TD[34], 1);
	TextDrawSetShadow(TD_UDOOST_TD[34], 0);

	TD_UDOOST_TD[35] = TextDrawCreate(308.5243, 277.8327, "QUOC TICH"); // ïóñòî
	TextDrawLetterSize(TD_UDOOST_TD[35], 0.1961, 0.8183);
	TextDrawAlignment(TD_UDOOST_TD[35], 2);
	TextDrawColor(TD_UDOOST_TD[35], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[35], 255);
	TextDrawFont(TD_UDOOST_TD[35], 1);
	TextDrawSetProportional(TD_UDOOST_TD[35], 1);
	TextDrawSetShadow(TD_UDOOST_TD[35], 0);

	TD_UDOOST_TD[36] = TextDrawCreate(364.2785, 302.3326, "(Truc Thuoc Los Santos)"); // ïóñòî
	TextDrawLetterSize(TD_UDOOST_TD[36], 0.1797, 0.7074);
	TextDrawAlignment(TD_UDOOST_TD[36], 2);
	TextDrawColor(TD_UDOOST_TD[36], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[36], 255);
	TextDrawFont(TD_UDOOST_TD[36], 1);
	TextDrawSetProportional(TD_UDOOST_TD[36], 1);
	TextDrawSetShadow(TD_UDOOST_TD[36], 0);

	TD_UDOOST_TD[37] = TextDrawCreate(310.8630, 252.4330, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[37], 114.2302, -0.8000);
	TextDrawAlignment(TD_UDOOST_TD[37], 1);
	TextDrawColor(TD_UDOOST_TD[37], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[37], 255);
	TextDrawFont(TD_UDOOST_TD[37], 4);
	TextDrawSetProportional(TD_UDOOST_TD[37], 0);
	TextDrawSetShadow(TD_UDOOST_TD[37], 0);

	TD_UDOOST_TD[38] = TextDrawCreate(332.4150, 267.5997, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[38], 92.8001, -1.0000);
	TextDrawAlignment(TD_UDOOST_TD[38], 1);
	TextDrawColor(TD_UDOOST_TD[38], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[38], 255);
	TextDrawFont(TD_UDOOST_TD[38], 4);
	TextDrawSetProportional(TD_UDOOST_TD[38], 0);
	TextDrawSetShadow(TD_UDOOST_TD[38], 0);

	TD_UDOOST_TD[39] = TextDrawCreate(322.1074, 284.5163, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[39], 102.9802, -1.0000);
	TextDrawAlignment(TD_UDOOST_TD[39], 1);
	TextDrawColor(TD_UDOOST_TD[39], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[39], 255);
	TextDrawFont(TD_UDOOST_TD[39], 4);
	TextDrawSetProportional(TD_UDOOST_TD[39], 0);
	TextDrawSetShadow(TD_UDOOST_TD[39], 0);

	TD_UDOOST_TD[40] = TextDrawCreate(297.2757, 303.1829, "LD_SPAC:white"); // ïóñòî
	TextDrawTextSize(TD_UDOOST_TD[40], 128.0000, -1.0000);
	TextDrawAlignment(TD_UDOOST_TD[40], 1);
	TextDrawColor(TD_UDOOST_TD[40], 1336760063);
	TextDrawBackgroundColor(TD_UDOOST_TD[40], 255);
	TextDrawFont(TD_UDOOST_TD[40], 4);
	TextDrawSetProportional(TD_UDOOST_TD[40], 0);
	TextDrawSetShadow(TD_UDOOST_TD[40], 0);
}



new PlayerText:TD_UDOOST_PTD[MAX_PLAYERS][7];

stock CCCDPTD(playerid)
{
	TD_UDOOST_PTD[playerid][0] = CreatePlayerTextDraw(playerid, 334.4099, 186.5833, "CAN CUOC CONG DAN"); // ïóñòî
	PlayerTextDrawLetterSize(playerid, TD_UDOOST_PTD[playerid][0], 0.2219, 0.8241);
	PlayerTextDrawAlignment(playerid, TD_UDOOST_PTD[playerid][0], 2);
	PlayerTextDrawColor(playerid, TD_UDOOST_PTD[playerid][0], 1336760063);
	PlayerTextDrawBackgroundColor(playerid, TD_UDOOST_PTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, TD_UDOOST_PTD[playerid][0], 2);
	PlayerTextDrawSetProportional(playerid, TD_UDOOST_PTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, TD_UDOOST_PTD[playerid][0], 0);

	TD_UDOOST_PTD[playerid][1] = CreatePlayerTextDraw(playerid, 382.8675, 206.4331, "22368271"); // ïóñòî
	PlayerTextDrawLetterSize(playerid, TD_UDOOST_PTD[playerid][1], 0.2013, 0.9233);
	PlayerTextDrawAlignment(playerid, TD_UDOOST_PTD[playerid][1], 2);
	PlayerTextDrawColor(playerid, TD_UDOOST_PTD[playerid][1], 1336760063);
	PlayerTextDrawBackgroundColor(playerid, TD_UDOOST_PTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, TD_UDOOST_PTD[playerid][1], 2);
	PlayerTextDrawSetProportional(playerid, TD_UDOOST_PTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, TD_UDOOST_PTD[playerid][1], 0);

	TD_UDOOST_PTD[playerid][2] = CreatePlayerTextDraw(playerid, 375.1761, 227.7831, "NAM"); // ïóñòî
	PlayerTextDrawLetterSize(playerid, TD_UDOOST_PTD[playerid][2], 0.3194, 0.9408);
	PlayerTextDrawAlignment(playerid, TD_UDOOST_PTD[playerid][2], 2);
	PlayerTextDrawColor(playerid, TD_UDOOST_PTD[playerid][2], 1336760063);
	PlayerTextDrawBackgroundColor(playerid, TD_UDOOST_PTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, TD_UDOOST_PTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, TD_UDOOST_PTD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, TD_UDOOST_PTD[playerid][2], 0);

	TD_UDOOST_PTD[playerid][3] = CreatePlayerTextDraw(playerid, 362.0574, 242.0331, "OPERA_S"); // ïóñòî
	PlayerTextDrawLetterSize(playerid, TD_UDOOST_PTD[playerid][3], 0.3194, 0.9408);
	PlayerTextDrawAlignment(playerid, TD_UDOOST_PTD[playerid][3], 2);
	PlayerTextDrawColor(playerid, TD_UDOOST_PTD[playerid][3], 1336760063);
	PlayerTextDrawBackgroundColor(playerid, TD_UDOOST_PTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, TD_UDOOST_PTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, TD_UDOOST_PTD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, TD_UDOOST_PTD[playerid][3], 0);

	TD_UDOOST_PTD[playerid][4] = CreatePlayerTextDraw(playerid, 381.7354, 257.1998, "1932-07-12"); // ïóñòî
	PlayerTextDrawLetterSize(playerid, TD_UDOOST_PTD[playerid][4], 0.3194, 0.9408);
	PlayerTextDrawAlignment(playerid, TD_UDOOST_PTD[playerid][4], 2);
	PlayerTextDrawColor(playerid, TD_UDOOST_PTD[playerid][4], 1336760063);
	PlayerTextDrawBackgroundColor(playerid, TD_UDOOST_PTD[playerid][4], 255);
	PlayerTextDrawFont(playerid, TD_UDOOST_PTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, TD_UDOOST_PTD[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, TD_UDOOST_PTD[playerid][4], 0);

	TD_UDOOST_PTD[playerid][5] = CreatePlayerTextDraw(playerid, 369.7113, 274.1165, "LOS SANTOS"); // ïóñòî
	PlayerTextDrawLetterSize(playerid, TD_UDOOST_PTD[playerid][5], 0.3194, 0.9408);
	PlayerTextDrawAlignment(playerid, TD_UDOOST_PTD[playerid][5], 2);
	PlayerTextDrawColor(playerid, TD_UDOOST_PTD[playerid][5], 1336760063);
	PlayerTextDrawBackgroundColor(playerid, TD_UDOOST_PTD[playerid][5], 255);
	PlayerTextDrawFont(playerid, TD_UDOOST_PTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, TD_UDOOST_PTD[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, TD_UDOOST_PTD[playerid][5], 0);

	TD_UDOOST_PTD[playerid][6] = CreatePlayerTextDraw(playerid, 361.2093, 294.5331, "LSPD - Rank 9"); // ïóñòî
	PlayerTextDrawLetterSize(playerid, TD_UDOOST_PTD[playerid][6], 0.2589, 0.7833);
	PlayerTextDrawAlignment(playerid, TD_UDOOST_PTD[playerid][6], 2);
	PlayerTextDrawColor(playerid, TD_UDOOST_PTD[playerid][6], 1336760063);
	PlayerTextDrawBackgroundColor(playerid, TD_UDOOST_PTD[playerid][6], 255);
	PlayerTextDrawFont(playerid, TD_UDOOST_PTD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, TD_UDOOST_PTD[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, TD_UDOOST_PTD[playerid][6], 0);
}

CMD:cccd(playerid) {
	if(PlayerInfo[playerid][pCMND] == 0) return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong co CCCD de show");
	if(OpenCCCD[playerid] == 0)
	{
		new string[128], sext[16], org[128], employer[GROUP_MAX_NAME_LEN], rank[GROUP_MAX_RANK_LEN], division[GROUP_MAX_DIV_LEN];
		if(PlayerInfo[playerid][pSex] == 1) { sext = "NAM"; } else { sext = "NU"; }
		for(new w = 0; w < 40; w++)
		{
			TextDrawShowForPlayer(playerid,TD_UDOOST_TD[w]);
		}
		format(string, sizeof(string), "%d", PlayerInfo[playerid][pCMND]);
		PlayerTextDrawSetString(playerid,TD_UDOOST_PTD[playerid][1],string);
		PlayerTextDrawSetString(playerid,TD_UDOOST_PTD[playerid][2],sext);
		PlayerTextDrawSetString(playerid,TD_UDOOST_PTD[playerid][3],GetPlayerNameEx(playerid));
		PlayerTextDrawSetString(playerid,TD_UDOOST_PTD[playerid][4],PlayerInfo[playerid][pBirthDate]);
		PlayerTextDrawSetString(playerid,TD_UDOOST_PTD[playerid][5],"LOS SANTOS");
		if(PlayerInfo[playerid][pMember] != INVALID_GROUP_ID)
		{
			GetPlayerGroupInfo(playerid, rank, division, employer);
			format(org, sizeof(org), "%s (%d) - Rank: %s (%d)", employer, PlayerInfo[playerid][pMember], rank, PlayerInfo[playerid][pRank]);
		}
		else if(PlayerInfo[playerid][pFMember] < INVALID_FAMILY_ID)
		{
			if(0 <= PlayerInfo[playerid][pDivision] < 5) format(division, sizeof(division), "%s", FamilyDivisionInfo[PlayerInfo[playerid][pFMember]][PlayerInfo[playerid][pDivision]]);
			else division = "None";
			format(org, sizeof(org), "%s (%d) - Rank: %s (%d)", FamilyInfo[PlayerInfo[playerid][pFMember]][FamilyName], PlayerInfo[playerid][pFMember], FamilyRankInfo[PlayerInfo[playerid][pFMember]][PlayerInfo[playerid][pRank]], PlayerInfo[playerid][pRank]);
		}
		PlayerTextDrawSetString(playerid,TD_UDOOST_PTD[playerid][6],org);
		for(new w = 0; w < 7; w++)
		{
			PlayerTextDrawShow(playerid,TD_UDOOST_PTD[playerid][w]);
		}
		SendClientMessageEx(playerid, COLOR_GRAD1, "Bam Y hoac [/cccd] de tat");
		OpenCCCD[playerid] = 1;
	}
	else if(OpenCCCD[playerid] == 1){
		for(new w = 0; w < 40; w++)
		{
			TextDrawHideForPlayer(playerid,TD_UDOOST_TD[w]);
		}
		for(new w = 0; w < 7; w++)
		{
			PlayerTextDrawHide(playerid,TD_UDOOST_PTD[playerid][w]);
		}
		if(WannaShowCCCD[playerid] != 0)
		{
			WannaShowCCCD[playerid] = 0;
			PlayerShowCCCD[playerid] = INVALID_PLAYER_ID;
		}
		OpenCCCD[playerid] = 0;
	}
	return 1;
}

stock AShowCCCD(playerid,giveplayerid) {
	if(OpenCCCD[playerid] == 0)
	{
		new string[128], sext[16], org[128], employer[GROUP_MAX_NAME_LEN], rank[GROUP_MAX_RANK_LEN], division[GROUP_MAX_DIV_LEN];
		if(PlayerInfo[giveplayerid][pSex] == 1) { sext = "NAM"; } else { sext = "NU"; }
		for(new w = 0; w < 40; w++)
		{
			TextDrawShowForPlayer(playerid,TD_UDOOST_TD[w]);
		}
		format(string, sizeof(string), "%d", PlayerInfo[playerid][pCMND]);
		PlayerTextDrawSetString(playerid,TD_UDOOST_PTD[giveplayerid][1],string);
		PlayerTextDrawSetString(playerid,TD_UDOOST_PTD[giveplayerid][2],sext);
		PlayerTextDrawSetString(playerid,TD_UDOOST_PTD[giveplayerid][3],GetPlayerNameEx(giveplayerid));
		PlayerTextDrawSetString(playerid,TD_UDOOST_PTD[giveplayerid][4],PlayerInfo[giveplayerid][pBirthDate]);
		PlayerTextDrawSetString(playerid,TD_UDOOST_PTD[giveplayerid][5],"LOS SANTOS");
		if(PlayerInfo[giveplayerid][pMember] != INVALID_GROUP_ID)
		{
			GetPlayerGroupInfo(giveplayerid, rank, division, employer);
			format(org, sizeof(org), "%s (%d) - Rank: %s (%d)", employer, PlayerInfo[giveplayerid][pMember], rank, PlayerInfo[giveplayerid][pRank]);
		}
		else if(PlayerInfo[giveplayerid][pFMember] < INVALID_FAMILY_ID)
		{
			if(0 <= PlayerInfo[giveplayerid][pDivision] < 5) format(division, sizeof(division), "%s", FamilyDivisionInfo[PlayerInfo[giveplayerid][pFMember]][PlayerInfo[giveplayerid][pDivision]]);
			else division = "None";
			format(org, sizeof(org), "%s (%d) - Rank: %s (%d)", FamilyInfo[PlayerInfo[giveplayerid][pFMember]][FamilyName], PlayerInfo[giveplayerid][pFMember], FamilyRankInfo[PlayerInfo[giveplayerid][pFMember]][PlayerInfo[giveplayerid][pRank]], PlayerInfo[giveplayerid][pRank]);
		}
		PlayerTextDrawSetString(playerid,TD_UDOOST_PTD[giveplayerid][6],org);
		for(new w = 0; w < 7; w++)
		{
			PlayerTextDrawShow(playerid,TD_UDOOST_PTD[giveplayerid][w]);
		}
		SendClientMessageEx(playerid, COLOR_GRAD1, "Bam Y de tat");
		OpenCCCD[playerid] = 1;
	}
	else if(OpenCCCD[playerid] == 1){
		for(new w = 0; w < 40; w++)
		{
			TextDrawHideForPlayer(playerid,TD_UDOOST_TD[w]);
		}
		for(new w = 0; w < 7; w++)
		{
			PlayerTextDrawHide(playerid,TD_UDOOST_PTD[playerid][w]);
		}
		if(WannaShowCCCD[playerid] != 0)
		{
			WannaShowCCCD[playerid] = 0;
			PlayerShowCCCD[playerid] = INVALID_PLAYER_ID;
		}
		OpenCCCD[playerid] = 0;
	}
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys & KEY_YES)
	{
		if(OpenCCCD[playerid] == 1)
		{
			for(new w = 0; w < 40; w++)
			{
				TextDrawHideForPlayer(playerid,TD_UDOOST_TD[w]);
			}
			for(new w = 0; w < 7; w++)
			{
				PlayerTextDrawHide(playerid,TD_UDOOST_PTD[playerid][w]);
			}
			if(WannaShowCCCD[playerid] != 0)
			{
				WannaShowCCCD[playerid] = 0;
				PlayerShowCCCD[playerid] = INVALID_PLAYER_ID;
			}
			OpenCCCD[playerid] = 0;
		}
		if(WannaShowCCCD[playerid] == 1)
		{
			new giveplayerid = PlayerShowCCCD[playerid];
			new string[128];
			format(string, sizeof(string), "{FF8000}* {C2A2DA}%s (( da dong y xem CCCD ))", GetPlayerNameEx(playerid));
			ProxDetectorWrap(playerid, string, 92, 30.0, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
			return AShowCCCD(playerid,giveplayerid);
		}
	}
	if(newkeys & KEY_NO)
	{
		if(WannaShowCCCD[playerid] != 0)
		{
				WannaShowCCCD[playerid] = 0;
				PlayerShowCCCD[playerid] = INVALID_PLAYER_ID;
				new string[128];
				format(string, sizeof(string), "{FF8000}* {C2A2DA}%s (( da tu choi xem CCCD ))", GetPlayerNameEx(playerid));
				ProxDetectorWrap(playerid, string, 92, 30.0, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
		}
	}
	return 1;
}


CMD:showcccd(playerid, params[])
{
	new Float:pVars[3], giveplayerid, string[128];
	if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "{FF0000}[CCCD]{FFFFFF}SU DUNG: /showcccd [playerid]");
	if(WannaShowCCCD[giveplayerid] > 0) return SendClientMessageEx(playerid, COLOR_WHITE, "{FF0000}[CCCD]{FFFFFF}Nguoi choi dang xem CCCD cua 1 ai do!");
	if(PlayerInfo[playerid][pCMND] == 0) return SendClientMessageEx(playerid, COLOR_GRAD1, "{FF0000}[CCCD]{FFFFFF}Ban khong co CCCD de show");
	if(IsPlayerConnected(giveplayerid)) {
		if(playerid == giveplayerid)
			return SendClientMessage(playerid, COLOR_RED, "{FF0000}[CCCD]{FFFFFF}[/cccd] de xem can cuoc cong dan cua chinh minh!.");
		GetPlayerPos(giveplayerid, pVars[0], pVars[1], pVars[2]);
		if(!IsPlayerInRangeOfPoint(playerid, 5.0,pVars[0], pVars[1], pVars[2]))
			return SendClientMessage(playerid, COLOR_RED, "{FF0000}[CCCD]{FFFFFF}Ban khong dung gan nguoi choi!.");
		WannaShowCCCD[giveplayerid] = 1;
		PlayerShowCCCD[giveplayerid] = playerid;
		format(string, sizeof(string), "{FF0000}[CCCD]{FFFFFF}Ban da dua CCCD cho %s", GetPlayerNameEx(giveplayerid));
		SendClientMessage(playerid, COLOR_RED, string);
		format(string, sizeof(string), "{FF8000}* {C2A2DA}%s dua CCCD cho %s xem", GetPlayerNameEx(playerid),GetPlayerNameEx(giveplayerid));
		ProxDetectorWrap(playerid, string, 92, 30.0, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
		format(string, sizeof(string), "{FF8000}* {C2A2DA}%s (( Lieu anh ta co xem CCCD cua minh? ))", GetPlayerNameEx(playerid));
		ProxDetectorWrap(playerid, string, 92, 30.0, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
		format(string, sizeof(string), "{FF0000}[CCCD]{FFFFFF}Nguoi choi %s muon show CCCD cho ban, bam Y de dong y - Bam N de tu choi", GetPlayerNameEx(playerid));
		SendClientMessage(giveplayerid, COLOR_RED, string);
	}
	else return SendClientMessage(playerid, COLOR_RED, "{FF0000}[CCCD]{FFFFFF}Khong tim thay nguoi choi!.");
	return 1;
}

