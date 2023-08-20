forward LoadTextDraws();
public LoadTextDraws()
{
	//edit toys mobile
	ChinhToyTD[0] = TextDrawCreate(448.360076, 128.166687, "box");
	TextDrawLetterSize(ChinhToyTD[0], 0.000000, 26.163978);
	TextDrawTextSize(ChinhToyTD[0], 601.000000, 0.000000);
	TextDrawAlignment(ChinhToyTD[0], 1);
	TextDrawColor(ChinhToyTD[0], -1);
	TextDrawUseBox(ChinhToyTD[0], 1);
	TextDrawBoxColor(ChinhToyTD[0], 136);
	TextDrawSetShadow(ChinhToyTD[0], 0);
	TextDrawSetOutline(ChinhToyTD[0], 0);
	TextDrawBackgroundColor(ChinhToyTD[0], 255);
	TextDrawFont(ChinhToyTD[0], 1);
	TextDrawSetProportional(ChinhToyTD[0], 1);
	TextDrawSetShadow(ChinhToyTD[0], 0);

	ChinhToyTD[1] = TextDrawCreate(524.260925, 112.999984, "CHINH SUA TOY");
	TextDrawLetterSize(ChinhToyTD[1], 0.267993, 1.227542);
	TextDrawTextSize(ChinhToyTD[1], 0.000000, 152.000000);
	TextDrawAlignment(ChinhToyTD[1], 2);
	TextDrawColor(ChinhToyTD[1], -1);
	TextDrawUseBox(ChinhToyTD[1], 1);
	TextDrawBoxColor(ChinhToyTD[1], -1061109505);
	TextDrawSetShadow(ChinhToyTD[1], 0);
	TextDrawSetOutline(ChinhToyTD[1], 1);
	TextDrawBackgroundColor(ChinhToyTD[1], 255);
	TextDrawFont(ChinhToyTD[1], 2);
	TextDrawSetProportional(ChinhToyTD[1], 1);
	TextDrawSetShadow(ChinhToyTD[1], 0);

	ChinhToyTD[2] = TextDrawCreate(529.883422, 294.416687, "THAY DOI");
	TextDrawLetterSize(ChinhToyTD[2], 0.327847, 1.296666);
	TextDrawAlignment(ChinhToyTD[2], 2);
	TextDrawColor(ChinhToyTD[2], -1);
	TextDrawSetShadow(ChinhToyTD[2], 1);
	TextDrawSetOutline(ChinhToyTD[2], 1);
	TextDrawBackgroundColor(ChinhToyTD[2], 255);
	TextDrawFont(ChinhToyTD[2], 2);
	TextDrawSetProportional(ChinhToyTD[2], 1);
	TextDrawSetShadow(ChinhToyTD[2], 1);

	ChinhToyTD[3] = TextDrawCreate(527.540710, 129.916702, "VI TRI");
	TextDrawLetterSize(ChinhToyTD[3], 0.327847, 1.296666);
	TextDrawAlignment(ChinhToyTD[3], 2);
	TextDrawColor(ChinhToyTD[3], -1);
	TextDrawSetShadow(ChinhToyTD[3], 1);
	TextDrawSetOutline(ChinhToyTD[3], 1);
	TextDrawBackgroundColor(ChinhToyTD[3], 255);
	TextDrawFont(ChinhToyTD[3], 2);
	TextDrawSetProportional(ChinhToyTD[3], 1);
	TextDrawSetShadow(ChinhToyTD[3], 1);

	ChinhToyTD[4] = TextDrawCreate(528.477783, 187.666717, "XOAY");
	TextDrawLetterSize(ChinhToyTD[4], 0.327847, 1.296666);
	TextDrawAlignment(ChinhToyTD[4], 2);
	TextDrawColor(ChinhToyTD[4], -1);
	TextDrawSetShadow(ChinhToyTD[4], 1);
	TextDrawSetOutline(ChinhToyTD[4], 1);
	TextDrawBackgroundColor(ChinhToyTD[4], 255);
	TextDrawFont(ChinhToyTD[4], 2);
	TextDrawSetProportional(ChinhToyTD[4], 1);
	TextDrawSetShadow(ChinhToyTD[4], 1);

	ChinhToyTD[5] = TextDrawCreate(531.289001, 246.583328, "kich thuoc");
	TextDrawLetterSize(ChinhToyTD[5], 0.327847, 1.296666);
	TextDrawAlignment(ChinhToyTD[5], 2);
	TextDrawColor(ChinhToyTD[5], -1);
	TextDrawSetShadow(ChinhToyTD[5], 1);
	TextDrawSetOutline(ChinhToyTD[5], 1);
	TextDrawBackgroundColor(ChinhToyTD[5], 255);
	TextDrawFont(ChinhToyTD[5], 2);
	TextDrawSetProportional(ChinhToyTD[5], 1);
	TextDrawSetShadow(ChinhToyTD[5], 1);
	//logo
	LogoSV[0] = TextDrawCreate(12.083335, 430.074127, "Windows .NET");
	TextDrawLetterSize(LogoSV[0], 0.346249, 1.527405);
	TextDrawAlignment(LogoSV[0], 1);
	TextDrawColor(LogoSV[0], -1);
	TextDrawSetShadow(LogoSV[0], 0);
	TextDrawSetOutline(LogoSV[0], 1);
	TextDrawBackgroundColor(LogoSV[0], 255);
	TextDrawFont(LogoSV[0], 1);
	TextDrawSetProportional(LogoSV[0], 1);
	TextDrawSetShadow(LogoSV[0], 0);

	LogoSV[1] = TextDrawCreate(8.333318, 428.777954, "LD_SPAC:white");
	TextDrawLetterSize(LogoSV[1], 0.000000, 0.000000);
	TextDrawTextSize(LogoSV[1], 81.000000, 20.000000);
	TextDrawAlignment(LogoSV[1], 1);
	TextDrawColor(LogoSV[1], -858994141);
	TextDrawSetShadow(LogoSV[1], 0);
	TextDrawSetOutline(LogoSV[1], 0);
	TextDrawBackgroundColor(LogoSV[1], 255);
	TextDrawFont(LogoSV[1], 4);
	TextDrawSetProportional(LogoSV[1], 0);
	TextDrawSetShadow(LogoSV[1], 0);
    //time samp
    Date = TextDrawCreate(547.000000,11.000000,"--");
	TextDrawFont(Date,3);
	TextDrawLetterSize(Date,0.399999,1.600000);
    TextDrawColor(Date,0xffffffff);
	Time = TextDrawCreate(547.000000,28.000000,"--");
	TextDrawFont(Time,3);
	TextDrawLetterSize(Time,0.399999,1.600000);
	TextDrawColor(Time,0xffffffff);
	//do xe
	wTuning1[0] = TextDrawCreate(560.000000, 102.000000, "_");
	TextDrawBackgroundColor(wTuning1[0], 255);
	TextDrawFont(wTuning1[0], 1);
	TextDrawLetterSize(wTuning1[0], 0.709999, 1.599998);
	TextDrawColor(wTuning1[0], 852308735);
	TextDrawSetOutline(wTuning1[0], 0);
	TextDrawSetProportional(wTuning1[0], 1);
	TextDrawSetShadow(wTuning1[0], 1);
	TextDrawUseBox(wTuning1[0], 1);
	TextDrawBoxColor(wTuning1[0], 793726975);
	TextDrawTextSize(wTuning1[0], 72.000000, 20.000000);
	TextDrawSetSelectable(wTuning1[0], 0);

	wTuning1[1] = TextDrawCreate(560.000000, 120.000000, "_");
	TextDrawBackgroundColor(wTuning1[1], 255);
	TextDrawFont(wTuning1[1], 1);
	TextDrawLetterSize(wTuning1[1], 0.709999, 1.699998);
	TextDrawColor(wTuning1[1], -1);
	TextDrawSetOutline(wTuning1[1], 0);
	TextDrawSetProportional(wTuning1[1], 1);
	TextDrawSetShadow(wTuning1[1], 1);
	TextDrawUseBox(wTuning1[1], 1);
	TextDrawBoxColor(wTuning1[1], 150);
	TextDrawTextSize(wTuning1[1], 72.000000, 20.000000);
	TextDrawSetSelectable(wTuning1[1], 0);

	wTuning1[2] = TextDrawCreate(243.000000, 144.000000, "_");
	TextDrawBackgroundColor(wTuning1[2], 255);
	TextDrawFont(wTuning1[2], 1);
	TextDrawLetterSize(wTuning1[2], 0.709999, 21.299999);
	TextDrawColor(wTuning1[2], -1);
	TextDrawSetOutline(wTuning1[2], 0);
	TextDrawSetProportional(wTuning1[2], 1);
	TextDrawSetShadow(wTuning1[2], 1);
	TextDrawUseBox(wTuning1[2], 1);
	TextDrawBoxColor(wTuning1[2], 150);
	TextDrawTextSize(wTuning1[2], 72.000000, 19.000000);
	TextDrawSetSelectable(wTuning1[2], 0);

	wTuning1[3] = TextDrawCreate(271.000000, 105.000000, "Chuc Nang Do Xe Mobile / PC");
	TextDrawBackgroundColor(wTuning1[3], 255);
	TextDrawFont(wTuning1[3], 2);
	TextDrawLetterSize(wTuning1[3], 0.300000, 1.000000);
	TextDrawColor(wTuning1[3], -1);
	TextDrawSetOutline(wTuning1[3], 0);
	TextDrawSetProportional(wTuning1[3], 1);
	TextDrawSetShadow(wTuning1[3], 0);
	TextDrawSetSelectable(wTuning1[3], 0);

	wTuning1[4] = TextDrawCreate(368.000000, 152.000000, "Mechanic Central v1.0");
	TextDrawBackgroundColor(wTuning1[4], 255);
	TextDrawFont(wTuning1[4], 2);
	TextDrawLetterSize(wTuning1[4], 0.250000, 1.100000);
	TextDrawColor(wTuning1[4], -1);
	TextDrawSetOutline(wTuning1[4], 0);
	TextDrawSetProportional(wTuning1[4], 1);
	TextDrawSetShadow(wTuning1[4], 0);
	TextDrawSetSelectable(wTuning1[4], 0);

	wTuning1[5] = TextDrawCreate(560.000000, 144.000000, "_");
	TextDrawBackgroundColor(wTuning1[5], 255);
	TextDrawFont(wTuning1[5], 1);
	TextDrawLetterSize(wTuning1[5], 0.709999, 2.900000);
	TextDrawColor(wTuning1[5], -1);
	TextDrawSetOutline(wTuning1[5], 0);
	TextDrawSetProportional(wTuning1[5], 1);
	TextDrawSetShadow(wTuning1[5], 1);
	TextDrawUseBox(wTuning1[5], 1);
	TextDrawBoxColor(wTuning1[5], 793726975);
	TextDrawTextSize(wTuning1[5], 247.000000, 19.000000);
	TextDrawSetSelectable(wTuning1[5], 0);

	wTuning1[6] = TextDrawCreate(538.000000, 105.000000, "X");
	TextDrawBackgroundColor(wTuning1[6], 255);
	TextDrawFont(wTuning1[6], 1);
	TextDrawLetterSize(wTuning1[6], 0.500000, 1.000000);
	TextDrawColor(wTuning1[6], 255);
	TextDrawSetOutline(wTuning1[6], 0);
	TextDrawSetProportional(wTuning1[6], 1);
	TextDrawSetShadow(wTuning1[6], 0);
	TextDrawUseBox(wTuning1[6], 1);
	TextDrawBoxColor(wTuning1[6], 0);
	TextDrawTextSize(wTuning1[6], 550.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[6], 1);

	wTuning1[7] = TextDrawCreate(88.000000, 123.000000, "Wheels");
	TextDrawBackgroundColor(wTuning1[7], 255);
	TextDrawFont(wTuning1[7], 2);
	TextDrawLetterSize(wTuning1[7], 0.300000, 1.000000);
	TextDrawColor(wTuning1[7], -1);
	TextDrawSetOutline(wTuning1[7], 0);
	TextDrawSetProportional(wTuning1[7], 1);
	TextDrawSetShadow(wTuning1[7], 0);
	TextDrawUseBox(wTuning1[7], 1);
	TextDrawBoxColor(wTuning1[7], 0);
	TextDrawTextSize(wTuning1[7], 137.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[7], 0);

	wTuning1[8] = TextDrawCreate(150.000000, 123.000000, "Color");
	TextDrawBackgroundColor(wTuning1[8], 255);
	TextDrawFont(wTuning1[8], 2);
	TextDrawLetterSize(wTuning1[8], 0.300000, 1.000000);
	TextDrawColor(wTuning1[8], -1);
	TextDrawSetOutline(wTuning1[8], 0);
	TextDrawSetProportional(wTuning1[8], 1);
	TextDrawSetShadow(wTuning1[8], 0);
	TextDrawUseBox(wTuning1[8], 1);
	TextDrawBoxColor(wTuning1[8], 0);
	TextDrawTextSize(wTuning1[8], 190.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[8], 0);

	wTuning1[9] = TextDrawCreate(204.000000, 123.000000, "paintjobs");
	TextDrawBackgroundColor(wTuning1[9], 255);
	TextDrawFont(wTuning1[9], 2);
	TextDrawLetterSize(wTuning1[9], 0.300000, 1.000000);
	TextDrawColor(wTuning1[9], -1);
	TextDrawSetOutline(wTuning1[9], 0);
	TextDrawSetProportional(wTuning1[9], 1);
	TextDrawSetShadow(wTuning1[9], 0);
	TextDrawUseBox(wTuning1[9], 1);
	TextDrawBoxColor(wTuning1[9], 0);
	TextDrawTextSize(wTuning1[9], 274.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[9], 0);

	wTuning1[10] = TextDrawCreate(284.000000, 123.000000, "nitro");
	TextDrawBackgroundColor(wTuning1[10], 255);
	TextDrawFont(wTuning1[10], 2);
	TextDrawLetterSize(wTuning1[10], 0.300000, 1.000000);
	TextDrawColor(wTuning1[10], -1);
	TextDrawSetOutline(wTuning1[10], 0);
	TextDrawSetProportional(wTuning1[10], 1);
	TextDrawSetShadow(wTuning1[10], 0);
	TextDrawUseBox(wTuning1[10], 1);
	TextDrawBoxColor(wTuning1[10], 0);
	TextDrawTextSize(wTuning1[10], 320.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[10], 0);

	wTuning1[11] = TextDrawCreate(334.000000, 123.000000, "Spoiler");
	TextDrawBackgroundColor(wTuning1[11], 255);
	TextDrawFont(wTuning1[11], 2);
	TextDrawLetterSize(wTuning1[11], 0.300000, 1.000000);
	TextDrawColor(wTuning1[11], -1);
	TextDrawSetOutline(wTuning1[11], 0);
	TextDrawSetProportional(wTuning1[11], 1);
	TextDrawSetShadow(wTuning1[11], 0);
	TextDrawUseBox(wTuning1[11], 1);
	TextDrawBoxColor(wTuning1[11], 0);
	TextDrawTextSize(wTuning1[11], 411.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[11], true);

	wTuning1[12] = TextDrawCreate(424.000000, 123.000000, "Roof");
	TextDrawBackgroundColor(wTuning1[12], 255);
	TextDrawFont(wTuning1[12], 2);
	TextDrawLetterSize(wTuning1[12], 0.300000, 1.000000);
	TextDrawColor(wTuning1[12], -1);
	TextDrawSetOutline(wTuning1[12], 0);
	TextDrawSetProportional(wTuning1[12], 1);
	TextDrawSetShadow(wTuning1[12], 0);
	TextDrawUseBox(wTuning1[12], 1);
	TextDrawBoxColor(wTuning1[12], 0);
	TextDrawTextSize(wTuning1[12], 457.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[12], true);


	wTuning1[13] = TextDrawCreate(466.000000, 123.000000, "Auto");
	TextDrawBackgroundColor(wTuning1[13], 255);
	TextDrawFont(wTuning1[13], 2);
	TextDrawLetterSize(wTuning1[13], 0.300000, 1.000000);
	TextDrawColor(wTuning1[13], -1);
	TextDrawSetOutline(wTuning1[13], 0);
	TextDrawSetProportional(wTuning1[13], 1);
	TextDrawSetShadow(wTuning1[13], 0);
	TextDrawUseBox(wTuning1[13], 1);
	TextDrawBoxColor(wTuning1[13], 0);
	TextDrawTextSize(wTuning1[13], 542.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[13], 0);


	wTuning1[14] = TextDrawCreate(88.000000, 149.000000, "Black___________________");
	TextDrawBackgroundColor(wTuning1[14], 255);
	TextDrawFont(wTuning1[14], 2);
	TextDrawLetterSize(wTuning1[14], 0.300000, 1.000000);
	TextDrawColor(wTuning1[14], -1);
	TextDrawSetOutline(wTuning1[14], 0);
	TextDrawSetProportional(wTuning1[14], 1);
	TextDrawSetShadow(wTuning1[14], 0);
	TextDrawUseBox(wTuning1[14], 1);
	TextDrawBoxColor(wTuning1[14], 0);
	TextDrawTextSize(wTuning1[14], 190.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[14], 0);

	wTuning1[15] = TextDrawCreate(88.000000, 168.000000, "White____________________");
	TextDrawBackgroundColor(wTuning1[15], 255);
	TextDrawFont(wTuning1[15], 2);
	TextDrawLetterSize(wTuning1[15], 0.300000, 1.000000);
	TextDrawColor(wTuning1[15], -1);
	TextDrawSetOutline(wTuning1[15], 0);
	TextDrawSetProportional(wTuning1[15], 1);
	TextDrawSetShadow(wTuning1[15], 0);
	TextDrawUseBox(wTuning1[15], 1);
	TextDrawBoxColor(wTuning1[15], 0);
	TextDrawTextSize(wTuning1[15], 170.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[15], 0);

	wTuning1[16] = TextDrawCreate(88.000000, 190.000000, "Green___________________");
	TextDrawBackgroundColor(wTuning1[16], 255);
	TextDrawFont(wTuning1[16], 2);
	TextDrawLetterSize(wTuning1[16], 0.300000, 1.000000);
	TextDrawColor(wTuning1[16], -1);
	TextDrawSetOutline(wTuning1[16], 0);
	TextDrawSetProportional(wTuning1[16], 1);
	TextDrawSetShadow(wTuning1[16], 0);
	TextDrawUseBox(wTuning1[16], 1);
	TextDrawBoxColor(wTuning1[16], 0);
	TextDrawTextSize(wTuning1[16], 171.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[16], 0);

	wTuning1[17] = TextDrawCreate(88.000000, 213.000000, "Cyan_____________________");
	TextDrawBackgroundColor(wTuning1[17], 255);
	TextDrawFont(wTuning1[17], 2);
	TextDrawLetterSize(wTuning1[17], 0.300000, 1.000000);
	TextDrawColor(wTuning1[17], -1);
	TextDrawSetOutline(wTuning1[17], 0);
	TextDrawSetProportional(wTuning1[17], 1);
	TextDrawSetShadow(wTuning1[17], 0);
	TextDrawUseBox(wTuning1[17], 1);
	TextDrawBoxColor(wTuning1[17], 0);
	TextDrawTextSize(wTuning1[17], 171.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[17], 0);

	wTuning1[18] = TextDrawCreate(88.000000, 233.000000, "Blue_____________________");
	TextDrawBackgroundColor(wTuning1[18], 255);
	TextDrawFont(wTuning1[18], 2);
	TextDrawLetterSize(wTuning1[18], 0.300000, 1.000000);
	TextDrawColor(wTuning1[18], -1);
	TextDrawSetOutline(wTuning1[18], 0);
	TextDrawSetProportional(wTuning1[18], 1);
	TextDrawSetShadow(wTuning1[18], 0);
	TextDrawUseBox(wTuning1[18], 1);
	TextDrawBoxColor(wTuning1[18], 0);
	TextDrawTextSize(wTuning1[18], 170.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[18], 0);

	wTuning1[19] = TextDrawCreate(87.000000, 254.000000, "Yellow________________");
	TextDrawBackgroundColor(wTuning1[19], 255);
	TextDrawFont(wTuning1[19], 2);
	TextDrawLetterSize(wTuning1[19], 0.300000, 1.000000);
	TextDrawColor(wTuning1[19], -1);
	TextDrawSetOutline(wTuning1[19], 0);
	TextDrawSetProportional(wTuning1[19], 1);
	TextDrawSetShadow(wTuning1[19], 0);
	TextDrawUseBox(wTuning1[19], 1);
	TextDrawBoxColor(wTuning1[19], 0);
	TextDrawTextSize(wTuning1[19], 180.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[19], 0);

	wTuning1[20] = TextDrawCreate(87.000000, 275.000000, "gray_____________________");
	TextDrawBackgroundColor(wTuning1[20], 255);
	TextDrawFont(wTuning1[20], 2);
	TextDrawLetterSize(wTuning1[20], 0.300000, 1.000000);
	TextDrawColor(wTuning1[20], -1);
	TextDrawSetOutline(wTuning1[20], 0);
	TextDrawSetProportional(wTuning1[20], 1);
	TextDrawSetShadow(wTuning1[20], 0);
	TextDrawUseBox(wTuning1[20], 1);
	TextDrawBoxColor(wTuning1[20], 0);
	TextDrawTextSize(wTuning1[20], 229.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[20], 0);

	wTuning1[21] = TextDrawCreate(87.000000, 293.000000, "Pink_____________________");
	TextDrawBackgroundColor(wTuning1[21], 255);
	TextDrawFont(wTuning1[21], 2);
	TextDrawLetterSize(wTuning1[21], 0.300000, 1.000000);
	TextDrawColor(wTuning1[21], -1);
	TextDrawSetOutline(wTuning1[21], 0);
	TextDrawSetProportional(wTuning1[21], 1);
	TextDrawSetShadow(wTuning1[21], 0);
	TextDrawUseBox(wTuning1[21], 1);
	TextDrawBoxColor(wTuning1[21], 0);
	TextDrawTextSize(wTuning1[21], 170.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[21], 0);

	wTuning1[22] = TextDrawCreate(87.000000, 312.000000, "Orange________________");
	TextDrawBackgroundColor(wTuning1[22], 255);
	TextDrawFont(wTuning1[22], 2);
	TextDrawLetterSize(wTuning1[22], 0.300000, 1.000000);
	TextDrawColor(wTuning1[22], -1);
	TextDrawSetOutline(wTuning1[22], 0);
	TextDrawSetProportional(wTuning1[22], 1);
	TextDrawSetShadow(wTuning1[22], 0);
	TextDrawUseBox(wTuning1[22], 1);
	TextDrawBoxColor(wTuning1[22], 0);
	TextDrawTextSize(wTuning1[22], 170.000000, 10.000000);
	TextDrawSetSelectable(wTuning1[22], 0);
	//------------------------------------------------------------------------------
	//
	//
	//------------------------------------------------------------------------------
	wTuning2[0] = TextDrawCreate(88.000000, 149.000000, "shadow________________");
	TextDrawBackgroundColor(wTuning2[0], 255);
	TextDrawFont(wTuning2[0], 2);
	TextDrawLetterSize(wTuning2[0], 0.300000, 1.000000);
	TextDrawColor(wTuning2[0], -1);
	TextDrawSetOutline(wTuning2[0], 0);
	TextDrawSetProportional(wTuning2[0], 1);
	TextDrawSetShadow(wTuning2[0], 0);
	TextDrawUseBox(wTuning2[0], 1);
	TextDrawBoxColor(wTuning2[0], 0);
	TextDrawTextSize(wTuning2[0], 190.000000, 10.000000);
	TextDrawSetSelectable(wTuning2[0], 0);

	wTuning2[1] = TextDrawCreate(88.000000, 168.000000, "mega_____________________");
	TextDrawBackgroundColor(wTuning2[1], 255);
	TextDrawFont(wTuning2[1], 2);
	TextDrawLetterSize(wTuning2[1], 0.300000, 1.000000);
	TextDrawColor(wTuning2[1], -1);
	TextDrawSetOutline(wTuning2[1], 0);
	TextDrawSetProportional(wTuning2[1], 1);
	TextDrawSetShadow(wTuning2[1], 0);
	TextDrawUseBox(wTuning2[1], 1);
	TextDrawBoxColor(wTuning2[1], 0);
	TextDrawTextSize(wTuning2[1], 170.000000, 10.000000);
	TextDrawSetSelectable(wTuning2[1], 0);

	wTuning2[2] = TextDrawCreate(88.000000, 190.000000, "rimshine_____________");
	TextDrawBackgroundColor(wTuning2[2], 255);
	TextDrawFont(wTuning2[2], 2);
	TextDrawLetterSize(wTuning2[2], 0.300000, 1.000000);
	TextDrawColor(wTuning2[2], -1);
	TextDrawSetOutline(wTuning2[2], 0);
	TextDrawSetProportional(wTuning2[2], 1);
	TextDrawSetShadow(wTuning2[2], 0);
	TextDrawUseBox(wTuning2[2], 1);
	TextDrawBoxColor(wTuning2[2], 0);
	TextDrawTextSize(wTuning2[2], 171.000000, 10.000000);
	TextDrawSetSelectable(wTuning2[2], 0);

	wTuning2[3] = TextDrawCreate(88.000000, 213.000000, "Wires___________________");
	TextDrawBackgroundColor(wTuning2[3], 255);
	TextDrawFont(wTuning2[3], 2);
	TextDrawLetterSize(wTuning2[3], 0.300000, 1.000000);
	TextDrawColor(wTuning2[3], -1);
	TextDrawSetOutline(wTuning2[3], 0);
	TextDrawSetProportional(wTuning2[3], 1);
	TextDrawSetShadow(wTuning2[3], 0);
	TextDrawUseBox(wTuning2[3], 1);
	TextDrawBoxColor(wTuning2[3], 0);
	TextDrawTextSize(wTuning2[3], 171.000000, 10.000000);
	TextDrawSetSelectable(wTuning2[3], 0);

	wTuning2[4] = TextDrawCreate(88.000000, 233.000000, "classic________________");
	TextDrawBackgroundColor(wTuning2[4], 255);
	TextDrawFont(wTuning2[4], 2);
	TextDrawLetterSize(wTuning2[4], 0.300000, 1.000000);
	TextDrawColor(wTuning2[4], -1);
	TextDrawSetOutline(wTuning2[4], 0);
	TextDrawSetProportional(wTuning2[4], 1);
	TextDrawSetShadow(wTuning2[4], 0);
	TextDrawUseBox(wTuning2[4], 1);
	TextDrawBoxColor(wTuning2[4], 0);
	TextDrawTextSize(wTuning2[4], 170.000000, 10.000000);
	TextDrawSetSelectable(wTuning2[4], 0);

	wTuning2[5] = TextDrawCreate(87.000000, 254.000000, "twist____________________");
	TextDrawBackgroundColor(wTuning2[5], 255);
	TextDrawFont(wTuning2[5], 2);
	TextDrawLetterSize(wTuning2[5], 0.300000, 1.000000);
	TextDrawColor(wTuning2[5], -1);
	TextDrawSetOutline(wTuning2[5], 0);
	TextDrawSetProportional(wTuning2[5], 1);
	TextDrawSetShadow(wTuning2[5], 0);
	TextDrawUseBox(wTuning2[5], 1);
	TextDrawBoxColor(wTuning2[5], 0);
	TextDrawTextSize(wTuning2[5], 180.000000, 10.000000);
	TextDrawSetSelectable(wTuning2[5], 0);

	wTuning2[6] = TextDrawCreate(87.000000, 275.000000, "cutter_________________");
	TextDrawBackgroundColor(wTuning2[6], 255);
	TextDrawFont(wTuning2[6], 2);
	TextDrawLetterSize(wTuning2[6], 0.300000, 1.000000);
	TextDrawColor(wTuning2[6], -1);
	TextDrawSetOutline(wTuning2[6], 0);
	TextDrawSetProportional(wTuning2[6], 1);
	TextDrawSetShadow(wTuning2[6], 0);
	TextDrawUseBox(wTuning2[6], 1);
	TextDrawBoxColor(wTuning2[6], 0);
	TextDrawTextSize(wTuning2[6], 180.000000, 10.000000);
	TextDrawSetSelectable(wTuning2[6], 0);

	wTuning2[7] = TextDrawCreate(87.000000, 293.000000, "Dollar_________________");
	TextDrawBackgroundColor(wTuning2[7], 255);
	TextDrawFont(wTuning2[7], 2);
	TextDrawLetterSize(wTuning2[7], 0.300000, 1.000000);
	TextDrawColor(wTuning2[7], -1);
	TextDrawSetOutline(wTuning2[7], 0);
	TextDrawSetProportional(wTuning2[7], 1);
	TextDrawSetShadow(wTuning2[7], 0);
	TextDrawUseBox(wTuning2[7], 1);
	TextDrawBoxColor(wTuning2[7], 0);
	TextDrawTextSize(wTuning2[7], 170.000000, 10.000000);
	TextDrawSetSelectable(wTuning2[7], 0);

	wTuning2[8] = TextDrawCreate(87.000000, 312.000000, "Atomic__________________");
	TextDrawBackgroundColor(wTuning2[8], 255);
	TextDrawFont(wTuning2[8], 2);
	TextDrawLetterSize(wTuning2[8], 0.300000, 1.000000);
	TextDrawColor(wTuning2[8], -1);
	TextDrawSetOutline(wTuning2[8], 0);
	TextDrawSetProportional(wTuning2[8], 1);
	TextDrawSetShadow(wTuning2[8], 0);
	TextDrawUseBox(wTuning2[8], 1);
	TextDrawBoxColor(wTuning2[8], 0);
	TextDrawTextSize(wTuning2[8], 170.000000, 10.000000);
	TextDrawSetSelectable(wTuning2[8], 0);
	//------------------------------------------------------------------------------
	//
	//
	//------------------------------------------------------------------------------
	wTuning3[0] = TextDrawCreate(88.000000, 149.000000, "Blue");
	TextDrawBackgroundColor(wTuning3[0], 255);
	TextDrawFont(wTuning3[0], 2);
	TextDrawLetterSize(wTuning3[0], 0.300000, 1.000000);
	TextDrawColor(wTuning3[0], -1);
	TextDrawSetOutline(wTuning3[0], 0);
	TextDrawSetProportional(wTuning3[0], 1);
	TextDrawSetShadow(wTuning3[0], 0);
	TextDrawUseBox(wTuning3[0], 1);
	TextDrawBoxColor(wTuning3[0], 0);
	TextDrawTextSize(wTuning3[0], 190.000000, 10.000000);
	TextDrawSetSelectable(wTuning3[0], 0);

	wTuning3[1] = TextDrawCreate(88.000000, 168.000000, "Yellow");
	TextDrawBackgroundColor(wTuning3[1], 255);
	TextDrawFont(wTuning3[1], 2);
	TextDrawLetterSize(wTuning3[1], 0.300000, 1.000000);
	TextDrawColor(wTuning3[1], -1);
	TextDrawSetOutline(wTuning3[1], 0);
	TextDrawSetProportional(wTuning3[1], 1);
	TextDrawSetShadow(wTuning3[1], 0);
	TextDrawUseBox(wTuning3[1], 1);
	TextDrawBoxColor(wTuning3[1], 0);
	TextDrawTextSize(wTuning3[1], 170.000000, 10.000000);
	TextDrawSetSelectable(wTuning3[1], 0);

	wTuning3[2] = TextDrawCreate(88.000000, 190.000000, "White");
	TextDrawBackgroundColor(wTuning3[2], 255);
	TextDrawFont(wTuning3[2], 2);
	TextDrawLetterSize(wTuning3[2], 0.300000, 1.000000);
	TextDrawColor(wTuning3[2], -1);
	TextDrawSetOutline(wTuning3[2], 0);
	TextDrawSetProportional(wTuning3[2], 1);
	TextDrawSetShadow(wTuning3[2], 0);
	TextDrawUseBox(wTuning3[2], 1);
	TextDrawBoxColor(wTuning3[2], 0);
	TextDrawTextSize(wTuning3[2], 171.000000, 10.000000);
	TextDrawSetSelectable(wTuning3[2], 0);

	wTuning3[3] = TextDrawCreate(88.000000, 213.000000, "Pink");
	TextDrawBackgroundColor(wTuning3[3], 255);
	TextDrawFont(wTuning3[3], 2);
	TextDrawLetterSize(wTuning3[3], 0.300000, 1.000000);
	TextDrawColor(wTuning3[3], -1);
	TextDrawSetOutline(wTuning3[3], 0);
	TextDrawSetProportional(wTuning3[3], 1);
	TextDrawSetShadow(wTuning3[3], 0);
	TextDrawUseBox(wTuning3[3], 1);
	TextDrawBoxColor(wTuning3[3], 0);
	TextDrawTextSize(wTuning3[3], 171.000000, 10.000000);
	TextDrawSetSelectable(wTuning3[3], 0);

	wTuning3[4] = TextDrawCreate(88.000000, 233.000000, "green");
	TextDrawBackgroundColor(wTuning3[4], 255);
	TextDrawFont(wTuning3[4], 2);
	TextDrawLetterSize(wTuning3[4], 0.300000, 1.000000);
	TextDrawColor(wTuning3[4], -1);
	TextDrawSetOutline(wTuning3[4], 0);
	TextDrawSetProportional(wTuning3[4], 1);
	TextDrawSetShadow(wTuning3[4], 0);
	TextDrawUseBox(wTuning3[4], 1);
	TextDrawBoxColor(wTuning3[4], 0);
	TextDrawTextSize(wTuning3[4], 170.000000, 10.000000);
	TextDrawSetSelectable(wTuning3[4], 0);

	wTuning3[5] = TextDrawCreate(88.000000, 252.000000, "remove_neon");
	TextDrawBackgroundColor(wTuning3[5], 255);
	TextDrawFont(wTuning3[5], 2);
	TextDrawLetterSize(wTuning3[5], 0.300000, 1.000000);
	TextDrawColor(wTuning3[5], -1);
	TextDrawSetOutline(wTuning3[5], 0);
	TextDrawSetProportional(wTuning3[5], 1);
	TextDrawSetShadow(wTuning3[5], 0);
	TextDrawUseBox(wTuning3[5], 1);
	TextDrawBoxColor(wTuning3[5], 0);
	TextDrawTextSize(wTuning3[5], 170.000000, 10.000000);
	TextDrawSetSelectable(wTuning3[5], 0);
	//------------------------------------------------------------------------------
	//
	//
	//------------------------------------------------------------------------------
	wTuning4[0] = TextDrawCreate(88.000000, 149.000000, "PAINTJOB_1");
	TextDrawBackgroundColor(wTuning4[0], 255);
	TextDrawFont(wTuning4[0], 2);
	TextDrawLetterSize(wTuning4[0], 0.300000, 1.000000);
	TextDrawColor(wTuning4[0], -1);
	TextDrawSetOutline(wTuning4[0], 0);
	TextDrawSetProportional(wTuning4[0], 1);
	TextDrawSetShadow(wTuning4[0], 0);
	TextDrawUseBox(wTuning4[0], 1);
	TextDrawBoxColor(wTuning4[0], 0);
	TextDrawTextSize(wTuning4[0], 190.000000, 10.000000);
	TextDrawSetSelectable(wTuning4[0], 0);

	wTuning4[1] = TextDrawCreate(88.000000, 168.000000, "PaintJob_2");
	TextDrawBackgroundColor(wTuning4[1], 255);
	TextDrawFont(wTuning4[1], 2);
	TextDrawLetterSize(wTuning4[1], 0.300000, 1.000000);
	TextDrawColor(wTuning4[1], -1);
	TextDrawSetOutline(wTuning4[1], 0);
	TextDrawSetProportional(wTuning4[1], 1);
	TextDrawSetShadow(wTuning4[1], 0);
	TextDrawUseBox(wTuning4[1], 1);
	TextDrawBoxColor(wTuning4[1], 0);
	TextDrawTextSize(wTuning4[1], 170.000000, 10.000000);
	TextDrawSetSelectable(wTuning4[1], 0);

	wTuning4[2] = TextDrawCreate(88.000000, 190.000000, "PaintJob_3");
	TextDrawBackgroundColor(wTuning4[2], 255);
	TextDrawFont(wTuning4[2], 2);
	TextDrawLetterSize(wTuning4[2], 0.300000, 1.000000);
	TextDrawColor(wTuning4[2], -1);
	TextDrawSetOutline(wTuning4[2], 0);
	TextDrawSetProportional(wTuning4[2], 1);
	TextDrawSetShadow(wTuning4[2], 0);
	TextDrawUseBox(wTuning4[2], 1);
	TextDrawBoxColor(wTuning4[2], 0);
	TextDrawTextSize(wTuning4[2], 171.000000, 10.000000);
	TextDrawSetSelectable(wTuning4[2], 0);
	//------------------------------------------------------------------------------
	//
	//
	//------------------------------------------------------------------------------
	wTuning5[0] = TextDrawCreate(88.000000, 149.000000, "Nitro 2X");
	TextDrawBackgroundColor(wTuning5[0], 255);
	TextDrawFont(wTuning5[0], 2);
	TextDrawLetterSize(wTuning5[0], 0.300000, 1.000000);
	TextDrawColor(wTuning5[0], -1);
	TextDrawSetOutline(wTuning5[0], 0);
	TextDrawSetProportional(wTuning5[0], 1);
	TextDrawSetShadow(wTuning5[0], 0);
	TextDrawUseBox(wTuning5[0], 1);
	TextDrawBoxColor(wTuning5[0], 0);
	TextDrawTextSize(wTuning5[0], 190.000000, 10.000000);
	TextDrawSetSelectable(wTuning5[0], 0);

	wTuning5[1] = TextDrawCreate(88.000000, 169.000000, "NITRo 5x");
	TextDrawBackgroundColor(wTuning5[1], 255);
	TextDrawFont(wTuning5[1], 2);
	TextDrawLetterSize(wTuning5[1], 0.300000, 1.000000);
	TextDrawColor(wTuning5[1], -1);
	TextDrawSetOutline(wTuning5[1], 0);
	TextDrawSetProportional(wTuning5[1], 1);
	TextDrawSetShadow(wTuning5[1], 0);
	TextDrawUseBox(wTuning5[1], 1);
	TextDrawBoxColor(wTuning5[1], 0);
	TextDrawTextSize(wTuning5[1], 170.000000, 10.000000);
	TextDrawSetSelectable(wTuning5[1], 0);

	wTuning5[2] = TextDrawCreate(88.000000, 190.000000, "nitro 10x");
	TextDrawBackgroundColor(wTuning5[2], 255);
	TextDrawFont(wTuning5[2], 2);
	TextDrawLetterSize(wTuning5[2], 0.300000, 1.000000);
	TextDrawColor(wTuning5[2], -1);
	TextDrawSetOutline(wTuning5[2], 0);
	TextDrawSetProportional(wTuning5[2], 1);
	TextDrawSetShadow(wTuning5[2], 0);
	TextDrawUseBox(wTuning5[2], 1);
	TextDrawBoxColor(wTuning5[2], 0);
	TextDrawTextSize(wTuning5[2], 171.000000, 10.000000);
	TextDrawSetSelectable(wTuning5[2], 0);

	roofs[0] = TextDrawCreate(88.000000, 149.000000, "Alien");
	TextDrawBackgroundColor(roofs[0], 255);
	TextDrawFont(roofs[0], 2);
	TextDrawLetterSize(roofs[0], 0.300000, 1.000000);
	TextDrawColor(roofs[0], -1);
	TextDrawSetOutline(roofs[0], 0);
	TextDrawSetProportional(roofs[0], 1);
	TextDrawSetShadow(roofs[0], 0);
	TextDrawUseBox(roofs[0], 1);
	TextDrawBoxColor(roofs[0], 0);
	TextDrawTextSize(roofs[0], 190.000000, 10.000000);
	TextDrawSetSelectable(roofs[0], true);

	roofs[1] = TextDrawCreate(88.000000, 168.000000, " X-Flow");
	TextDrawBackgroundColor(roofs[1], 255);
	TextDrawFont(roofs[1], 2);
	TextDrawLetterSize(roofs[1], 0.300000, 1.000000);
	TextDrawColor(roofs[1], -1);
	TextDrawSetOutline(roofs[1], 0);
	TextDrawSetProportional(roofs[1], 1);
	TextDrawSetShadow(roofs[1], 0);
	TextDrawUseBox(roofs[1], 1);
	TextDrawBoxColor(roofs[1], 0);
	TextDrawTextSize(roofs[1], 170.000000, 10.000000);
	TextDrawSetSelectable(roofs[1], true);

	spoiler[0] = TextDrawCreate(88.000000, 149.000000, "Alien");
	TextDrawBackgroundColor(spoiler[0], 255);
	TextDrawFont(spoiler[0], 2);
	TextDrawLetterSize(spoiler[0], 0.300000, 1.000000);
	TextDrawColor(spoiler[0], -1);
	TextDrawSetOutline(spoiler[0], 0);
	TextDrawSetProportional(spoiler[0], 1);
	TextDrawSetShadow(spoiler[0], 0);
	TextDrawUseBox(spoiler[0], 1);
	TextDrawBoxColor(spoiler[0], 0);
	TextDrawTextSize(spoiler[0], 190.000000, 10.000000);
	TextDrawSetSelectable(spoiler[0], true);

	spoiler[1] = TextDrawCreate(88.000000, 168.000000, " X-Flow");
	TextDrawBackgroundColor(spoiler[1], 255);
	TextDrawFont(spoiler[1], 2);
	TextDrawLetterSize(spoiler[1], 0.300000, 1.000000);
	TextDrawColor(spoiler[1], -1);
	TextDrawSetOutline(spoiler[1], 0);
	TextDrawSetProportional(spoiler[1], 1);
	TextDrawSetShadow(spoiler[1], 0);
	TextDrawUseBox(spoiler[1], 1);
	TextDrawBoxColor(spoiler[1], 0);
	TextDrawTextSize(spoiler[1], 170.000000, 10.000000);
	TextDrawSetSelectable(spoiler[1], true);

	for(new i = 5; i < sizeof(wTuning1); i++) { TextDrawSetSelectable(Text:wTuning1[i], true); }
	for(new i = 0; i < sizeof(wTuning2); i++) { TextDrawSetSelectable(Text:wTuning2[i], true); }
	for(new i = 0; i < sizeof(wTuning3); i++) { TextDrawSetSelectable(Text:wTuning3[i], true); }
	for(new i = 0; i < sizeof(wTuning4); i++) { TextDrawSetSelectable(Text:wTuning4[i], true); }
	for(new i = 0; i < sizeof(wTuning5); i++) { TextDrawSetSelectable(Text:wTuning5[i], true); }

	//Sai lenh TextDraw
	Project_TD3[0] = TextDrawCreate(252.666641, 316.103729, "box");
	TextDrawLetterSize(Project_TD3[0], 0.000000, 1.733332);
	TextDrawTextSize(Project_TD3[0], 396.000000, 0.000000);
	TextDrawAlignment(Project_TD3[0], 1);
	TextDrawColor(Project_TD3[0], -1);
	TextDrawUseBox(Project_TD3[0], 1);
	TextDrawBoxColor(Project_TD3[0], 150);
	TextDrawSetShadow(Project_TD3[0], 0);
	TextDrawSetOutline(Project_TD3[0], 0);
	TextDrawBackgroundColor(Project_TD3[0], 255);
	TextDrawFont(Project_TD3[0], 1);
	TextDrawSetProportional(Project_TD3[0], 1);
	TextDrawSetShadow(Project_TD3[0], 0);

	Project_TD3[1] = TextDrawCreate(254.000213, 317.348022, "box");
	TextDrawLetterSize(Project_TD3[1], 0.000000, 1.399995);
	TextDrawTextSize(Project_TD3[1], 395.000000, 0.000000);
	TextDrawAlignment(Project_TD3[1], 1);
	TextDrawColor(Project_TD3[1], -5963521);
	TextDrawUseBox(Project_TD3[1], 1);
	TextDrawBoxColor(Project_TD3[1], -5963521);
	TextDrawSetShadow(Project_TD3[1], 0);
	TextDrawSetOutline(Project_TD3[1], 0);
	TextDrawBackgroundColor(Project_TD3[1], 255);
	TextDrawFont(Project_TD3[1], 2);
	TextDrawSetProportional(Project_TD3[1], 1);
	TextDrawSetShadow(Project_TD3[1], 0);

	Project_TD3[2] = TextDrawCreate(255.000061, 315.274047, "LENH_NAY_KHONG_TON_TAI!");
	TextDrawLetterSize(Project_TD3[2], 0.262333, 1.687110);
	TextDrawAlignment(Project_TD3[2], 1);
	TextDrawColor(Project_TD3[2], 255);
	TextDrawSetShadow(Project_TD3[2], 0);
	TextDrawSetOutline(Project_TD3[2], 0);
	TextDrawBackgroundColor(Project_TD3[2], 255);
	TextDrawFont(Project_TD3[2], 2);
	TextDrawSetProportional(Project_TD3[2], 1);
	TextDrawSetShadow(Project_TD3[2], 0);

    // Blindfold
	BFText = TextDrawCreate(0.000000, -3.000000, " ");
	TextDrawBackgroundColor(BFText, 255);
	TextDrawFont(BFText, 1);
	TextDrawLetterSize(BFText, 50.000000, 50.000000);
	TextDrawColor(BFText, 0x000000FF);
	TextDrawSetOutline(BFText, 0);
	TextDrawSetProportional(BFText, 1);
	TextDrawSetShadow(BFText, 1);
	TextDrawUseBox(BFText, 1);
	TextDrawBoxColor(BFText, 0x000000FF);
	TextDrawTextSize(BFText, 689.000000, -53.000000);

	// WristWatch
	WristWatch = TextDrawCreate(577.000000, 50.000000, " ");
	TextDrawAlignment(WristWatch, 2);
	TextDrawBackgroundColor(WristWatch, 255);
	TextDrawFont(WristWatch, 3);
	TextDrawLetterSize(WristWatch, 0.709998, 2.100001);
	TextDrawColor(WristWatch, -1);
	TextDrawSetOutline(WristWatch, 1);
	TextDrawSetProportional(WristWatch, 0);
	textdrawscount++;

	// NG-RP Title
	MainMenuTxtdraw[4] = TextDrawCreate(263.000000, 10.000000, "VietNam - City");
	TextDrawBackgroundColor(MainMenuTxtdraw[4], 255);
	TextDrawFont(MainMenuTxtdraw[4], 2);
	TextDrawLetterSize(MainMenuTxtdraw[4], 0.910000, 4.400001);
 	TextDrawColor(MainMenuTxtdraw[4], -1);
	TextDrawSetOutline(MainMenuTxtdraw[4], 0);
	TextDrawSetProportional(MainMenuTxtdraw[4], 1);
	TextDrawSetShadow(MainMenuTxtdraw[4], 1);
	textdrawscount++;

	// NG-RP Subtitle
	MainMenuTxtdraw[5] = TextDrawCreate(256.000000, 45.000000, "GTA SAN ANDREAS ROLEPLAY VIET NAM");
	TextDrawBackgroundColor(MainMenuTxtdraw[5], 255);
	TextDrawFont(MainMenuTxtdraw[5], 2);
	TextDrawLetterSize(MainMenuTxtdraw[5], 0.200000, 1.200001);
	TextDrawColor(MainMenuTxtdraw[5], -1);
	TextDrawSetOutline(MainMenuTxtdraw[5], 0);
	TextDrawSetProportional(MainMenuTxtdraw[5], 1);
	TextDrawSetShadow(MainMenuTxtdraw[5], 1);
	textdrawscount++;

	// NG-RP Version
	MainMenuTxtdraw[6] = TextDrawCreate(283.000000, 58.000000, SERVER_GM_TEXT);
	TextDrawBackgroundColor(MainMenuTxtdraw[6], 255);
	TextDrawFont(MainMenuTxtdraw[6], 2);
	TextDrawLetterSize(MainMenuTxtdraw[6], 0.200000, 1.200001);
	TextDrawColor(MainMenuTxtdraw[6], -65281);
	TextDrawSetOutline(MainMenuTxtdraw[6], 0);
	TextDrawSetProportional(MainMenuTxtdraw[6], 1);
	TextDrawSetShadow(MainMenuTxtdraw[6], 1);
	textdrawscount++;

	// NG-RP Tooltips
	MainMenuTxtdraw[7] = TextDrawCreate(319.000000, 391.000000, Tooltips[random(sizeof(Tooltips))]);
	TextDrawAlignment(MainMenuTxtdraw[7], 2);
	TextDrawBackgroundColor(MainMenuTxtdraw[7], 255);
	TextDrawFont(MainMenuTxtdraw[7], 2);
	TextDrawLetterSize(MainMenuTxtdraw[7], 0.250000, 1.600000);
	TextDrawColor(MainMenuTxtdraw[7], -1);
	TextDrawSetOutline(MainMenuTxtdraw[7], 0);
	TextDrawSetProportional(MainMenuTxtdraw[7], 1);
	TextDrawSetShadow(MainMenuTxtdraw[7], 1);
	textdrawscount++;

	// Server Stats Bar
	MainMenuTxtdraw[8] = TextDrawCreate(319.000000, 421.000000, " ");
	TextDrawAlignment(MainMenuTxtdraw[8], 2);
	TextDrawBackgroundColor(MainMenuTxtdraw[8], 255);
	TextDrawFont(MainMenuTxtdraw[8], 1);
	TextDrawLetterSize(MainMenuTxtdraw[8], 0.189998, 1.100000);
	TextDrawColor(MainMenuTxtdraw[8], -1);
	TextDrawSetOutline(MainMenuTxtdraw[8], 0);
	TextDrawSetProportional(MainMenuTxtdraw[8], 1);
	TextDrawSetShadow(MainMenuTxtdraw[8], 1);
	textdrawscount++;

	// MOTD
	MainMenuTxtdraw[9] = TextDrawCreate(319.000000, 364.000000, " ");
	TextDrawAlignment(MainMenuTxtdraw[9], 2);
	TextDrawBackgroundColor(MainMenuTxtdraw[9], 65535);
	TextDrawFont(MainMenuTxtdraw[9], 1);
	TextDrawLetterSize(MainMenuTxtdraw[9], 0.229999, 1.400000);
	TextDrawColor(MainMenuTxtdraw[9], -1);
	TextDrawSetOutline(MainMenuTxtdraw[9], 0);
	TextDrawSetProportional(MainMenuTxtdraw[9], 1);
	TextDrawSetShadow(MainMenuTxtdraw[9], 0);
	textdrawscount++;

	MainMenuTxtdraw[10] = TextDrawCreate(319.000000, 81.000000, "Day La Sever VietNam - City, Neu Can Ho Tro Hay /Newb Neu Bi Bug Hay /Baocao.");
	TextDrawAlignment(MainMenuTxtdraw[10], 2);
	TextDrawBackgroundColor(MainMenuTxtdraw[10], 255);
	TextDrawFont(MainMenuTxtdraw[10], 0);
	TextDrawLetterSize(MainMenuTxtdraw[10], 0.230000, 1.200000);
	TextDrawColor(MainMenuTxtdraw[10], -1);
	TextDrawSetOutline(MainMenuTxtdraw[10], 0);
	TextDrawSetProportional(MainMenuTxtdraw[10], 1);
	TextDrawSetShadow(MainMenuTxtdraw[10], 1);
	textdrawscount++;

	// Notice Box
	NoticeTxtdraw[0] = TextDrawCreate(174.000000, 181.000000, "Box");
	TextDrawBackgroundColor(NoticeTxtdraw[0], 0);
	TextDrawFont(NoticeTxtdraw[0], 1);
	TextDrawLetterSize(NoticeTxtdraw[0], 1.590000, 7.700005);
	TextDrawColor(NoticeTxtdraw[0], 0);
	TextDrawSetOutline(NoticeTxtdraw[0], 0);
	TextDrawSetProportional(NoticeTxtdraw[0], 1);
	TextDrawSetShadow(NoticeTxtdraw[0], 1);
	TextDrawUseBox(NoticeTxtdraw[0], 1);
	TextDrawBoxColor(NoticeTxtdraw[0], 100);
	TextDrawTextSize(NoticeTxtdraw[0], 454.000000, 18.000000);

	NoticeTxtdraw[1] = TextDrawCreate(317.000000, 174.000000, "VietNam - City - Dang Tai Ban Doi Ti Nhe");
	TextDrawAlignment(NoticeTxtdraw[1], 2);
	TextDrawBackgroundColor(NoticeTxtdraw[1], 255);
	TextDrawFont(NoticeTxtdraw[1], 2);
	TextDrawLetterSize(NoticeTxtdraw[1], 0.189999, 1.200000);
	TextDrawColor(NoticeTxtdraw[1], -1);
	TextDrawSetOutline(NoticeTxtdraw[1], 1);
	TextDrawSetProportional(NoticeTxtdraw[1], 1);

	// Title
	NoticeTxtdraw[2] = TextDrawCreate(323.000000, 196.000000, " ");
	TextDrawAlignment(NoticeTxtdraw[2], 2);
	TextDrawBackgroundColor(NoticeTxtdraw[2], 255);
	TextDrawFont(NoticeTxtdraw[2], 2);
	TextDrawLetterSize(NoticeTxtdraw[2], 0.449999, 2.000000);
	//TextDrawLetterSize(NoticeTxtdraw[2], 0.529999, 2.800000);
	TextDrawColor(NoticeTxtdraw[2], -1);
	TextDrawSetOutline(NoticeTxtdraw[2], 1);
	TextDrawSetProportional(NoticeTxtdraw[2], 1);
	
	// Description.
	NoticeTxtdraw[3] = TextDrawCreate(322.000000, 221.000000, " ");
	TextDrawAlignment(NoticeTxtdraw[3], 2);
	TextDrawBackgroundColor(NoticeTxtdraw[3], 255);
	TextDrawFont(NoticeTxtdraw[3], 1);
	TextDrawLetterSize(NoticeTxtdraw[3], 0.189999, 1.200000);
	TextDrawColor(NoticeTxtdraw[3], -1);
	TextDrawSetOutline(NoticeTxtdraw[3], 1);
	TextDrawSetProportional(NoticeTxtdraw[3], 1);
	
	// Tutorial (Frame 1) (Title)
	TutTxtdraw[4] = TextDrawCreate(168.000000, 120.000000, "Huong dan - Chao muong den voi cong dong GTA Viet Nam!");
	TextDrawBackgroundColor(TutTxtdraw[4], 255);
	TextDrawFont(TutTxtdraw[4], 2);
	TextDrawLetterSize(TutTxtdraw[4], 0.209999, 1.000000);
	TextDrawColor(TutTxtdraw[4], -1);
	TextDrawSetOutline(TutTxtdraw[4], 0);
	TextDrawSetProportional(TutTxtdraw[4], 1);
	TextDrawSetShadow(TutTxtdraw[4], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 1)
	TutTxtdraw[5] = TextDrawCreate(175.000000, 141.000000, "Introductions! Welcome to CLBSAMP Roleplay, SA-MP's most popular");
	TextDrawBackgroundColor(TutTxtdraw[5], 255);
	TextDrawFont(TutTxtdraw[5], 2);
	TextDrawLetterSize(TutTxtdraw[5], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[5], -1);
	TextDrawSetOutline(TutTxtdraw[5], 1);
	TextDrawSetProportional(TutTxtdraw[5], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 2)
	TutTxtdraw[6] = TextDrawCreate(175.000000, 151.000000, "English speaking server! Our community has been around for quite");
	TextDrawBackgroundColor(TutTxtdraw[6], 255);
	TextDrawFont(TutTxtdraw[6], 2);
	TextDrawLetterSize(TutTxtdraw[6], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[6], -1);
	TextDrawSetOutline(TutTxtdraw[6], 1);
	TextDrawSetProportional(TutTxtdraw[6], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 3)
	TutTxtdraw[7] = TextDrawCreate(175.000000, 161.000000, "some time now, and we are glad to have you with us!");
	TextDrawBackgroundColor(TutTxtdraw[7], 255);
	TextDrawFont(TutTxtdraw[7], 2);
	TextDrawLetterSize(TutTxtdraw[7], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[7], -1);
	TextDrawSetOutline(TutTxtdraw[7], 1);
	TextDrawSetProportional(TutTxtdraw[7], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 4)
	TutTxtdraw[8] = TextDrawCreate(175.000000, 193.000000, "You know, we are more than just a SA-MP community, so if you are interested");
	TextDrawBackgroundColor(TutTxtdraw[8], 255);
	TextDrawFont(TutTxtdraw[8], 2);
	TextDrawLetterSize(TutTxtdraw[8], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[8], -1);
	TextDrawSetOutline(TutTxtdraw[8], 1);
	TextDrawSetProportional(TutTxtdraw[8], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 5)
	TutTxtdraw[9] = TextDrawCreate(175.000000, 203.000000, "be sure to visit us and sign up on our forums at ~y~www.eg-rp.vn~w~ - we");
	TextDrawBackgroundColor(TutTxtdraw[9], 255);
	TextDrawFont(TutTxtdraw[9], 2);
	TextDrawLetterSize(TutTxtdraw[9], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[9], -1);
	TextDrawSetOutline(TutTxtdraw[9], 1);
	TextDrawSetProportional(TutTxtdraw[9], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 6)
	TutTxtdraw[10] = TextDrawCreate(175.000000, 214.000000, "will be waiting, be sure to invite your friends!");
	TextDrawBackgroundColor(TutTxtdraw[10], 255);
	TextDrawFont(TutTxtdraw[10], 2);
	TextDrawLetterSize(TutTxtdraw[10], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[10], -1);
	TextDrawSetOutline(TutTxtdraw[10], 1);
	TextDrawSetProportional(TutTxtdraw[10], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 7)
	TutTxtdraw[11] = TextDrawCreate(175.000000, 245.000000, "We also have a e-store with a bunch of useful items to purchase, be sure to");
	TextDrawBackgroundColor(TutTxtdraw[11], 255);
	TextDrawFont(TutTxtdraw[11], 2);
	TextDrawLetterSize(TutTxtdraw[11], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[11], -1);
	TextDrawSetOutline(TutTxtdraw[11], 1);
	TextDrawSetProportional(TutTxtdraw[11], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 8)
	TutTxtdraw[12] = TextDrawCreate(175.000000, 255.000000, "check it all out at ~y~eg-rp.vn~w~, it helps keep this server up and");
	TextDrawBackgroundColor(TutTxtdraw[12], 255);
	TextDrawFont(TutTxtdraw[12], 2);
	TextDrawLetterSize(TutTxtdraw[12], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[12], -1);
	TextDrawSetOutline(TutTxtdraw[12], 1);
	TextDrawSetProportional(TutTxtdraw[12], 1);
	textdrawscount++;

	// Tutorial (Frame 1) (Line 9)
	TutTxtdraw[13] = TextDrawCreate(175.000000, 265.000000, "running with all the prices of space, bandwidth and labor these days.");
	TextDrawBackgroundColor(TutTxtdraw[13], 255);
	TextDrawFont(TutTxtdraw[13], 2);
	TextDrawLetterSize(TutTxtdraw[13], 0.159999, 0.899999);
	TextDrawColor(TutTxtdraw[13], -1);
	TextDrawSetOutline(TutTxtdraw[13], 1);
	TextDrawSetProportional(TutTxtdraw[13], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Title)
	TutTxtdraw[14] = TextDrawCreate(168.000000, 120.000000, "Tutorial - How to make money!");
	TextDrawBackgroundColor(TutTxtdraw[14], 255);
	TextDrawFont(TutTxtdraw[14], 2);
	TextDrawLetterSize(TutTxtdraw[14], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[14], -1);
	TextDrawSetOutline(TutTxtdraw[14], 0);
	TextDrawSetProportional(TutTxtdraw[14], 1);
	TextDrawSetShadow(TutTxtdraw[14], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 1)
	TutTxtdraw[15] = TextDrawCreate(175.000000, 141.000000, "There are many jobs located around San Andreas, these are represented");
	TextDrawBackgroundColor(TutTxtdraw[15], 255);
	TextDrawFont(TutTxtdraw[15], 2);
	TextDrawLetterSize(TutTxtdraw[15], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[15], -1);
	TextDrawSetOutline(TutTxtdraw[15], 1);
	TextDrawSetProportional(TutTxtdraw[15], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 2)
	TutTxtdraw[16] = TextDrawCreate(175.000000, 151.000000, "by ~y~yellow~w~ information icons.");
	TextDrawBackgroundColor(TutTxtdraw[16], 255);
	TextDrawFont(TutTxtdraw[16], 2);
	TextDrawLetterSize(TutTxtdraw[16], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[16], -1);
	TextDrawSetOutline(TutTxtdraw[16], 1);
	TextDrawSetProportional(TutTxtdraw[16], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 3)
	TutTxtdraw[17] = TextDrawCreate(181.000000, 172.000000, "| You can ~g~/withdraw~w~ and ~g~/deposit~w~ money at the bank.");
	TextDrawBackgroundColor(TutTxtdraw[17], 255);
	TextDrawFont(TutTxtdraw[17], 2);
	TextDrawLetterSize(TutTxtdraw[17], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[17], -1);
	TextDrawSetOutline(TutTxtdraw[17], 1);
	TextDrawSetProportional(TutTxtdraw[17], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 4)
	TutTxtdraw[18] = TextDrawCreate(181.000000, 183.000000, "| You can ~g~/awithdraw~w~ and ~g~/adeposit~w~ cash at a ATM for a small fee.");
	TextDrawBackgroundColor(TutTxtdraw[18], 255);
	TextDrawFont(TutTxtdraw[18], 2);
	TextDrawLetterSize(TutTxtdraw[18], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[18], -1);
	TextDrawSetOutline(TutTxtdraw[18], 1);
	TextDrawSetProportional(TutTxtdraw[18], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 5)
	TutTxtdraw[19] = TextDrawCreate(181.000000, 195.000000, "| You can ~g~/fish~w~ in boats or at the pier for money.");
	TextDrawBackgroundColor(TutTxtdraw[19], 255);
	TextDrawFont(TutTxtdraw[19], 2);
	TextDrawLetterSize(TutTxtdraw[19], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[19], -1);
	TextDrawSetOutline(TutTxtdraw[19], 1);
	TextDrawSetProportional(TutTxtdraw[19], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 6)
	TutTxtdraw[20] = TextDrawCreate(181.000000, 207.000000, "| You can ~g~/guard~w~ people for money.");
	TextDrawBackgroundColor(TutTxtdraw[20], 255);
	TextDrawFont(TutTxtdraw[20], 2);
	TextDrawLetterSize(TutTxtdraw[20], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[20], -1);
	TextDrawSetOutline(TutTxtdraw[20], 1);
	TextDrawSetProportional(TutTxtdraw[20], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 7)
	TutTxtdraw[21] = TextDrawCreate(181.000000, 219.000000, "| You can ~g~/sellgun~w~ to people for money.");
	TextDrawBackgroundColor(TutTxtdraw[21], 255);
	TextDrawFont(TutTxtdraw[21], 2);
	TextDrawLetterSize(TutTxtdraw[21], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[21], -1);
	TextDrawSetOutline(TutTxtdraw[21], 1);
	TextDrawSetProportional(TutTxtdraw[21], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 8)
	TutTxtdraw[22] = TextDrawCreate(181.000000, 232.000000, "| You can ~g~/sellpot~w~ or ~g~/sellcrack~w~ to people for money.");
	TextDrawBackgroundColor(TutTxtdraw[22], 255);
	TextDrawFont(TutTxtdraw[22], 2);
	TextDrawLetterSize(TutTxtdraw[22], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[22], -1);
	TextDrawSetOutline(TutTxtdraw[22], 1);
	TextDrawSetProportional(TutTxtdraw[22], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 9)
	TutTxtdraw[23] = TextDrawCreate(181.000000, 244.000000, "| You can smuggle drugs with ~g~/getcrate~w~ to specific dens.");
	TextDrawBackgroundColor(TutTxtdraw[23], 255);
	TextDrawFont(TutTxtdraw[23], 2);
	TextDrawLetterSize(TutTxtdraw[23], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[23], -1);
	TextDrawSetOutline(TutTxtdraw[23], 1);
	TextDrawSetProportional(TutTxtdraw[23], 1);
	textdrawscount++;

	// Tutorial (Frame 2-9) (Line 10)
	TutTxtdraw[24] = TextDrawCreate(181.000000, 256.000000, "| You can ~g~/jobhelp~w~ for more!");
	TextDrawBackgroundColor(TutTxtdraw[24], 255);
	TextDrawFont(TutTxtdraw[24], 2);
	TextDrawLetterSize(TutTxtdraw[24], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[24], -1);
	TextDrawSetOutline(TutTxtdraw[24], 1);
	TextDrawSetProportional(TutTxtdraw[24], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Title)
	TutTxtdraw[25] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Law Enforcement");
	TextDrawBackgroundColor(TutTxtdraw[25], 255);
	TextDrawFont(TutTxtdraw[25], 2);
	TextDrawLetterSize(TutTxtdraw[25], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[25], -1);
	TextDrawSetOutline(TutTxtdraw[25], 0);
	TextDrawSetProportional(TutTxtdraw[25], 1);
	TextDrawSetShadow(TutTxtdraw[25], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 1)
	TutTxtdraw[26] = TextDrawCreate(175.000000, 141.000000, "There are currently 4+ ~b~Law Enforcement~w~ Factions. LSPD, SFPD, SASD and FBI.");
	TextDrawBackgroundColor(TutTxtdraw[26], 255);
	TextDrawFont(TutTxtdraw[26], 2);
	TextDrawLetterSize(TutTxtdraw[26], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[26], -1);
	TextDrawSetOutline(TutTxtdraw[26], 1);
	TextDrawSetProportional(TutTxtdraw[26], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 2)
	TutTxtdraw[27] = TextDrawCreate(175.000000, 151.000000, "If you cause trouble and break local laws, you may be arrested by one of");
	TextDrawBackgroundColor(TutTxtdraw[27], 255);
	TextDrawFont(TutTxtdraw[27], 2);
	TextDrawLetterSize(TutTxtdraw[27], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[27], -1);
	TextDrawSetOutline(TutTxtdraw[27], 1);
	TextDrawSetProportional(TutTxtdraw[27], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 3)
	TutTxtdraw[28] = TextDrawCreate(175.000000, 161.000000, "them. If you're wanting to become a part of these factions, apply on our");
	TextDrawBackgroundColor(TutTxtdraw[28], 255);
	TextDrawFont(TutTxtdraw[28], 2);
	TextDrawLetterSize(TutTxtdraw[28], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[28], -1);
	TextDrawSetOutline(TutTxtdraw[28], 1);
	TextDrawSetProportional(TutTxtdraw[28], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 4)
	TutTxtdraw[29] = TextDrawCreate(175.000000, 171.000000, "forums at ~y~www.forum.eg-rp.vn~w~.");
	TextDrawBackgroundColor(TutTxtdraw[29], 255);
	TextDrawFont(TutTxtdraw[29], 2);
	TextDrawLetterSize(TutTxtdraw[29], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[29], -1);
	TextDrawSetOutline(TutTxtdraw[29], 1);
	TextDrawSetProportional(TutTxtdraw[29], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 5)
	TutTxtdraw[30] = TextDrawCreate(181.000000, 196.000000, "| ~b~LSPD~w~ (Los Santos Police Department)");
	TextDrawBackgroundColor(TutTxtdraw[30], 255);
	TextDrawFont(TutTxtdraw[30], 2);
	TextDrawLetterSize(TutTxtdraw[30], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[30], -1);
	TextDrawSetOutline(TutTxtdraw[30], 1);
	TextDrawSetProportional(TutTxtdraw[30], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 6)
	TutTxtdraw[31] = TextDrawCreate(181.000000, 212.000000, "| ~h~~b~SFPD~w~ (San Fierro Police Department)");
	TextDrawBackgroundColor(TutTxtdraw[31], 255);
	TextDrawFont(TutTxtdraw[31], 2);
	TextDrawLetterSize(TutTxtdraw[31], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[31], -1);
	TextDrawSetOutline(TutTxtdraw[31], 1);
	TextDrawSetProportional(TutTxtdraw[31], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 7)
	TutTxtdraw[32] = TextDrawCreate(181.000000, 229.000000, "| ~y~SASD~w~ (San Andreas Sheriff's Department)");
	TextDrawBackgroundColor(TutTxtdraw[32], 255);
	TextDrawFont(TutTxtdraw[32], 2);
	TextDrawLetterSize(TutTxtdraw[32], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[32], -1);
	TextDrawSetOutline(TutTxtdraw[32], 1);
	TextDrawSetProportional(TutTxtdraw[32], 1);
	textdrawscount++;

	// Tutorial (Frame 10) (Line 8)
	TutTxtdraw[33] = TextDrawCreate(181.000000, 246.000000, "| ~b~FBI~w~ (Federal Bureau of Investigation)");
	TextDrawBackgroundColor(TutTxtdraw[33], 255);
	TextDrawFont(TutTxtdraw[33], 2);
	TextDrawLetterSize(TutTxtdraw[33], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[33], -1);
	TextDrawSetOutline(TutTxtdraw[33], 1);
	TextDrawSetProportional(TutTxtdraw[33], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Title)
	TutTxtdraw[34] = TextDrawCreate(168.000000, 120.000000, "Tutorial - San Andreas Fire/Medical Department");
	TextDrawBackgroundColor(TutTxtdraw[34], 255);
	TextDrawFont(TutTxtdraw[34], 2);
	TextDrawLetterSize(TutTxtdraw[34], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[34], -1);
	TextDrawSetOutline(TutTxtdraw[34], 0);
	TextDrawSetProportional(TutTxtdraw[34], 1);
	TextDrawSetShadow(TutTxtdraw[34], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Line 1)
	TutTxtdraw[35] = TextDrawCreate(175.000000, 141.000000, "If you so happen to get injured, You may use ~g~/service ems~w~ to call for");
	TextDrawBackgroundColor(TutTxtdraw[35], 255);
	TextDrawFont(TutTxtdraw[35], 2);
	TextDrawLetterSize(TutTxtdraw[35], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[35], -1);
	TextDrawSetOutline(TutTxtdraw[35], 1);
	TextDrawSetProportional(TutTxtdraw[35], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Line 2)
	TutTxtdraw[36] = TextDrawCreate(175.000000, 151.000000, "help. If the EMS saves you in time, you may keep your personal belongings,");
	TextDrawBackgroundColor(TutTxtdraw[36], 255);
	TextDrawFont(TutTxtdraw[36], 2);
	TextDrawLetterSize(TutTxtdraw[36], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[36], -1);
	TextDrawSetOutline(TutTxtdraw[36], 1);
	TextDrawSetProportional(TutTxtdraw[36], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Line 3)
	TutTxtdraw[37] = TextDrawCreate(175.000000, 161.000000, "without losing them. If you're wanting to become a part of this faction,");
	TextDrawBackgroundColor(TutTxtdraw[37], 255);
	TextDrawFont(TutTxtdraw[37], 2);
	TextDrawLetterSize(TutTxtdraw[37], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[37], -1);
	TextDrawSetOutline(TutTxtdraw[37], 1);
	TextDrawSetProportional(TutTxtdraw[37], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Line 4)
	TutTxtdraw[38] = TextDrawCreate(175.000000, 171.000000, "apply on our forums at ~y~www.forum.eg-rp.vn~w~.");
	TextDrawBackgroundColor(TutTxtdraw[38], 255);
	TextDrawFont(TutTxtdraw[38], 2);
	TextDrawLetterSize(TutTxtdraw[38], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[38], -1);
	TextDrawSetOutline(TutTxtdraw[38], 1);
	TextDrawSetProportional(TutTxtdraw[38], 1);
	textdrawscount++;

	// Tutorial (Frame 11) (Line 5)
	TutTxtdraw[39] = TextDrawCreate(175.000000, 204.000000, "If you want to report a emergency, purchase a cellphone and ~g~/call 911~w~");
	TextDrawBackgroundColor(TutTxtdraw[39], 255);
	TextDrawFont(TutTxtdraw[39], 2);
	TextDrawLetterSize(TutTxtdraw[39], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[39], -1);
	TextDrawSetOutline(TutTxtdraw[39], 1);
	TextDrawSetProportional(TutTxtdraw[39], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Title)
	TutTxtdraw[40] = TextDrawCreate(168.000000, 120.000000, "Tutorial - K-LSR");
	TextDrawBackgroundColor(TutTxtdraw[40], 255);
	TextDrawFont(TutTxtdraw[40], 2);
	TextDrawLetterSize(TutTxtdraw[40], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[40], -1);
	TextDrawSetOutline(TutTxtdraw[40], 0);
	TextDrawSetProportional(TutTxtdraw[40], 1);
	TextDrawSetShadow(TutTxtdraw[40], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Line 1)
	TutTxtdraw[41] = TextDrawCreate(175.000000, 141.000000, "There is a ~b~K-LSR~w~ faction, they handle all the news within San");
	TextDrawBackgroundColor(TutTxtdraw[41], 255);
	TextDrawFont(TutTxtdraw[41], 2);
	TextDrawLetterSize(TutTxtdraw[41], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[41], -1);
	TextDrawSetOutline(TutTxtdraw[41], 1);
	TextDrawSetProportional(TutTxtdraw[41], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Line 2)
	TutTxtdraw[42] = TextDrawCreate(175.000000, 151.000000, "Andreas. They report about anything from gang riots and government");
	TextDrawBackgroundColor(TutTxtdraw[42], 255);
	TextDrawFont(TutTxtdraw[42], 2);
	TextDrawLetterSize(TutTxtdraw[42], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[42], -1);
	TextDrawSetOutline(TutTxtdraw[42], 1);
	TextDrawSetProportional(TutTxtdraw[42], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Line 3)
	TutTxtdraw[43] = TextDrawCreate(175.000000, 161.000000, "corruption, right down to bank robberies. If you wish to become a part of");
	TextDrawBackgroundColor(TutTxtdraw[43], 255);
	TextDrawFont(TutTxtdraw[43], 2);
	TextDrawLetterSize(TutTxtdraw[43], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[43], -1);
	TextDrawSetOutline(TutTxtdraw[43], 1);
	TextDrawSetProportional(TutTxtdraw[43], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Line 4)
	TutTxtdraw[44] = TextDrawCreate(175.000000, 171.000000, "this faction, apply on our forums at ~y~www.forum.eg-rp.vn~w~.");
	TextDrawBackgroundColor(TutTxtdraw[44], 255);
	TextDrawFont(TutTxtdraw[44], 2);
	TextDrawLetterSize(TutTxtdraw[44], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[44], -1);
	TextDrawSetOutline(TutTxtdraw[44], 1);
	TextDrawSetProportional(TutTxtdraw[44], 1);
	textdrawscount++;

	// Tutorial (Frame 12) (Line 5)
	TutTxtdraw[45] = TextDrawCreate(175.000000, 204.000000, "If you want to sell items or advertise about a party, use ~g~/ads~w~.");
	TextDrawBackgroundColor(TutTxtdraw[45], 255);
	TextDrawFont(TutTxtdraw[45], 2);
	TextDrawLetterSize(TutTxtdraw[45], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[45], -1);
	TextDrawSetOutline(TutTxtdraw[45], 1);
	TextDrawSetProportional(TutTxtdraw[45], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Title)
	TutTxtdraw[46] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Government");
	TextDrawBackgroundColor(TutTxtdraw[46], 255);
	TextDrawFont(TutTxtdraw[46], 2);
	TextDrawLetterSize(TutTxtdraw[46], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[46], -1);
	TextDrawSetOutline(TutTxtdraw[46], 0);
	TextDrawSetProportional(TutTxtdraw[46], 1);
	TextDrawSetShadow(TutTxtdraw[46], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Line 1)
	TutTxtdraw[47] = TextDrawCreate(175.000000, 141.000000, "There is also a ~b~Government~w~ faction, they make all important decisions");
	TextDrawBackgroundColor(TutTxtdraw[47], 255);
	TextDrawFont(TutTxtdraw[47], 2);
	TextDrawLetterSize(TutTxtdraw[47], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[47], -1);
	TextDrawSetOutline(TutTxtdraw[47], 1);
	TextDrawSetProportional(TutTxtdraw[47], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Line 2)
	TutTxtdraw[48] = TextDrawCreate(175.000000, 151.000000, "within San Andreas. They make sure law is enforced in the judicial branch.");
	TextDrawBackgroundColor(TutTxtdraw[48], 255);
	TextDrawFont(TutTxtdraw[48], 2);
	TextDrawLetterSize(TutTxtdraw[48], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[48], -1);
	TextDrawSetOutline(TutTxtdraw[48], 1);
	TextDrawSetProportional(TutTxtdraw[48], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Line 3)
	TutTxtdraw[49] = TextDrawCreate(175.000000, 161.000000, "They also set taxes and pay wages. If you're wanting to become a part of");
	TextDrawBackgroundColor(TutTxtdraw[49], 255);
	TextDrawFont(TutTxtdraw[49], 2);
	TextDrawLetterSize(TutTxtdraw[49], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[49], -1);
	TextDrawSetOutline(TutTxtdraw[49], 1);
	TextDrawSetProportional(TutTxtdraw[49], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Line 4)
	TutTxtdraw[50] = TextDrawCreate(175.000000, 171.000000, "this faction, apply on our forums at ~y~forum.eg-rp.vn~w~.");
	TextDrawBackgroundColor(TutTxtdraw[50], 255);
	TextDrawFont(TutTxtdraw[50], 2);
	TextDrawLetterSize(TutTxtdraw[50], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[50], -1);
	TextDrawSetOutline(TutTxtdraw[50], 1);
	TextDrawSetProportional(TutTxtdraw[50], 1);
	textdrawscount++;

	// Tutorial (Frame 13) (Line 5)
	TutTxtdraw[51] = TextDrawCreate(175.000000, 204.000000, "If you'd like to donate your money, you may use ~g~/charity~w~.");
	TextDrawBackgroundColor(TutTxtdraw[51], 255);
	TextDrawFont(TutTxtdraw[51], 2);
	TextDrawLetterSize(TutTxtdraw[51], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[51], -1);
	TextDrawSetOutline(TutTxtdraw[51], 1);
	TextDrawSetProportional(TutTxtdraw[51], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Title)
	TutTxtdraw[52] = TextDrawCreate(168.000000, 120.000000, "Tutorial - The Nation of Tierra Robada");
	TextDrawBackgroundColor(TutTxtdraw[52], 255);
	TextDrawFont(TutTxtdraw[52], 2);
	TextDrawLetterSize(TutTxtdraw[52], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[52], -1);
	TextDrawSetOutline(TutTxtdraw[52], 0);
	TextDrawSetProportional(TutTxtdraw[52], 1);
	TextDrawSetShadow(TutTxtdraw[52], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Line 1)
	TutTxtdraw[53] = TextDrawCreate(175.000000, 141.000000, "~g~Tierra Robada~w~ is an alternate nation seperate from San Andreas.  They");
	TextDrawBackgroundColor(TutTxtdraw[53], 255);
	TextDrawFont(TutTxtdraw[53], 2);
	TextDrawLetterSize(TutTxtdraw[53], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[53], -1);
	TextDrawSetOutline(TutTxtdraw[53], 1);
	TextDrawSetProportional(TutTxtdraw[53], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Line 2)
	TutTxtdraw[54] = TextDrawCreate(175.000000, 151.000000, "have their own laws, law enforcement, government and medical divisions.");
	TextDrawBackgroundColor(TutTxtdraw[54], 255);
	TextDrawFont(TutTxtdraw[54], 2);
	TextDrawLetterSize(TutTxtdraw[54], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[54], -1);
	TextDrawSetOutline(TutTxtdraw[54], 1);
	TextDrawSetProportional(TutTxtdraw[54], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Line 3)
	TutTxtdraw[55] = TextDrawCreate(175.000000, 161.000000, "If you wish to become a part of this faction, apply on our forums");
	TextDrawBackgroundColor(TutTxtdraw[55], 255);
	TextDrawFont(TutTxtdraw[55], 2);
	TextDrawLetterSize(TutTxtdraw[55], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[55], -1);
	TextDrawSetOutline(TutTxtdraw[55], 1);
	TextDrawSetProportional(TutTxtdraw[55], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Line 4)
	TutTxtdraw[56] = TextDrawCreate(175.000000, 171.000000, "at ~y~www.fg-roleplay.com~w~.");
	TextDrawBackgroundColor(TutTxtdraw[56], 255);
	TextDrawFont(TutTxtdraw[56], 2);
	TextDrawLetterSize(TutTxtdraw[56], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[56], -1);
	TextDrawSetOutline(TutTxtdraw[56], 1);
	TextDrawSetProportional(TutTxtdraw[56], 1);
	textdrawscount++;

	// Tutorial (Frame 14) (Line 5)
	TutTxtdraw[57] = TextDrawCreate(175.000000, 204.000000, "Be sure to pay the toll when you visit from San Fierro!");
	TextDrawBackgroundColor(TutTxtdraw[57], 255);
	TextDrawFont(TutTxtdraw[57], 2);
	TextDrawLetterSize(TutTxtdraw[57], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[57], -1);
	TextDrawSetOutline(TutTxtdraw[57], 1);
	TextDrawSetProportional(TutTxtdraw[57], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Title)
	TutTxtdraw[58] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Gangs/Families");
	TextDrawBackgroundColor(TutTxtdraw[58], 255);
	TextDrawFont(TutTxtdraw[58], 2);
	TextDrawLetterSize(TutTxtdraw[58], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[58], -1);
	TextDrawSetOutline(TutTxtdraw[58], 0);
	TextDrawSetProportional(TutTxtdraw[58], 1);
	TextDrawSetShadow(TutTxtdraw[58], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 1)
	TutTxtdraw[59] = TextDrawCreate(175.000000, 141.000000, "San Andreas has several different crime related gangs/families to join.");
	TextDrawBackgroundColor(TutTxtdraw[59], 255);
	TextDrawFont(TutTxtdraw[59], 2);
	TextDrawLetterSize(TutTxtdraw[59], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[59], -1);
	TextDrawSetOutline(TutTxtdraw[59], 1);
	TextDrawSetProportional(TutTxtdraw[59], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 2)
	TutTxtdraw[60] = TextDrawCreate(175.000000, 151.000000, "Type ~g~/families~w~ to display a list of gangs. Type ~g~/families number~w~ to show");
	TextDrawBackgroundColor(TutTxtdraw[60], 255);
	TextDrawFont(TutTxtdraw[60], 2);
	TextDrawLetterSize(TutTxtdraw[60], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[60], -1);
	TextDrawSetOutline(TutTxtdraw[60], 1);
	TextDrawSetProportional(TutTxtdraw[60], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 3)
	TutTxtdraw[61] = TextDrawCreate(175.000000, 161.000000, "thier members. Gang members can take control of the weapons/fuel/drug");
	TextDrawBackgroundColor(TutTxtdraw[61], 255);
	TextDrawFont(TutTxtdraw[61], 2);
	TextDrawLetterSize(TutTxtdraw[61], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[61], -1);
	TextDrawSetOutline(TutTxtdraw[61], 1);
	TextDrawSetProportional(TutTxtdraw[61], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 4)
	TutTxtdraw[62] = TextDrawCreate(175.000000, 171.000000, "trade to earn quick cash. If you want to join a gang, be sure to roleplay");
	TextDrawBackgroundColor(TutTxtdraw[62], 255);
	TextDrawFont(TutTxtdraw[62], 2);
	TextDrawLetterSize(TutTxtdraw[62], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[62], -1);
	TextDrawSetOutline(TutTxtdraw[62], 1);
	TextDrawSetProportional(TutTxtdraw[62], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 5)
	TutTxtdraw[63] = TextDrawCreate(175.000000, 204.000000, "Type ~g~/turfs~w~ to disply the turf maps.");
	TextDrawBackgroundColor(TutTxtdraw[63], 255);
	TextDrawFont(TutTxtdraw[63], 2);
	TextDrawLetterSize(TutTxtdraw[63], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[63], -1);
	TextDrawSetOutline(TutTxtdraw[63], 1);
	TextDrawSetProportional(TutTxtdraw[63], 1);
	textdrawscount++;

	// Tutorial (Frame 15) (Line 6)
	TutTxtdraw[64] = TextDrawCreate(175.000000, 182.000000, "with their leaders, you might get your chance!");
	TextDrawBackgroundColor(TutTxtdraw[64], 255);
	TextDrawFont(TutTxtdraw[64], 2);
	TextDrawLetterSize(TutTxtdraw[64], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[64], -1);
	TextDrawSetOutline(TutTxtdraw[64], 1);
	TextDrawSetProportional(TutTxtdraw[64], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Title)
	TutTxtdraw[65] = TextDrawCreate(168.000000, 120.000000, "Tutorial - 24/7 General Store");
	TextDrawBackgroundColor(TutTxtdraw[65], 255);
	TextDrawFont(TutTxtdraw[65], 2);
	TextDrawLetterSize(TutTxtdraw[65], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[65], -1);
	TextDrawSetOutline(TutTxtdraw[65], 0);
	TextDrawSetProportional(TutTxtdraw[65], 1);
	TextDrawSetShadow(TutTxtdraw[65], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Line 1)
	TutTxtdraw[66] = TextDrawCreate(175.000000, 141.000000, "You can purchase different items with the ~g~/buy~w~ command from any 24/7.");
	TextDrawBackgroundColor(TutTxtdraw[66], 255);
	TextDrawFont(TutTxtdraw[66], 2);
	TextDrawLetterSize(TutTxtdraw[66], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[66], -1);
	TextDrawSetOutline(TutTxtdraw[66], 1);
	TextDrawSetProportional(TutTxtdraw[66], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Line 2)
	TutTxtdraw[67] = TextDrawCreate(175.000000, 151.000000, "Buying a cellphone will give you the ability to ~g~/call~w~ or ~g~/sms~w~ other online");
	TextDrawBackgroundColor(TutTxtdraw[67], 255);
	TextDrawFont(TutTxtdraw[67], 2);
	TextDrawLetterSize(TutTxtdraw[67], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[67], -1);
	TextDrawSetOutline(TutTxtdraw[67], 1);
	TextDrawSetProportional(TutTxtdraw[67], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Line 3)
	TutTxtdraw[68] = TextDrawCreate(175.000000, 161.000000, "players. Along with banks, 24/7 stores appear as a green dollar sign on");
	TextDrawBackgroundColor(TutTxtdraw[68], 255);
	TextDrawFont(TutTxtdraw[68], 2);
	TextDrawLetterSize(TutTxtdraw[68], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[68], -1);
	TextDrawSetOutline(TutTxtdraw[68], 1);
	TextDrawSetProportional(TutTxtdraw[68], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Line 4)
	TutTxtdraw[69] = TextDrawCreate(175.000000, 171.000000, "the mini-map.");
	TextDrawBackgroundColor(TutTxtdraw[69], 255);
	TextDrawFont(TutTxtdraw[69], 2);
	TextDrawLetterSize(TutTxtdraw[69], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[69], -1);
	TextDrawSetOutline(TutTxtdraw[69], 1);
	TextDrawSetProportional(TutTxtdraw[69], 1);
	textdrawscount++;

	// Tutorial (Frame 16) (Line 5)
	TutTxtdraw[70] = TextDrawCreate(175.000000, 195.000000, "VIPs get special discounts from these stores.");
	TextDrawBackgroundColor(TutTxtdraw[70], 255);
	TextDrawFont(TutTxtdraw[70], 2);
	TextDrawLetterSize(TutTxtdraw[70], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[70], -1);
	TextDrawSetOutline(TutTxtdraw[70], 1);
	TextDrawSetProportional(TutTxtdraw[70], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Title)
	TutTxtdraw[71] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Clothing Stores");
	TextDrawBackgroundColor(TutTxtdraw[71], 255);
	TextDrawFont(TutTxtdraw[71], 2);
	TextDrawLetterSize(TutTxtdraw[71], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[71], -1);
	TextDrawSetOutline(TutTxtdraw[71], 0);
	TextDrawSetProportional(TutTxtdraw[71], 1);
	TextDrawSetShadow(TutTxtdraw[71], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Line 1)
	TutTxtdraw[72] = TextDrawCreate(175.000000, 141.000000, "You can purchase different skins with ~g~/buyclothes~w~ from any clothing store.");
	TextDrawBackgroundColor(TutTxtdraw[72], 255);
	TextDrawFont(TutTxtdraw[72], 2);
	TextDrawLetterSize(TutTxtdraw[72], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[72], -1);
	TextDrawSetOutline(TutTxtdraw[72], 1);
	TextDrawSetProportional(TutTxtdraw[72], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Line 2)
	TutTxtdraw[73] = TextDrawCreate(175.000000, 151.000000, "You can also purchase different clothing items with ~g~/buytoys~w~ from any");
	TextDrawBackgroundColor(TutTxtdraw[73], 255);
	TextDrawFont(TutTxtdraw[73], 2);
	TextDrawLetterSize(TutTxtdraw[73], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[73], -1);
	TextDrawSetOutline(TutTxtdraw[73], 1);
	TextDrawSetProportional(TutTxtdraw[73], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Line 3)
	TutTxtdraw[74] = TextDrawCreate(175.000000, 161.000000, "clothing store. Clothing stores appear as a white tee shirt on the");
	TextDrawBackgroundColor(TutTxtdraw[74], 255);
	TextDrawFont(TutTxtdraw[74], 2);
	TextDrawLetterSize(TutTxtdraw[74], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[74], -1);
	TextDrawSetOutline(TutTxtdraw[74], 1);
	TextDrawSetProportional(TutTxtdraw[74], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Line 4)
	TutTxtdraw[75] = TextDrawCreate(175.000000, 171.000000, "mini-map.");
	TextDrawBackgroundColor(TutTxtdraw[75], 255);
	TextDrawFont(TutTxtdraw[75], 2);
	TextDrawLetterSize(TutTxtdraw[75], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[75], -1);
	TextDrawSetOutline(TutTxtdraw[75], 1);
	TextDrawSetProportional(TutTxtdraw[75], 1);
	textdrawscount++;

	// Tutorial (Frame 17) (Line 5)
	TutTxtdraw[76] = TextDrawCreate(175.000000, 195.000000, "VIPs get an unrestricted selection of skins from these stores.");
	TextDrawBackgroundColor(TutTxtdraw[76], 255);
	TextDrawFont(TutTxtdraw[76], 2);
	TextDrawLetterSize(TutTxtdraw[76], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[76], -1);
	TextDrawSetOutline(TutTxtdraw[76], 1);
	TextDrawSetProportional(TutTxtdraw[76], 1);
	textdrawscount++;

	// Tutorial (Frame 18) (Title)
	TutTxtdraw[77] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Car Dealerships");
	TextDrawBackgroundColor(TutTxtdraw[77], 255);
	TextDrawFont(TutTxtdraw[77], 2);
	TextDrawLetterSize(TutTxtdraw[77], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[77], -1);
	TextDrawSetOutline(TutTxtdraw[77], 0);
	TextDrawSetProportional(TutTxtdraw[77], 1);
	TextDrawSetShadow(TutTxtdraw[77], 1);
	textdrawscount++;

	// Tutorial (Frame 18) (Line 1)
	TutTxtdraw[78] = TextDrawCreate(175.000000, 141.000000, "You can purchase different vehicles from several different car");
	TextDrawBackgroundColor(TutTxtdraw[78], 255);
	TextDrawFont(TutTxtdraw[78], 2);
	TextDrawLetterSize(TutTxtdraw[78], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[78], -1);
	TextDrawSetOutline(TutTxtdraw[78], 1);
	TextDrawSetProportional(TutTxtdraw[78], 1);
	textdrawscount++;

	// Tutorial (Frame 18) (Line 2)
	TutTxtdraw[79] = TextDrawCreate(175.000000, 151.000000, "dealerships. Once purchased, you can control said vehicle with the ~g~/car");
	TextDrawBackgroundColor(TutTxtdraw[79], 255);
	TextDrawFont(TutTxtdraw[79], 2);
	TextDrawLetterSize(TutTxtdraw[79], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[79], -1);
	TextDrawSetOutline(TutTxtdraw[79], 1);
	TextDrawSetProportional(TutTxtdraw[79], 1);
	textdrawscount++;

	// Tutorial (Frame 18) (Line 3)
	TutTxtdraw[80] = TextDrawCreate(175.000000, 161.000000, "command. Car dealerships appear as a car on the mini-map.");
	TextDrawBackgroundColor(TutTxtdraw[80], 255);
	TextDrawFont(TutTxtdraw[80], 2);
	TextDrawLetterSize(TutTxtdraw[80], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[80], -1);
	TextDrawSetOutline(TutTxtdraw[80], 1);
	TextDrawSetProportional(TutTxtdraw[80], 1);
	textdrawscount++;

	// Tutorial (Frame 18) (Line 4)
	TutTxtdraw[81] = TextDrawCreate(175.000000, 195.000000, "There are several different car dealerships, also in the VIP garage.");
	TextDrawBackgroundColor(TutTxtdraw[81], 255);
	TextDrawFont(TutTxtdraw[81], 2);
	TextDrawLetterSize(TutTxtdraw[81], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[81], -1);
	TextDrawSetOutline(TutTxtdraw[81], 1);
	TextDrawSetProportional(TutTxtdraw[81], 1);
	textdrawscount++;

	// Tutorial (Frame 19) (Title)
	TutTxtdraw[82] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Houses");
	TextDrawBackgroundColor(TutTxtdraw[82], 255);
	TextDrawFont(TutTxtdraw[82], 2);
	TextDrawLetterSize(TutTxtdraw[82], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[82], -1);
	TextDrawSetOutline(TutTxtdraw[82], 0);
	TextDrawSetProportional(TutTxtdraw[82], 1);
	TextDrawSetShadow(TutTxtdraw[82], 1);
	textdrawscount++;

	// Tutorial (Frame 19) (Line 1)
	TutTxtdraw[83] = TextDrawCreate(175.000000, 141.000000, "Houses are player ownable living units that you can purchase from other");
	TextDrawBackgroundColor(TutTxtdraw[83], 255);
	TextDrawFont(TutTxtdraw[83], 2);
	TextDrawLetterSize(TutTxtdraw[83], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[83], -1);
	TextDrawSetOutline(TutTxtdraw[83], 1);
	TextDrawSetProportional(TutTxtdraw[83], 1);
	textdrawscount++;

	// Tutorial (Frame 19) (Line 2)
	TutTxtdraw[84] = TextDrawCreate(175.000000, 151.000000, "players or from our e-store. You can store materials, drugs and money");
	TextDrawBackgroundColor(TutTxtdraw[84], 255);
	TextDrawFont(TutTxtdraw[84], 2);
	TextDrawLetterSize(TutTxtdraw[84], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[84], -1);
	TextDrawSetOutline(TutTxtdraw[84], 1);
	TextDrawSetProportional(TutTxtdraw[84], 1);
	textdrawscount++;

	// Tutorial (Frame 19) (Line 3)
	TutTxtdraw[85] = TextDrawCreate(175.000000, 161.000000, "into the house safe for keep sakes as long as you own the house.");
	TextDrawBackgroundColor(TutTxtdraw[85], 255);
	TextDrawFont(TutTxtdraw[85], 2);
	TextDrawLetterSize(TutTxtdraw[85], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[85], -1);
	TextDrawSetOutline(TutTxtdraw[85], 1);
	TextDrawSetProportional(TutTxtdraw[85], 1);
	textdrawscount++;

	// Tutorial (Frame 19) (Line 4)
	TutTxtdraw[86] = TextDrawCreate(175.000000, 195.000000, "Houses appear as a ~g~green~w~ floating house throughout San Andreas.");
	TextDrawBackgroundColor(TutTxtdraw[86], 255);
	TextDrawFont(TutTxtdraw[86], 2);
	TextDrawLetterSize(TutTxtdraw[86], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[86], -1);
	TextDrawSetOutline(TutTxtdraw[86], 1);
	TextDrawSetProportional(TutTxtdraw[86], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Title)
	TutTxtdraw[87] = TextDrawCreate(168.000000, 120.000000, "Tutorial - VIP & E-Store");
	TextDrawBackgroundColor(TutTxtdraw[87], 255);
	TextDrawFont(TutTxtdraw[87], 2);
	TextDrawLetterSize(TutTxtdraw[87], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[87], -1);
	TextDrawSetOutline(TutTxtdraw[87], 0);
	TextDrawSetProportional(TutTxtdraw[87], 1);
	TextDrawSetShadow(TutTxtdraw[87], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Line 1)
	TutTxtdraw[88] = TextDrawCreate(175.000000, 141.000000, "We operate a 24/7 E-Store at ~y~eg-rp.vn~w~, you can purchase Vehicles,");
	TextDrawBackgroundColor(TutTxtdraw[88], 255);
	TextDrawFont(TutTxtdraw[88], 2);
	TextDrawLetterSize(TutTxtdraw[88], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[88], -1);
	TextDrawSetOutline(TutTxtdraw[88], 1);
	TextDrawSetProportional(TutTxtdraw[88], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Line 2)
	TutTxtdraw[89] = TextDrawCreate(175.000000, 151.000000, "Houses, VIP and much much more! We have 4 different VIP levels that users");
	TextDrawBackgroundColor(TutTxtdraw[89], 255);
	TextDrawFont(TutTxtdraw[89], 2);
	TextDrawLetterSize(TutTxtdraw[89], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[89], -1);
	TextDrawSetOutline(TutTxtdraw[89], 1);
	TextDrawSetProportional(TutTxtdraw[89], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Line 3)
	TutTxtdraw[90] = TextDrawCreate(175.000000, 161.000000, "can purchase or obtain - learn more on our shop's website. VIPs have access");
	TextDrawBackgroundColor(TutTxtdraw[90], 255);
	TextDrawFont(TutTxtdraw[90], 2);
	TextDrawLetterSize(TutTxtdraw[90], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[90], -1);
	TextDrawSetOutline(TutTxtdraw[90], 1);
	TextDrawSetProportional(TutTxtdraw[90], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Line 4)
	TutTxtdraw[91] = TextDrawCreate(175.000000, 195.000000, "Want a trial run as a VIP? Ask a VIP for a ~b~buddy invite.");
	TextDrawBackgroundColor(TutTxtdraw[91], 255);
	TextDrawFont(TutTxtdraw[91], 2);
	TextDrawLetterSize(TutTxtdraw[91], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[91], -1);
	TextDrawSetOutline(TutTxtdraw[91], 1);
	TextDrawSetProportional(TutTxtdraw[91], 1);
	textdrawscount++;

	// Tutorial (Frame 20) (Line 5)
	TutTxtdraw[92] = TextDrawCreate(175.000000, 172.000000, "to several features, such as VIP chat, special vehicles, and much more!");
	TextDrawBackgroundColor(TutTxtdraw[92], 255);
	TextDrawFont(TutTxtdraw[92], 2);
	TextDrawLetterSize(TutTxtdraw[92], 0.159997, 0.899999);
	TextDrawColor(TutTxtdraw[92], -1);
	TextDrawSetOutline(TutTxtdraw[92], 1);
	TextDrawSetProportional(TutTxtdraw[92], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Title)
	TutTxtdraw[93] = TextDrawCreate(168.000000, 120.000000, "Tutorial - The Rules");
	TextDrawBackgroundColor(TutTxtdraw[93], 255);
	TextDrawFont(TutTxtdraw[93], 2);
	TextDrawLetterSize(TutTxtdraw[93], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[93], -1);
	TextDrawSetOutline(TutTxtdraw[93], 0);
	TextDrawSetProportional(TutTxtdraw[93], 1);
	TextDrawSetShadow(TutTxtdraw[93], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 1)
	TutTxtdraw[94] = TextDrawCreate(175.000000, 141.000000, "Breaking these rules may result in jail/prision time, or leading up to a ban.");
	TextDrawBackgroundColor(TutTxtdraw[94], 255);
	TextDrawFont(TutTxtdraw[94], 2);
	TextDrawLetterSize(TutTxtdraw[94], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[94], -1);
	TextDrawSetOutline(TutTxtdraw[94], 1);
	TextDrawSetProportional(TutTxtdraw[94], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 2)
	TutTxtdraw[95] = TextDrawCreate(181.000000, 160.000000, "| No deathmatching - do not kill without a reason.");
	TextDrawBackgroundColor(TutTxtdraw[95], 255);
	TextDrawFont(TutTxtdraw[95], 2);
	TextDrawLetterSize(TutTxtdraw[95], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[95], -1);
	TextDrawSetOutline(TutTxtdraw[95], 1);
	TextDrawSetProportional(TutTxtdraw[95], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 3)
	TutTxtdraw[96] = TextDrawCreate(181.000000, 170.000000, "| No revengekilling - you loose 30 minutes of memory when you die.");
	TextDrawBackgroundColor(TutTxtdraw[96], 255);
	TextDrawFont(TutTxtdraw[96], 2);
	TextDrawLetterSize(TutTxtdraw[96], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[96], -1);
	TextDrawSetOutline(TutTxtdraw[96], 1);
	TextDrawSetProportional(TutTxtdraw[96], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 4)
	TutTxtdraw[97] = TextDrawCreate(181.000000, 181.000000, "| No carparking - do not park cars on people.");
	TextDrawBackgroundColor(TutTxtdraw[97], 255);
	TextDrawFont(TutTxtdraw[97], 2);
	TextDrawLetterSize(TutTxtdraw[97], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[97], -1);
	TextDrawSetOutline(TutTxtdraw[97], 1);
	TextDrawSetProportional(TutTxtdraw[97], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 5)
	TutTxtdraw[98] = TextDrawCreate(181.000000, 192.000000, "| No disconnecting/logging to avoid any roleplay situation.");
	TextDrawBackgroundColor(TutTxtdraw[98], 255);
	TextDrawFont(TutTxtdraw[98], 2);
	TextDrawLetterSize(TutTxtdraw[98], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[98], -1);
	TextDrawSetOutline(TutTxtdraw[98], 1);
	TextDrawSetProportional(TutTxtdraw[98], 1);
	textdrawscount++;

	// Tutorial (Frame 21) (Line 6)
	TutTxtdraw[99] = TextDrawCreate(181.000000, 203.000000, "| No account farming/server advertising/cheating/hacking.");
	TextDrawBackgroundColor(TutTxtdraw[99], 255);
	TextDrawFont(TutTxtdraw[99], 2);
	TextDrawLetterSize(TutTxtdraw[99], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[99], -1);
	TextDrawSetOutline(TutTxtdraw[99], 1);
	TextDrawSetProportional(TutTxtdraw[99], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Title)
	TutTxtdraw[100] = TextDrawCreate(168.000000, 120.000000, "Tutorial - The iCoin");
	TextDrawBackgroundColor(TutTxtdraw[100], 255);
	TextDrawFont(TutTxtdraw[100], 2);
	TextDrawLetterSize(TutTxtdraw[100], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[100], -1);
	TextDrawSetOutline(TutTxtdraw[100], 0);
	TextDrawSetProportional(TutTxtdraw[100], 1);
	TextDrawSetShadow(TutTxtdraw[100], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 1)
	TutTxtdraw[101] = TextDrawCreate(175.000000, 141.000000, "Be sure to thank who makes all of this possible.");
	TextDrawBackgroundColor(TutTxtdraw[101], 255);
	TextDrawFont(TutTxtdraw[101], 2);
	TextDrawLetterSize(TutTxtdraw[101], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[101], -1);
	TextDrawSetOutline(TutTxtdraw[101], 1);
	TextDrawSetProportional(TutTxtdraw[101], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 2)
	TutTxtdraw[102] = TextDrawCreate(181.000000, 160.000000, "Director of Development");
	TextDrawBackgroundColor(TutTxtdraw[102], 255);
	TextDrawFont(TutTxtdraw[102], 2);
	TextDrawLetterSize(TutTxtdraw[102], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[102], -1);
	TextDrawSetOutline(TutTxtdraw[102], 1);
	TextDrawSetProportional(TutTxtdraw[102], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 3)
	TutTxtdraw[103] = TextDrawCreate(189.000000, 170.000000, "| Brendan Thomson");
	TextDrawBackgroundColor(TutTxtdraw[103], 255);
	TextDrawFont(TutTxtdraw[103], 2);
	TextDrawLetterSize(TutTxtdraw[103], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[103], -1);
	TextDrawSetOutline(TutTxtdraw[103], 1);
	TextDrawSetProportional(TutTxtdraw[103], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 4)
	TutTxtdraw[104] = TextDrawCreate(354.000000, 160.000000, "Scripting");
	TextDrawBackgroundColor(TutTxtdraw[104], 255);
	TextDrawFont(TutTxtdraw[104], 2);
	TextDrawLetterSize(TutTxtdraw[104], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[104], -1);
	TextDrawSetOutline(TutTxtdraw[104], 1);
	TextDrawSetProportional(TutTxtdraw[104], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 5)
	TutTxtdraw[105] = TextDrawCreate(181.000000, 192.000000, "Special Thanks");
	TextDrawBackgroundColor(TutTxtdraw[105], 255);
	TextDrawFont(TutTxtdraw[105], 2);
	TextDrawLetterSize(TutTxtdraw[105], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[105], -1);
	TextDrawSetOutline(TutTxtdraw[105], 1);
	TextDrawSetProportional(TutTxtdraw[105], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 6)
	TutTxtdraw[106] = TextDrawCreate(189.000000, 203.000000, "| JernejL~n~| kyeman~n~");
	TextDrawBackgroundColor(TutTxtdraw[106], 255);
	TextDrawFont(TutTxtdraw[106], 2);
	TextDrawLetterSize(TutTxtdraw[106], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[106], -1);
	TextDrawSetOutline(TutTxtdraw[106], 1);
	TextDrawSetProportional(TutTxtdraw[106], 1);
	textdrawscount++;

	// Tutorial (Frame 22) (Line 7)
	TutTxtdraw[107] = TextDrawCreate(362.000000, 169.000000, "| Scott~n~| Donuts~n~| Brendan~n~| GhoulSlayeR~n~| Zhao~n~| Calgon~n~| Beren~n~| Razbit~n~| Sew Sumi~n~| John Milete~n~| Brian~n~| (S)Mo Cena~n~| Kareem~n~|Jac Cakey~n~| Farva~n~| AlexR~n~| Akatony~n~| Neo");
	TextDrawBackgroundColor(TutTxtdraw[107], 255);
	TextDrawFont(TutTxtdraw[107], 2);
	TextDrawLetterSize(TutTxtdraw[107], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[107], -1);
	TextDrawSetOutline(TutTxtdraw[107], 1);
	TextDrawSetProportional(TutTxtdraw[107], 1);
	textdrawscount++;
	textdrawscount++;

	// Tutorial (Frame 23) (Title)
	TutTxtdraw[108] = TextDrawCreate(168.000000, 120.000000, "Tutorial - Welcome to San Andreas");
	TextDrawBackgroundColor(TutTxtdraw[108], 255);
	TextDrawFont(TutTxtdraw[108], 2);
	TextDrawLetterSize(TutTxtdraw[108], 0.209998, 1.000000);
	TextDrawColor(TutTxtdraw[108], -1);
	TextDrawSetOutline(TutTxtdraw[108], 0);
	TextDrawSetProportional(TutTxtdraw[108], 1);
	TextDrawSetShadow(TutTxtdraw[108], 1);
	textdrawscount++;

	// Tutorial (Frame 23) (Line 1)
	TutTxtdraw[109] = TextDrawCreate(175.000000, 141.000000, "Enough chat, it's time to for us to shut up and for you to play, so if you");
	TextDrawBackgroundColor(TutTxtdraw[109], 255);
	TextDrawFont(TutTxtdraw[109], 2);
	TextDrawLetterSize(TutTxtdraw[109], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[109], -1);
	TextDrawSetOutline(TutTxtdraw[109], 1);
	TextDrawSetProportional(TutTxtdraw[109], 1);
	textdrawscount++;

	// Tutorial (Frame 23) (Line 2)
	TutTxtdraw[110] = TextDrawCreate(175.000000, 152.000000, "have any questions, use ~g~/newb~w~. If you need personal help, use");
	TextDrawBackgroundColor(TutTxtdraw[110], 255);
	TextDrawFont(TutTxtdraw[110], 2);
	TextDrawLetterSize(TutTxtdraw[110], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[110], -1);
	TextDrawSetOutline(TutTxtdraw[110], 1);
	TextDrawSetProportional(TutTxtdraw[110], 1);
	textdrawscount++;

	// Tutorial (Frame 23) (Line 3)
	TutTxtdraw[111] = TextDrawCreate(175.000000, 163.000000, "~g~/requesthelp~w~. For a list of commands type ~g~/help. ~w~For more information,");
	TextDrawBackgroundColor(TutTxtdraw[111], 255);
	TextDrawFont(TutTxtdraw[111], 2);
	TextDrawLetterSize(TutTxtdraw[111], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[111], -1);
	TextDrawSetOutline(TutTxtdraw[111], 1);
	TextDrawSetProportional(TutTxtdraw[111], 1);
	textdrawscount++;

	// Tutorial (Frame 23) (Line 4)
	TutTxtdraw[112] = TextDrawCreate(175.000000, 174.000000, "check out ~y~www.fg-roleplay.com~w~.");
	TextDrawBackgroundColor(TutTxtdraw[112], 255);
	TextDrawFont(TutTxtdraw[112], 2);
	TextDrawLetterSize(TutTxtdraw[112], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[112], -1);
	TextDrawSetOutline(TutTxtdraw[112], 1);
	TextDrawSetProportional(TutTxtdraw[112], 1);
	textdrawscount++;

	// Tutorial (Frame 23) (Line 5)
	TutTxtdraw[113] = TextDrawCreate(175.000000, 204.000000, "Your weapons will be restricted for the first 2 hours of play.");
	TextDrawBackgroundColor(TutTxtdraw[113], 255);
	TextDrawFont(TutTxtdraw[113], 2);
	TextDrawLetterSize(TutTxtdraw[113], 0.159998, 0.899999);
	TextDrawColor(TutTxtdraw[113], -1);
	TextDrawSetOutline(TutTxtdraw[113], 1);
	TextDrawSetProportional(TutTxtdraw[113], 1);
	textdrawscount++;
	
	print("[Textdraws] Loaded textdraws.");
	
	return 1;
}

stock PrepTradeToysGUI(playerid, sellerid, price, object)
{
	new string[128];
	InsideTradeToys[playerid] = 1;
	
	// Background
	ttBackground[playerid] = CreatePlayerTextDraw(playerid, 21.000000, 120.000000, "Background"); // Leave the string there, it will fuck up the size of the background if not
	PlayerTextDrawBackgroundColor(playerid, ttBackground[playerid], 255);
	PlayerTextDrawFont(playerid, ttBackground[playerid], 0);
	PlayerTextDrawLetterSize(playerid, ttBackground[playerid], -0.019998, 34.600002);
	PlayerTextDrawColor(playerid, ttBackground[playerid], -256);
	PlayerTextDrawSetOutline(playerid, ttBackground[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttBackground[playerid], 0);
	PlayerTextDrawSetShadow(playerid, ttBackground[playerid], 1);
	PlayerTextDrawUseBox(playerid, ttBackground[playerid], 1);
	PlayerTextDrawBoxColor(playerid, ttBackground[playerid], 136);
	PlayerTextDrawTextSize(playerid, ttBackground[playerid], 618.000000, 164.000000);
	PlayerTextDrawSetSelectable(playerid, ttBackground[playerid], 0);
	
	// Model
	ttModel[playerid] = CreatePlayerTextDraw(playerid, 382.000000, 201.000000, "Model");
	PlayerTextDrawBackgroundColor(playerid, ttModel[playerid], 255);
	PlayerTextDrawFont(playerid, ttModel[playerid], 5);
	PlayerTextDrawLetterSize(playerid, ttModel[playerid], -0.679998, 15.999996);
	PlayerTextDrawColor(playerid, ttModel[playerid], -1);
	PlayerTextDrawSetOutline(playerid, ttModel[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttModel[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ttModel[playerid], 1);
	PlayerTextDrawUseBox(playerid, ttModel[playerid], 1);
	PlayerTextDrawBoxColor(playerid, ttModel[playerid], 136);
	PlayerTextDrawTextSize(playerid, ttModel[playerid], 171.000000, 145.000000);
	PlayerTextDrawSetSelectable(playerid, ttModel[playerid], 0);
	PlayerTextDrawSetPreviewModel(playerid, ttModel[playerid], object);
	PlayerTextDrawSetPreviewRot(playerid, ttModel[playerid], 0.000000, 0.000000, -180.000000, 1.000000);
	
	// Object Info
	format(string, sizeof(string), "(Object ID %d)", object);
	ttObjectInfo[playerid] = CreatePlayerTextDraw(playerid, 400.000000, 182.000000, string);
	PlayerTextDrawBackgroundColor(playerid, ttObjectInfo[playerid], 255);
	PlayerTextDrawFont(playerid, ttObjectInfo[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ttObjectInfo[playerid], 0.310000, 1.000000);
	PlayerTextDrawColor(playerid, ttObjectInfo[playerid], -1);
	PlayerTextDrawSetOutline(playerid, ttObjectInfo[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttObjectInfo[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ttObjectInfo[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, ttObjectInfo[playerid], 0);
	
	// Logo
	ttLogo[playerid] = CreatePlayerTextDraw(playerid, 264.000000, 121.000000, "Buon ban do choi");
	PlayerTextDrawBackgroundColor(playerid, ttLogo[playerid], 255);
	PlayerTextDrawFont(playerid, ttLogo[playerid], 2);
	PlayerTextDrawLetterSize(playerid, ttLogo[playerid], 0.379999, 1.500000);
	PlayerTextDrawColor(playerid, ttLogo[playerid], 542758143);
	PlayerTextDrawSetOutline(playerid, ttLogo[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttLogo[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ttLogo[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, ttLogo[playerid], 0);
	
	// Purchase
	ttPurchase[playerid] = CreatePlayerTextDraw(playerid, 91.000000, 295.000000, "Mua");
	PlayerTextDrawBackgroundColor(playerid, ttPurchase[playerid], 255);
	PlayerTextDrawFont(playerid, ttPurchase[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ttPurchase[playerid], 0.500000, 1.700000);
	PlayerTextDrawColor(playerid, ttPurchase[playerid], 16711935);
	PlayerTextDrawSetOutline(playerid, ttPurchase[playerid], 1);
	PlayerTextDrawSetProportional(playerid, ttPurchase[playerid], 1);
	PlayerTextDrawUseBox(playerid, ttPurchase[playerid], 1);
	PlayerTextDrawBoxColor(playerid, ttPurchase[playerid], 1625166370);
	PlayerTextDrawTextSize(playerid, ttPurchase[playerid], 164.000000, 4.000000);
	PlayerTextDrawSetSelectable(playerid, ttPurchase[playerid], 1);
	
	// Decline
	ttDecline[playerid] = CreatePlayerTextDraw(playerid, 254.000000, 295.000000, "Tu choi");
	PlayerTextDrawBackgroundColor(playerid, ttDecline[playerid], 255);
	PlayerTextDrawFont(playerid, ttDecline[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ttDecline[playerid], 0.500000, 1.799999);
	PlayerTextDrawColor(playerid, ttDecline[playerid], -16776961);
	PlayerTextDrawSetOutline(playerid, ttDecline[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttDecline[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ttDecline[playerid], 1);
	PlayerTextDrawUseBox(playerid, ttDecline[playerid], 1);
	PlayerTextDrawBoxColor(playerid, ttDecline[playerid], -234414302);
	PlayerTextDrawTextSize(playerid, ttDecline[playerid], 310.000000, 0.000000);
	PlayerTextDrawSetSelectable(playerid, ttDecline[playerid], 0);
	
	// Offer
	format(string, sizeof(string), "%s da de nghi ban do choi nay voi gia $%s", GetPlayerNameEx(sellerid), number_format(price));
	ttOffer[playerid] = CreatePlayerTextDraw(playerid, 71.000000, 174.000000, string);
	PlayerTextDrawBackgroundColor(playerid, ttOffer[playerid], 255);
	PlayerTextDrawFont(playerid, ttOffer[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ttOffer[playerid], 0.310000, 1.000000);
	PlayerTextDrawColor(playerid, ttOffer[playerid], -1);
	PlayerTextDrawSetOutline(playerid, ttOffer[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttOffer[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ttOffer[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, ttOffer[playerid], 0);
	
	// Note
	ttNote[playerid] = CreatePlayerTextDraw(playerid, 74.000000, 221.000000, "Bam phim Y tu ban phim de dong y mua. Bam phim N tu ban phim de tu choi mua");
	PlayerTextDrawBackgroundColor(playerid, ttNote[playerid], 255);
	PlayerTextDrawFont(playerid, ttNote[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ttNote[playerid], 0.150000, 1.000000);
	PlayerTextDrawColor(playerid, ttNote[playerid], -1);
	PlayerTextDrawSetOutline(playerid, ttNote[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttNote[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ttNote[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, ttNote[playerid], 0);
	
	// Yes 
	ttYes[playerid] = CreatePlayerTextDraw(playerid, 117.000000, 275.000000, "'Y'");
	PlayerTextDrawBackgroundColor(playerid, ttYes[playerid], 255);
	PlayerTextDrawFont(playerid, ttYes[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ttYes[playerid], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, ttYes[playerid], 16711935);
	PlayerTextDrawSetOutline(playerid, ttYes[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttYes[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ttYes[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, ttYes[playerid], 0);

	// No 
	ttNo[playerid] = CreatePlayerTextDraw(playerid, 270.000000, 271.000000, "'N'");
	PlayerTextDrawBackgroundColor(playerid, ttNo[playerid], 255);
	PlayerTextDrawFont(playerid, ttNo[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ttNo[playerid], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, ttNo[playerid], -16776961);
	PlayerTextDrawSetOutline(playerid, ttNo[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ttNo[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ttNo[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, ttNo[playerid], 0);
	
	PlayerTextDrawShow(playerid, ttBackground[playerid]);
	PlayerTextDrawShow(playerid, ttModel[playerid]);
	PlayerTextDrawShow(playerid, ttObjectInfo[playerid]);
	PlayerTextDrawShow(playerid, ttLogo[playerid]);
	PlayerTextDrawShow(playerid, ttPurchase[playerid]);
	PlayerTextDrawShow(playerid, ttDecline[playerid]);
	PlayerTextDrawShow(playerid, ttOffer[playerid]);
	PlayerTextDrawShow(playerid, ttNote[playerid]);
	PlayerTextDrawShow(playerid, ttYes[playerid]);
	PlayerTextDrawShow(playerid, ttNo[playerid]);
	return 1;
}

stock HideTradeToysGUI(playerid)
{
	InsideTradeToys[playerid] = 0;
	PlayerTextDrawHide(playerid, ttBackground[playerid]);
	PlayerTextDrawHide(playerid, ttModel[playerid]);
	PlayerTextDrawHide(playerid, ttObjectInfo[playerid]);
	PlayerTextDrawHide(playerid, ttLogo[playerid]);
	PlayerTextDrawHide(playerid, ttPurchase[playerid]);
	PlayerTextDrawHide(playerid, ttDecline[playerid]);
	PlayerTextDrawHide(playerid, ttOffer[playerid]);
	PlayerTextDrawHide(playerid, ttNote[playerid]);
	PlayerTextDrawHide(playerid, ttYes[playerid]);
	PlayerTextDrawHide(playerid, ttNo[playerid]);
	return 1;
}

stock CreateHungerGamesTextdraw(playerid)
{
	new string[128];
	
	// Create the Player Count Textdraw
	format(string, sizeof(string), "Players in event: %d", hgPlayerCount);
	HungerPlayerInfo[playerid][hgPlayerText] = CreatePlayerTextDraw(playerid, 41.000000, 433.000000, string);
	PlayerTextDrawBackgroundColor(playerid, HungerPlayerInfo[playerid][hgPlayerText], 255);
	PlayerTextDrawFont(playerid, HungerPlayerInfo[playerid][hgPlayerText], 1);
	PlayerTextDrawLetterSize(playerid, HungerPlayerInfo[playerid][hgPlayerText], 0.250000, 0.899999);
	PlayerTextDrawColor(playerid, HungerPlayerInfo[playerid][hgPlayerText], -1);
	PlayerTextDrawSetOutline(playerid, HungerPlayerInfo[playerid][hgPlayerText], 1);
	PlayerTextDrawSetProportional(playerid, HungerPlayerInfo[playerid][hgPlayerText], 1);
	PlayerTextDrawSetSelectable(playerid, HungerPlayerInfo[playerid][hgPlayerText], 0);
	
	// Create the loading textdraw
	HungerPlayerInfo[playerid][hgLoadingText] = CreatePlayerTextDraw(playerid, 549.000000, 423.000000, "Dang tai The Hunger Games...");
	PlayerTextDrawBackgroundColor(playerid, HungerPlayerInfo[playerid][hgLoadingText], 255);
	PlayerTextDrawFont(playerid, HungerPlayerInfo[playerid][hgLoadingText], 1);
	PlayerTextDrawLetterSize(playerid, HungerPlayerInfo[playerid][hgLoadingText], 0.160000, 0.699999);
	PlayerTextDrawColor(playerid, HungerPlayerInfo[playerid][hgLoadingText], -16776961);
	PlayerTextDrawSetOutline(playerid, HungerPlayerInfo[playerid][hgLoadingText], 1);
	PlayerTextDrawSetProportional(playerid, HungerPlayerInfo[playerid][hgLoadingText], 1);
	PlayerTextDrawSetSelectable(playerid, HungerPlayerInfo[playerid][hgLoadingText], 0);

	// Create the time left textdraw
	format(string, sizeof(string), "Time left until start: %d", hgCountdown);
	HungerPlayerInfo[playerid][hgTimeLeftText] = CreatePlayerTextDraw(playerid, 549.000000, 432.000000, string);
	PlayerTextDrawBackgroundColor(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], 255);
	PlayerTextDrawFont(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], 1);
	PlayerTextDrawLetterSize(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], 0.210000, 1.000000);
	PlayerTextDrawColor(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], -1);
	PlayerTextDrawSetOutline(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], 1);
	PlayerTextDrawSetProportional(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], 1);
	PlayerTextDrawSetSelectable(playerid, HungerPlayerInfo[playerid][hgTimeLeftText], 0);

	// Create the iCoin textdraw
	HungerPlayerInfo[playerid][hgiCoinText] = CreatePlayerTextDraw(playerid, 532.000000, 2.000000, "The Hunger Games, by Kids");
	PlayerTextDrawBackgroundColor(playerid, HungerPlayerInfo[playerid][hgiCoinText], 255);
	PlayerTextDrawFont(playerid, HungerPlayerInfo[playerid][hgiCoinText], 1);
	PlayerTextDrawLetterSize(playerid, HungerPlayerInfo[playerid][hgiCoinText], 0.190000, 0.699999);
	PlayerTextDrawColor(playerid, HungerPlayerInfo[playerid][hgiCoinText], -16776961);
	PlayerTextDrawSetOutline(playerid, HungerPlayerInfo[playerid][hgiCoinText], 1);
	PlayerTextDrawSetProportional(playerid, HungerPlayerInfo[playerid][hgiCoinText], 1);
	PlayerTextDrawSetSelectable(playerid, HungerPlayerInfo[playerid][hgiCoinText], 0);
	
	// Show the textdraws
	PlayerTextDrawShow(playerid, HungerPlayerInfo[playerid][hgPlayerText]);
	PlayerTextDrawShow(playerid, HungerPlayerInfo[playerid][hgLoadingText]);
	PlayerTextDrawShow(playerid, HungerPlayerInfo[playerid][hgTimeLeftText]);
	PlayerTextDrawShow(playerid, HungerPlayerInfo[playerid][hgiCoinText]);
	return true;
}

stock HideHungerGamesTextdraw(playerid)
{
	// Hide the textdraws
	PlayerTextDrawHide(playerid, HungerPlayerInfo[playerid][hgPlayerText]);
	PlayerTextDrawHide(playerid, HungerPlayerInfo[playerid][hgLoadingText]);
	PlayerTextDrawHide(playerid, HungerPlayerInfo[playerid][hgTimeLeftText]);
	PlayerTextDrawHide(playerid, HungerPlayerInfo[playerid][hgiCoinText]);
	return true;
}

stock ShowFPSCounter(playerid)
{
	new string[64];
	format(string, sizeof(string), "%d", pFPS[playerid]);
	pFPSCounter[playerid] = CreatePlayerTextDraw(playerid,617.000000, 2.000000, string);
	PlayerTextDrawBackgroundColor(playerid,pFPSCounter[playerid], 255);
	PlayerTextDrawFont(playerid,pFPSCounter[playerid], 3);
	PlayerTextDrawLetterSize(playerid,pFPSCounter[playerid], 0.370000, 1.200000);
	PlayerTextDrawColor(playerid,pFPSCounter[playerid], -65281);
	PlayerTextDrawSetOutline(playerid,pFPSCounter[playerid], 1);
	PlayerTextDrawSetProportional(playerid,pFPSCounter[playerid], 1);
	PlayerTextDrawSetSelectable(playerid,pFPSCounter[playerid], 0);
	
	PlayerTextDrawShow(playerid, pFPSCounter[playerid]);
	return true;
}

stock HideFPSCounter(playerid)
{
	PlayerTextDrawHide(playerid, pFPSCounter[playerid]);
	return true;
}

stock CreatePlayerTextDraws(playerid)
{	
	//edit toys mobile
	ChinhToyPTD[0] = CreatePlayerTextDraw(playerid, 475.534545, 153.250000, "X");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[0], 0.502722, 1.874166);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[0], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[0], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[0], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[0], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[0], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[0], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[0], 1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[0], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[0], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[0], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[0], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[0], true);

	ChinhToyPTD[1] = CreatePlayerTextDraw(playerid, 528.009155, 153.833312, "Y");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[1], 0.493820, 1.950001);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[1], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[1], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[1], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[1], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[1], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[1], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[1], 1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[1], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[1], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[1], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[1], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[1], true);

	ChinhToyPTD[2] = CreatePlayerTextDraw(playerid, 577.203857, 153.833282, "Z");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[2], 0.493820, 1.903334);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[2], 10.000000, 33.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[2], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[2], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[2], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[2], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[2], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[2], 1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[2], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[2], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[2], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[2], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[2], true);

	ChinhToyPTD[3] = CreatePlayerTextDraw(playerid, 564.084838, 311.916748, "-");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[3], 0.558007, 1.640833);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[3], 10.000000, 28.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[3], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[3], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[3], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[3], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[3], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[3], 1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[3], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[3], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[3], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[3], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[3], true);

	ChinhToyPTD[4] = CreatePlayerTextDraw(playerid, 477.877197, 213.333358, "X");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[4], 0.497099, 2.008333);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[4], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[4], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[4], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[4], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[4], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[4], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[4], 1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[4], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[4], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[4], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[4], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[4], true);

	ChinhToyPTD[5] = CreatePlayerTextDraw(playerid, 528.946105, 213.916641, "Y");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[5], 0.490072, 1.979166);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[5], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[5], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[5], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[5], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[5], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[5], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[5], 1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[5], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[5], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[5], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[5], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[5], true);

	ChinhToyPTD[6] = CreatePlayerTextDraw(playerid, 578.609436, 214.499984, "Z");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[6], 0.486324, 1.979166);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[6], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[6], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[6], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[6], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[6], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[6], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[6], 1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[6], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[6], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[6], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[6], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[6], true);

	ChinhToyPTD[7] = CreatePlayerTextDraw(playerid, 478.345642, 273.416900, "X");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[7], 0.493820, 1.827499);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[7], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[7], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[7], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[7], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[7], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[7], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[7], 1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[7], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[7], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[7], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[7], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[7], true);

	ChinhToyPTD[8] = CreatePlayerTextDraw(playerid, 529.883300, 274.000244, "Y");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[8], 0.493351, 1.780833);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[8], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[8], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[8], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[8], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[8], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[8], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[8], 1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[8], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[8], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[8], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[8], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[8], true);

	ChinhToyPTD[9] = CreatePlayerTextDraw(playerid, 580.015197, 273.416900, "Z");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[9], 0.485386, 1.769166);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[9], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[9], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[9], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[9], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[9], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[9], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[9], 1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[9], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[9], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[9], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[9], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[9], true);

	ChinhToyPTD[10] = CreatePlayerTextDraw(playerid, 490.995483, 313.083404, "+");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[10], 0.558007, 1.640833);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[10], 10.000000, 29.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[10], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[10], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[10], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[10], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[10], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[10], 1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[10], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[10], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[10], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[10], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[10], true);

	ChinhToyPTD[11] = CreatePlayerTextDraw(playerid, 530.819885, 346.916809, "xong");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[11], 0.234726, 1.144999);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[11], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[11], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[11], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[11], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[11], 8388788);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[11], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[11], 1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[11], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[11], 2);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[11], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[11], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[11], true);

	ChinhToyPTD[12] = CreatePlayerTextDraw(playerid, 589.385131, 113.000091, "X");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[12], 0.256747, 1.244167);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[12], 10.000000, 23.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[12], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[12], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[12], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[12], -16777003);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[12], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[12], 1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[12], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[12], 2);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[12], 1);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[12], true);

	LogoPTD[0] = CreatePlayerTextDraw(playerid, 24.348495, 432.083496, "ID: 20");
	PlayerTextDrawLetterSize(playerid, LogoPTD[0], 0.176163, 1.127079);
	PlayerTextDrawTextSize(playerid, LogoPTD[0], 0.000000, 26.000000);
	PlayerTextDrawAlignment(playerid, LogoPTD[0], 2);
	PlayerTextDrawColor(playerid, LogoPTD[0], -1);
	PlayerTextDrawUseBox(playerid, LogoPTD[0], 1);
	PlayerTextDrawBoxColor(playerid, LogoPTD[0], 255);
	PlayerTextDrawSetShadow(playerid, LogoPTD[0], 0);
	PlayerTextDrawSetOutline(playerid, LogoPTD[0], 0);
	PlayerTextDrawBackgroundColor(playerid, LogoPTD[0], 255);
	PlayerTextDrawFont(playerid, LogoPTD[0], 2);
	PlayerTextDrawSetProportional(playerid, LogoPTD[0], 1);
	PlayerTextDrawSetShadow(playerid, LogoPTD[0], 0);

	LogoPTD[1] = CreatePlayerTextDraw(playerid, 64.641319, 432.666809, "level: 10");
	PlayerTextDrawLetterSize(playerid, LogoPTD[1], 0.163982, 1.033560);
	PlayerTextDrawTextSize(playerid, LogoPTD[1], 0.000000, 37.000000);
	PlayerTextDrawAlignment(playerid, LogoPTD[1], 2);
	PlayerTextDrawColor(playerid, LogoPTD[1], -1);
	PlayerTextDrawUseBox(playerid, LogoPTD[1], 1);
	PlayerTextDrawBoxColor(playerid, LogoPTD[1], 255);
	PlayerTextDrawSetShadow(playerid, LogoPTD[1], 0);
	PlayerTextDrawSetOutline(playerid, LogoPTD[1], 0);
	PlayerTextDrawBackgroundColor(playerid, LogoPTD[1], 255);
	PlayerTextDrawFont(playerid, LogoPTD[1], 2);
	PlayerTextDrawSetProportional(playerid, LogoPTD[1], 1);
	PlayerTextDrawSetShadow(playerid, LogoPTD[1], 0);

	//Shop Notice Textdraw
	ShopNotice[playerid] = CreatePlayerTextDraw(playerid,16.000000, 193.000000, "_");
	PlayerTextDrawBackgroundColor(playerid, ShopNotice[playerid], 255);
	PlayerTextDrawFont(playerid, ShopNotice[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ShopNotice[playerid], 0.289999, 1.299999);
	PlayerTextDrawColor(playerid, ShopNotice[playerid], -1);
	PlayerTextDrawSetOutline(playerid, ShopNotice[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ShopNotice[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ShopNotice[playerid], 1);
	PlayerTextDrawUseBox(playerid, ShopNotice[playerid], 1);
	PlayerTextDrawBoxColor(playerid, ShopNotice[playerid], 75);
	PlayerTextDrawTextSize(playerid, ShopNotice[playerid], 186.000000, 63.000000);
	PlayerTextDrawSetSelectable(playerid, ShopNotice[playerid], 0);
	
	//LEO Textdraws
	BackupText[playerid] = CreatePlayerTextDraw(playerid, 505 ,179 , "~r~Backup call active");
	PlayerTextDrawFont(playerid,BackupText[playerid] , 1);
	PlayerTextDrawLetterSize(playerid,BackupText[playerid] , 0.270000, 2.000000);
	PlayerTextDrawColor(playerid,BackupText[playerid] , -1);
	PlayerTextDrawSetOutline(playerid,BackupText[playerid] , true);
	PlayerTextDrawSetProportional(playerid,BackupText[playerid] , true);
	PlayerTextDrawSetShadow(playerid, BackupText[playerid] , 1);
	
	//Vehicle Textdraws
	_vhudFlash[playerid] = CreatePlayerTextDraw(playerid, -20.000000, 2.000000,"|");
	PlayerTextDrawUseBox(playerid,_vhudFlash[playerid],1);
 	PlayerTextDrawBoxColor(playerid,_vhudFlash[playerid],0xffffff55);
  	PlayerTextDrawTextSize(playerid,_vhudFlash[playerid],660.000000,22.000000);
   	PlayerTextDrawAlignment(playerid,_vhudFlash[playerid],0);
   	PlayerTextDrawBackgroundColor(playerid,_vhudFlash[playerid],0x000000ff);
    PlayerTextDrawFont(playerid,_vhudFlash[playerid],3);
    PlayerTextDrawLetterSize(playerid,_vhudFlash[playerid],1.000000,52.200000);
    PlayerTextDrawColor(playerid,_vhudFlash[playerid],0xffffffff);
    PlayerTextDrawSetOutline(playerid,_vhudFlash[playerid], 1);
    PlayerTextDrawSetProportional(playerid,_vhudFlash[playerid], 1);
    PlayerTextDrawSetShadow(playerid, _vhudFlash[playerid], 1);
	
	_crTextTarget[playerid] = CreatePlayerTextDraw(playerid, 320.000000, 388.000000, "Target Vehicle: ~r~N/A");
	PlayerTextDrawAlignment(playerid, _crTextTarget[playerid], 2);
	PlayerTextDrawBackgroundColor(playerid, _crTextTarget[playerid], 255);
	PlayerTextDrawFont(playerid, _crTextTarget[playerid], 1);
	PlayerTextDrawLetterSize(playerid, _crTextTarget[playerid], 0.500000, 1.600000);
	PlayerTextDrawColor(playerid, _crTextTarget[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _crTextTarget[playerid], 1);
	PlayerTextDrawSetProportional(playerid, _crTextTarget[playerid], 1);

	_crTextSpeed[playerid] = CreatePlayerTextDraw(playerid, 190.000000, 410.000000, "Toc do: ~r~N/A");
	PlayerTextDrawAlignment(playerid, _crTextSpeed[playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, _crTextSpeed[playerid], 255);
	PlayerTextDrawFont(playerid, _crTextSpeed[playerid], 1);
	PlayerTextDrawLetterSize(playerid, _crTextSpeed[playerid], 0.500000, 1.600000);
	PlayerTextDrawColor(playerid, _crTextSpeed[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _crTextSpeed[playerid], 1);
	PlayerTextDrawSetProportional(playerid, _crTextSpeed[playerid], 1);
	
	_crTickets[playerid] = CreatePlayerTextDraw(playerid, 340.000000, 410.000000, "Tickets: ~r~N/A");
	PlayerTextDrawAlignment(playerid, _crTickets[playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, _crTickets[playerid], 255);
	PlayerTextDrawFont(playerid, _crTickets[playerid], 1);
	PlayerTextDrawLetterSize(playerid, _crTickets[playerid], 0.500000, 1.600000);
	PlayerTextDrawColor(playerid, _crTickets[playerid], -1);
	PlayerTextDrawSetOutline(playerid, _crTickets[playerid], 1);
	PlayerTextDrawSetProportional(playerid, _crTickets[playerid], 1);
	
	_vhudVisible[playerid] = 0;
	return 1;
}
