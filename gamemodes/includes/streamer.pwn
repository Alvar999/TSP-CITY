forward LoadStreamerStaticVehicles();
public LoadStreamerStaticVehicles()
{ 
	/*FarmerVehicle[0] = AddStaticVehicle(531, -1217.2687, -1060.7310, 128.7621, 96.3054, 1, 1); //Tractor
	FarmerVehicle[1] = AddStaticVehicle(531, -1217.1671, -1057.0605, 128.6931, 98.3082, 1, 1); //Tractor
	FarmerVehicle[2] = AddStaticVehicle(531, -1217.1646, -1053.4108, 128.6324, 98.4923, 1, 1); //Tractor
	FarmerVehicle[3] = AddStaticVehicle(531, -1217.1732, -1049.7561, 128.6421, 98.6145, 1, 1); //Tractor
	FarmerVehicle[4] = AddStaticVehicle(531, -1217.1687, -1046.0904, 128.6496, 98.6061, 1, 1); //Tractor
	FarmerVehicle[5] = AddStaticVehicle(531, -1217.1733, -1042.4299, 128.6595, 98.6060, 1, 1); //Tractor
	FarmerVehicle[6] = AddStaticVehicle(531, -1217.1730, -1038.7673, 128.6685, 98.6050, 1, 1); //Tractor
	FarmerVehicle[7] = AddStaticVehicle(531, -1217.1722, -1035.1027, 128.6784, 98.6541, 1, 1); //Tractor
	FarmerVehicle[8] = AddStaticVehicle(531, -1217.1708, -1031.4316, 128.6833, 98.6183, 1, 1); //Tractor
	FarmerVehicle[9] = AddStaticVehicle(531, -1217.1663, -1027.7703, 128.6824, 98.6189, 1, 1); //Tractor
	FarmerVehicle[10] = AddStaticVehicle(531, -1217.3372, -1024.1160, 128.7158, 98.4957, 1, 1); //Tractor
	FarmerVehicle[11] = AddStaticVehicle(531, -1217.3428, -1020.4568, 128.7167, 98.5065, 1, 1); //Tractor
	FarmerVehicle[12] = AddStaticVehicle(531, -1217.3414, -1016.7950, 128.7188, 98.4929, 1, 1); //Tractor
	FarmerVehicle[13] = AddStaticVehicle(531, -1217.3459, -1013.1324, 128.7238, 98.4940, 1, 1); //Tractor
	FarmerVehicle[14] = AddStaticVehicle(531, -1217.3460, -1009.4707, 128.7230, 98.4955, 1, 1); //Tractor
	FarmerVehicle[15] = AddStaticVehicle(543, -1196.0329, -1074.9753, 129.0369, 7.3949, 1, 1); //Sadler
	FarmerVehicle[16] = AddStaticVehicle(543, -1192.0803, -1074.4794, 129.0398, 8.6698, 1, 1); //Sadler
	FarmerVehicle[17] = AddStaticVehicle(543, -1188.1391, -1073.9000, 129.0405, 8.7608, 1, 1); //Sadler
	FarmerVehicle[18] = AddStaticVehicle(543, -1184.1954, -1073.3751, 129.0436, 8.6671, 1, 1); //Sadler
	FarmerVehicle[19] = AddStaticVehicle(543, -1180.2539, -1072.8040, 129.0443, 8.9039, 1, 1); //Sadler
	FarmerVehicle[20] = AddStaticVehicle(543, -1176.3061, -1072.2413, 129.0461, 9.1124, 1, 1); //Sadler
	FarmerVehicle[21] = AddStaticVehicle(543, -1172.3743, -1071.6569, 129.0431, 8.6856, 1, 1); //Sadler
	FarmerVehicle[22] = AddStaticVehicle(543, -1168.4279, -1071.1309, 129.0449, 8.6801, 1, 1); //Sadler
	FarmerVehicle[23] = AddStaticVehicle(543, -1164.4826, -1070.5959, 129.0440, 8.6578, 1, 1); //Sadler
	FarmerVehicle[24] = AddStaticVehicle(543, -1160.5369, -1070.0589, 129.0398, 8.6553, 1, 1); *///Sadler



	FarmerVehicle[0] = AddStaticVehicle(531, -361.9463, -1379.1589, 19.4941, 0.9619, 1, 1); //Sadler
	FarmerVehicle[1] = AddStaticVehicle(531, -364.2859, -1383.9244, 20.4410, 0.0000, 1, 1); //Sadler
	FarmerVehicle[2] = AddStaticVehicle(531, -364.2503, -1379.2444, 20.5498, 0.0000, 1, 1); //Sadler
	FarmerVehicle[3] = AddStaticVehicle(531, -361.9727, -1383.7994, 19.8313, 0.9619, 1, 1); //Sadler
	FarmerVehicle[4] = AddStaticVehicle(531, -367.1484, -1384.1755, 21.0241, 0.9619, 1, 1); //Sadler
	FarmerVehicle[5] = AddStaticVehicle(531, -367.1385, -1379.8505, 21.1847, 0.9619, 1, 1); //Sadler
	FarmerVehicle[6] = AddStaticVehicle(543, -366.6590, -1441.8431, 25.5526, 91.1307, 1, 1); //Sadler
	FarmerVehicle[7] = AddStaticVehicle(543, -380.3490, -1454.2943, 25.5526, 91.1307, 1, 1); //Sadler
	FarmerVehicle[8] = AddStaticVehicle(543, -380.2425, -1448.3192, 25.5526, 91.1307, 1, 1); //Sadler
	FarmerVehicle[9] = AddStaticVehicle(543, -380.1819, -1442.1709, 25.5526, 91.1307, 1, 1); //Sadler
	FarmerVehicle[10] = AddStaticVehicle(543, -373.2827, -1453.7068, 25.5526, 91.1307, 1, 1); //Sadler
	FarmerVehicle[11] = AddStaticVehicle(543, -373.2980, -1447.6969, 25.5526, 91.1307, 1, 1); //Sadler
	FarmerVehicle[12] = AddStaticVehicle(543, -373.7262, -1441.7548, 25.5526, 91.1307, 1, 1); //Sadler


    /*TruckerVehicles[0] = AddStaticVehicleEx(414, 1655.2928, 1040.2545, 10.8963, 0.0000	,-1,-1,300); 	// Mule	( LV )
	TruckerVehicles[1] = AddStaticVehicleEx(414, 1680.9824, 1040.2545, 10.8963, 0.0000	,-1,-1,300); 	// Mule	( LV )
	TruckerVehicles[2] = AddStaticVehicleEx(414, 1674.5240, 1040.2545, 10.8963, 0.0000	,-1,-1,300); 	// Mule	( LV )
	TruckerVehicles[3] = AddStaticVehicleEx(414, 1668.2139, 1040.2545, 10.8963, 0.0000	,-1,-1,300); 	// Mule	( LV )
	TruckerVehicles[4] = AddStaticVehicleEx(414, 1661.8103, 1040.2545, 10.8963, 0.0000	,-1,-1,300); 	// Mule	( LV )
	TruckerVehicles[5] = AddStaticVehicleEx(414, 1677.8901, 1027.8215, 10.8963, 180.0000,-1,-1,300); 	// Mule	( LV )
	TruckerVehicles[6] = AddStaticVehicleEx(414, 1652.1632, 1027.8215, 10.8963, 180.0000,-1,-1,300); 	// Mule	( LV )
	TruckerVehicles[7] = AddStaticVehicleEx(414, 1658.6115, 1027.8215, 10.8963, 180.0000,-1,-1,300); 	// Mule	( LV )
	TruckerVehicles[8] = AddStaticVehicleEx(414, 1664.9657, 1027.8215, 10.8963, 180.0000,-1,-1,300); 	// Mule	( LV )
	TruckerVehicles[9] = AddStaticVehicleEx(414, 1671.3850, 1027.8215, 10.8963, 180.0000,-1,-1,300); 	// Mule	( LV )

	TruckerVehicles[10] = AddStaticVehicleEx(456, 1655.3744, 986.5318, 10.8560 , 180.0000, -1,-1,300); 	// Yankee ( LV )
	TruckerVehicles[11] = AddStaticVehicleEx(456, 1681.0500, 986.5318, 10.8560 , 180.0000, -1,-1,300); 	// Yankee ( LV )
	TruckerVehicles[12] = AddStaticVehicleEx(456, 1674.6433, 986.5318, 10.8560 , 180.0000, -1,-1,300); 	// Yankee ( LV )
	TruckerVehicles[13] = AddStaticVehicleEx(456, 1668.2360, 986.5318, 10.8560 , 180.0000, -1,-1,300);	// Yankee ( LV )
	TruckerVehicles[14] = AddStaticVehicleEx(456, 1661.7878, 986.5318, 10.8560 , 180.0000, -1,-1,300);	// Yankee ( LV )
	TruckerVehicles[15] = AddStaticVehicleEx(456, 1652.1897, 1001.2302, 10.8560,  0.0000 , -1,-1,300);	// Yankee ( LV )
	TruckerVehicles[16] = AddStaticVehicleEx(456, 1677.8207, 1001.2302, 10.8560,  0.0000 , -1,-1,300);	// Yankee ( LV )
	TruckerVehicles[17] = AddStaticVehicleEx(456, 1671.3907, 1001.2302, 10.8560,  0.0000 , -1,-1,300);	// Yankee ( LV )
	TruckerVehicles[18] = AddStaticVehicleEx(456, 1664.9498, 1001.2302, 10.8560,  0.0000 , -1,-1,300);	// Yankee ( LV )
	TruckerVehicles[19] = AddStaticVehicleEx(456, 1658.6206, 1001.2302, 10.8560,  0.0000 , -1,-1,300);	// Yankee ( LV )*/


	TruckerVehicles[0] = AddStaticVehicleEx(456, 2520.5085, -2114.9626, 13.5906, 0.0000, -1, -1, 300);
	TruckerVehicles[1] = AddStaticVehicleEx(456, 2512.8169, -2114.8577, 13.5906, 0.0000, -1, -1, 300);
	TruckerVehicles[2] = AddStaticVehicleEx(456, 2506.5496, -2114.7905, 13.5906, 0.0000, -1, -1, 300);
	TruckerVehicles[3] = AddStaticVehicleEx(456, 2499.3831, -2114.6287, 13.5906, 0.0000, -1, -1, 300);
	TruckerVehicles[4] = AddStaticVehicleEx(456, 2492.7515, -2114.4109, 13.5906, 0.0000, -1, -1, 300);
	TruckerVehicles[5] = AddStaticVehicleEx(456, 2485.9028, -2114.6077, 13.5906, 0.0000, -1, -1, 300);
	TruckerVehicles[6] = AddStaticVehicleEx(456, 2479.7410, -2114.4631, 13.5906, 0.0000, -1, -1, 300);
	TruckerVehicles[7] = AddStaticVehicleEx(456, 2471.5996, -2114.5588, 13.5906, 0.0000, -1, -1, 300);
	TruckerVehicles[8] = AddStaticVehicleEx(456, 2463.9614, -2114.5420, 13.5906, 0.0000, -1, -1, 300);
	TruckerVehicles[9] = AddStaticVehicleEx(456, 2456.5532, -2114.9128, 13.5906, 0.0000, -1, -1, 300);


	PizzaVehicles[0] = AddStaticVehicle(448,-1720.2130,1377.1332,6.8157,131.8897,3,6); //
	PizzaVehicles[1] = AddStaticVehicle(448,-1722.9711,1379.7222,6.8157,134.2362,3,6); //
	PizzaVehicles[2] = AddStaticVehicle(448,-1725.1759,1381.9348,6.8157,135.1204,3,6); //
	PizzaVehicles[3] = AddStaticVehicle(448,-1727.7286,1384.5068,6.8157,135.4786,3,6); //
	PizzaVehicles[4] = AddStaticVehicle(448,-1729.9121,1386.5662,6.8157,135.1561,3,6); //
	PizzaVehicles[5] = AddStaticVehicle(448,-1732.4219,1389.0879,6.8157,132.4002,3,6); //
	PizzaVehicles[6] = AddStaticVehicle(448,-1734.7684,1391.4011,6.8157,132.9732,3,6); //
	PizzaVehicles[7] = AddStaticVehicle(448,-1737.1733,1393.7224,6.8159,135.3400,3,6); //
	PizzaVehicles[8] = AddStaticVehicle(448,-1739.5690,1396.0850,6.8156,134.7772,3,6); //
	PizzaVehicles[9] = AddStaticVehicle(448,-1741.9545,1398.3342,6.8157,134.7192,3,6); //
	PizzaVehicles[10] = AddStaticVehicle(448,-1744.3438,1400.7708,6.8157,135.0650,3,6); //
	PizzaVehicles[11] = AddStaticVehicle(448,-1746.3594,1402.7012,6.8156,130.9874,3,6); //

	// LS

	PizzaVehicles[12] = AddStaticVehicle(448, 2095.3970, -1794.5836, 12.9698, 268.9846, 3 , 6);
	PizzaVehicles[13] = AddStaticVehicle(448, 2097.6772, -1801.2173, 12.9698, 267.3177, 3 , 6);
	PizzaVehicles[14] = AddStaticVehicle(448, 2097.7080, -1799.0272, 12.9698, 267.3177, 3 , 6);
	PizzaVehicles[15] = AddStaticVehicle(448, 2097.7529, -1796.8475, 12.9698, 268.9846, 3 , 6);
	PizzaVehicles[16] = AddStaticVehicle(448, 2098.0322, -1794.6348, 12.9698, 268.9846, 3 , 6);
	PizzaVehicles[17] = AddStaticVehicle(448, 2098.0073, -1792.2745, 12.9698, 268.9846, 3 , 6);
	PizzaVehicles[18] = AddStaticVehicle(448, 2095.0168, -1792.5271, 12.9698, 268.9846, 3 , 6);
	PizzaVehicles[19] = AddStaticVehicle(448, 2095.3252, -1796.8851, 12.9698, 268.9846, 3 , 6);
	PizzaVehicles[20] = AddStaticVehicle(448, 2095.3157, -1799.1091, 12.9698, 268.9846, 3 , 6);
	PizzaVehicles[21] = AddStaticVehicle(448, 2095.1279, -1801.1528, 12.9698, 268.9846, 3 , 6);

	
	XangVehicles[0] = AddStaticVehicleEx(403,876.2018,-1268.5746,15.3872,0.1082,1,0,1200); //
	XangVehicles[1] = AddStaticVehicleEx(403,883.1686,-1268.4875,15.3539,358.4469,1,0,1200); //
	XangVehicles[2] = AddStaticVehicleEx(403,890.4046,-1269.2410,15.3518,358.0470,1,0,1200); //
	XangVehicles[3] = AddStaticVehicleEx(403,897.4939,-1269.4183,15.3459,356.2036,1,0,1200); //
	XangVehicles[4] = AddStaticVehicleEx(403,898.9200,-1251.0330,15.9026,1.0395,1,0,1200); //
	XangVehicles[5] = AddStaticVehicleEx(403,891.0994,-1251.3807,15.8876,357.3150,1,0,1200); //
	XangVehicles[6] = AddStaticVehicleEx(403,867.2063,-1204.4384,17.5832,88.2914,1,0,1200); //
	XangVehicles[7] = AddStaticVehicleEx(403,901.8223,-1204.4513,17.5824,86.6320,1,0,1200); //
	XangVehicles[8] = AddStaticVehicleEx(584,852.3386,-1192.8350,18.5757,180.2479,1,1,1200); //
	XangVehicles[9] = AddStaticVehicleEx(584,845.5622,-1193.2183,18.5757,181.4498,1,1,1200); //
	XangVehicles[10] = AddStaticVehicleEx(584,880.8066,-1188.9384,18.1839,183.5248,1,1,1200); //
	XangVehicles[11] = AddStaticVehicleEx(584,887.2417,-1188.8103,18.3253,179.2568,1,3,1200); //
	XangVehicles[12] = AddStaticVehicleEx(584,915.0732,-1189.7109,17.8291,181.8963,1,3,1200); //
	XangVehicles[13] = AddStaticVehicleEx(584,869.8098,-1285.0957,15.1301,1.3870,1,3,1200); //
	XangVehicles[14] = AddStaticVehicleEx(584,847.7432,-1294.7374,14.6175,358.1758,1,3,1200); //

	// Newbie Vehicle
    NewbieVehicles[1] = AddStaticVehicleEx(509,2312.0940, -1471.4240, 22.8128, 175.5392, 0, 1, VEHICLE_RESPAWN); //
	NewbieVehicles[2] = AddStaticVehicleEx(509,2314.3757, -1471.4526, 22.8128, 184.1308, 0, 1, VEHICLE_RESPAWN); //
	NewbieVehicles[3] = AddStaticVehicleEx(509,2316.8196, -1471.4606, 22.8128, 180.6311, 0, 1, VEHICLE_RESPAWN); //
	NewbieVehicles[4] = AddStaticVehicleEx(509,2319.2979, -1471.5626, 22.8128, 182.6670, 0, 1, VEHICLE_RESPAWN); //
	NewbieVehicles[5] = AddStaticVehicleEx(509,2321.7295, -1471.4669, 22.8128, 183.8657, 0, 1, VEHICLE_RESPAWN); //
	NewbieVehicles[6] = AddStaticVehicleEx(509,2324.7561, -1471.4812, 22.8128, 178.1690, 0, 1, VEHICLE_RESPAWN); //
	NewbieVehicles[7] = AddStaticVehicleEx(509,2315.7480, -1456.7524, 22.8128, 2.4394, 0, 1, VEHICLE_RESPAWN); //
	NewbieVehicles[8] = AddStaticVehicleEx(509,2318.8474, -1456.7920, 22.8128, 0.0687, 0, 1, VEHICLE_RESPAWN); //
	NewbieVehicles[9] = AddStaticVehicleEx(509,2321.9521, -1456.7039, 22.8128, 352.5758, 0, 1, VEHICLE_RESPAWN); //

	// VIP garage
	VIPVehicles[0] = AddStaticVehicleEx(411,-4365.93212891,839.28680420,986.18029785,0.00000000,-1,-1,180); //Infernus
	VIPVehicles[1] = AddStaticVehicleEx(429,-4370.52832031,840.57843018,986.13031006,0.00000000,-1,-1,180); //Banshee
	VIPVehicles[2] = AddStaticVehicleEx(451,-4374.41894531,840.36810303,986.14465332,0.00000000,-1,-1,180); //Turismo
	VIPVehicles[3] = AddStaticVehicleEx(541,-4378.48046875,840.84783936,986.08032227,0.00000000,-1,-1,180); //Bullet
	VIPVehicles[4] = AddStaticVehicleEx(559,-4382.43701172,840.60235596,986.13439941,0.00000000,-1,-1,180); //Jester
	VIPVehicles[5] = AddStaticVehicleEx(560,-4386.68066406,841.29382324,986.18530273,0.00000000,-1,-1,180); //Sultan
	VIPVehicles[6] = AddStaticVehicleEx(603,-4390.54345703,841.60748291,986.38299561,0.00000000,-1,-1,180); //Phoenix
	VIPVehicles[7] = AddStaticVehicleEx(480,-4394.61035156,841.88873291,986.23028564,0.00000000,-1,-1,180); //Comet
	VIPVehicles[8] = AddStaticVehicleEx(506,-4399.16455078,842.31146240,986.17242432,0.00000000,-1,-1,180); //Super GT
	VIPVehicles[9] = AddStaticVehicleEx(587,-4402.89990234,842.34979248,986.19030762,0.00000000,-1,-1,180); //Euros
	VIPVehicles[10] = AddStaticVehicleEx(411,-4407.21337891,842.98492432,986.18029785,0.00000000,-1,-1,180); //Infernus
	VIPVehicles[11] = AddStaticVehicleEx(429,-4410.96923828,843.07391357,986.13031006,0.00000000,-1,-1,180); //Banshee
	VIPVehicles[12] = AddStaticVehicleEx(451,-4415.64257812,843.46972656,986.14465332,0.00000000,-1,-1,180); //Turismo
	VIPVehicles[13] = AddStaticVehicleEx(541,-4419.40478516,843.48645020,986.08032227,0.00000000,-1,-1,180); //Bullet
	VIPVehicles[14] = AddStaticVehicleEx(559,-4423.40332031,843.19854736,986.13439941,0.00000000,-1,-1,180); //Jester
	VIPVehicles[15] = AddStaticVehicleEx(560,-4427.88232422,843.82849121,986.18530273,0.00000000,-1,-1,180); //Sultan
	VIPVehicles[16] = AddStaticVehicleEx(603,-4431.95849609,844.09509277,986.38299561,0.00000000,-1,-1,180); //Phoenix
	VIPVehicles[17] = AddStaticVehicleEx(480,-4436.15429688,844.76721191,986.23028564,0.00000000,-1,-1,180); //Comet
	VIPVehicles[18] = AddStaticVehicleEx(506,-4441.21337891,850.94598389,986.17242432,270.00000000,-1,-1,180); //Super GT
	VIPVehicles[19] = AddStaticVehicleEx(587,-4441.05224609,854.70550537,986.19030762,270.00000000,-1,-1,180); //Euros
	VIPVehicles[20] = AddStaticVehicleEx(522,-4418.77490234,858.65576172,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[21] = AddStaticVehicleEx(522,-4414.77441406,858.50390625,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[22] = AddStaticVehicleEx(522,-4410.77441406,858.35253906,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[23] = AddStaticVehicleEx(522,-4406.30957031,857.78234863,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[24] = AddStaticVehicleEx(522,-4394.11425781,856.77416992,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[25] = AddStaticVehicleEx(522,-4390.35644531,856.70147705,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[26] = AddStaticVehicleEx(522,-4386.21923828,856.22369385,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[27] = AddStaticVehicleEx(522,-4382.18164062,855.81323242,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[28] = AddStaticVehicleEx(522,-4417.77832031,876.99304199,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[29] = AddStaticVehicleEx(522,-4414.06494141,876.46301270,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[30] = AddStaticVehicleEx(522,-4409.78320312,876.41296387,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[31] = AddStaticVehicleEx(522,-4405.26074219,876.33081055,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[32] = AddStaticVehicleEx(522,-4393.28417969,875.69360352,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[33] = AddStaticVehicleEx(522,-4389.04248047,875.41735840,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[34] = AddStaticVehicleEx(522,-4385.04980469,875.21435547,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[35] = AddStaticVehicleEx(522,-4381.05761719,875.00488281,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[36] = AddStaticVehicleEx(411,-4407.94287109,891.34375000,986.18029785,180.00000000,-1,-1,180); //Infernus
	VIPVehicles[37] = AddStaticVehicleEx(411,-4403.66748047,891.17761230,986.18029785,180.00000000,-1,-1,180); //Infernus
	VIPVehicles[38] = AddStaticVehicleEx(411,-4399.91601562,891.28747559,986.18029785,180.00000000,-1,-1,180); //Infernus
	VIPVehicles[39] = AddStaticVehicleEx(411,-4395.91601562,891.31347656,986.18029785,180.00000000,-1,-1,180); //Infernus
	VIPVehicles[40] = AddStaticVehicleEx(451,-4391.23242188,891.03985596,986.14465332,180.00000000,-1,-1,180); //Turismo
	VIPVehicles[41] = AddStaticVehicleEx(451,-4387.48339844,891.00421143,986.14465332,180.00000000,-1,-1,180); //Turismo
	VIPVehicles[42] = AddStaticVehicleEx(451,-4383.49218750,890.44665527,986.14465332,180.00000000,-1,-1,180); //Turismo
	VIPVehicles[43] = AddStaticVehicleEx(429,-4374.92187500,890.17211914,986.13031006,180.00000000,-1,-1,180); //Banshee
	VIPVehicles[44] = AddStaticVehicleEx(429,-4370.80273438,889.91503906,986.13031006,180.00000000,-1,-1,180); //Banshee
	VIPVehicles[45] = AddStaticVehicleEx(429,-4379.33349609,890.09112549,986.13031006,180.00000000,-1,-1,180); //Banshee
	VIPVehicles[46] = AddStaticVehicleEx(560,-4366.63867188,889.44537354,986.18530273,180.00000000,-1,-1,180); //Sultan
	VIPVehicles[47] = AddStaticVehicleEx(560,-4358.66015625,888.96386719,986.18530273,180.00000000,-1,-1,180); //Sultan
	VIPVehicles[48] = AddStaticVehicleEx(560,-4354.67675781,888.44500732,986.18530273,180.00000000,-1,-1,180); //Sultan
	VIPVehicles[49] = AddStaticVehicleEx(560,-4362.83789062,889.30908203,986.18530273,180.00000000,-1,-1,180); //Sultan

	/* Palomino Creek Docks */
	/*
	TruckerVehicles[19] = AddStaticVehicleEx(452,2185.99658203,-149.95848083,0.00000000,276.54052734,-1,-1,180); //Speeder
	TruckerVehicles[20] = AddStaticVehicleEx(452,2186.97680664,-158.20143127,0.00000000,276.53686523,-1,-1,180); //Speeder
	TruckerVehicles[21] = AddStaticVehicleEx(452,2187.71826172,-166.46507263,0.00000000,276.34887695,-1,-1,180); //Speeder
	TruckerVehicles[22] = AddStaticVehicleEx(452,2192.13793945,-200.85733032,0.00000000,276.53259277,-1,-1,180); //Speeder
	TruckerVehicles[23] = AddStaticVehicleEx(446,2193.27734375,-208.95735168,0.00000000,276.53137207,-1,-1,180); //Speeder
	TruckerVehicles[24] = AddStaticVehicleEx(452,2194.16015625,-217.30232239,0.00000000,276.53137207,-1,-1,180); //Speeder
	TruckerVehicles[25] = AddStaticVehicleEx(446,2194.73437500,-225.24971008,0.00000000,276.53137207,-1,-1,180); //Speeder
	TruckerVehicles[26] = AddStaticVehicleEx(452,2195.46508789,-233.01260376,0.00000000,276.53137207,-1,-1,180); //Speeder
	TruckerVehicles[27] = AddStaticVehicleEx(452,2196.51562500,-240.20898438,0.00000000,276.53137207,-1,-1,180); //Speeder
	TruckerVehicles[28] = AddStaticVehicleEx(452,2248.83911133,-236.78352356,0.00000000,274.83947754,-1,-1,180); //Speeder
	TruckerVehicles[29] = AddStaticVehicleEx(452,2248.34790039,-228.59799194,0.00000000,274.83947754,-1,-1,180); //Speeder
	TruckerVehicles[30] = AddStaticVehicleEx(446,2247.91552734,-219.05198669,0.00000000,274.83947754,-1,-1,180); //Speeder
	TruckerVehicles[31] = AddStaticVehicleEx(452,2247.09057617,-210.72824097,0.00000000,274.83947754,-1,-1,180); //Speeder
	TruckerVehicles[32] = AddStaticVehicleEx(452,2245.94946289,-202.20306396,0.00000000,274.08752441,-1,-1,180); //Speeder
	TruckerVehicles[33] = AddStaticVehicleEx(452,2245.44799805,-194.00953674,0.00000000,273.41845703,-1,-1,180); //Speeder
	TruckerVehicles[34] = AddStaticVehicleEx(452,2244.83129883,-185.67364502,0.00000000,273.89953613,-1,-1,180); //Speeder
	TruckerVehicles[35] = AddStaticVehicleEx(453,2244.21508789,-177.24726868,0.00000000,274.83947754,-1,-1,180); //Speeder
	TruckerVehicles[36] = AddStaticVehicleEx(453,2243.78955078,-168.67892456,0.00000000,274.83947754,-1,-1,180); //Speeder
	*/
	//Sultan
	FamedVehicles[0] = AddStaticVehicleEx(560,2515.6797,2381.6501,3.9175,90.5219,-1,-1,180);
	FamedVehicles[1] = AddStaticVehicleEx(560,2515.9753,2372.6431,3.9167,89.3516,-1,-1,180);
	FamedVehicles[2] = AddStaticVehicleEx(560,2515.2947,2363.1985,3.9228,89.3915,-1,-1,180);
	//Cheetah
	FamedVehicles[3] = AddStaticVehicleEx(415,2515.2170,2377.3411,3.9823,90.2256,-1,-1,180);
	FamedVehicles[4] = AddStaticVehicleEx(415,2515.2529,2368.2183,3.9826,90.2256,-1,-1,180);
	//NRG
	FamedVehicles[5] = AddStaticVehicleEx(522,2498.9292,2363.5708,3.7897,242.9848,-1,-1,180);
	FamedVehicles[6] = AddStaticVehicleEx(522,2499.3206,2366.6091,3.8081,242.9848,-1,-1,180);
	FamedVehicles[7] = AddStaticVehicleEx(522,2499.4883,2370.2681,3.8290,242.9847,-1,-1,180);
	FamedVehicles[8] = AddStaticVehicleEx(522,2499.3398,2382.6699,3.8842,242.9847,-1,-1,180);
	FamedVehicles[9] = AddStaticVehicleEx(522,2499.2588,2385.4790,3.7989,242.9847,-1,-1,180);
	FamedVehicles[10] = AddStaticVehicleEx(522,2499.0728,2390.9985,3.8373,242.9846,-1,-1,180);
	//PCJ
	FamedVehicles[11] = AddStaticVehicleEx(461,2494.5908,2353.1921,3.7971,328.9557,-1,-1,180);
	FamedVehicles[12] = AddStaticVehicleEx(461,2497.6455,2352.8145,3.7880,328.9523,-1,-1,180);
	FamedVehicles[13] = AddStaticVehicleEx(461,2501.5059,2352.7971,3.7973,328.9482,-1,-1,180);
	FamedVehicles[14] = AddStaticVehicleEx(461,2506.0073,2352.9568,3.7935,328.9489,-1,-1,180);
	//Comets
	FamedVehicles[15] = AddStaticVehicleEx(480,2524.4268,2381.5957,3.9851,269.3853,-1,-1,180);
	FamedVehicles[16] = AddStaticVehicleEx(480,2524.3342,2372.9875,3.9898,269.3844,-1,-1,180);
	FamedVehicles[17] = AddStaticVehicleEx(480,2524.2336,2363.5969,3.9947,269.3852,-1,-1,180);
	//Bullet
	FamedVehicles[18] = AddStaticVehicleEx(541,2524.1758,2377.0989,3.8359,269.6020,-1,-1,180);
	FamedVehicles[19] = AddStaticVehicleEx(541,2524.1130,2368.1453,3.8404,269.6032,-1,-1,180);
	//Jester
	FamedVehicles[20] = AddStaticVehicleEx(559,2542.2134,2381.6531,3.8673,89.7158,-1,-1,180);
	FamedVehicles[21] = AddStaticVehicleEx(559,2541.9707,2372.5603,3.8675,89.7158,-1,-1,180);
	//SuperGT
	FamedVehicles[22] = AddStaticVehicleEx(506,2541.7937,2367.7646,3.9154,89.7431,-1,-1,180);
	FamedVehicles[23] = AddStaticVehicleEx(506,2541.8357,2377.2507,3.9155,89.7431,-1,-1,180);
	//Banshee
	FamedVehicles[24] = AddStaticVehicleEx(429,2542.5437,2363.3955,3.8906,90.2345,-1,-1,180);
	//Infernus
	FamedVehicles[25] = AddStaticVehicleEx(411,2510.7610,2397.8477,3.9380,180.5807,-1,-1,180);
	FamedVehicles[26] = AddStaticVehicleEx(411,2519.9934,2397.9417,3.9424,180.5807,-1,-1,180);
	//Uranus
	FamedVehicles[27] = AddStaticVehicleEx(558,2515.1958,2398.0537,3.8412,179.9306,-1,-1,180);
	FamedVehicles[28] = AddStaticVehicleEx(558,2524.5942,2397.4172,3.8415,179.9293,-1,-1,180);
	//Huntley
	FamedVehicles[31] = AddStaticVehicleEx(579,2528.9141,2397.9255,4.1505,179.4067,-1,-1,180);
	FamedVehicles[32] = AddStaticVehicleEx(579,2537.8970,2397.8325,4.1541,179.4066,-1,-1,180);
	//Premier
	FamedVehicles[33] = AddStaticVehicleEx(426,2533.3384,2397.8184,3.9538,179.7989,-1,-1,180);
	FamedVehicles[34] = AddStaticVehicleEx(426,2542.4468,2397.7859,3.9583,179.8030,-1,-1,180);
	//Sanchez
	FamedVehicles[35] = AddStaticVehicleEx(468,2508.5623,2352.0640,3.8801,327.8297,-1,-1,180);
	FamedVehicles[36] = AddStaticVehicleEx(468,2512.6743,2352.0581,3.8747,327.8297,-1,-1,180);
	FamedVehicles[37] = AddStaticVehicleEx(468,2513.9478,2351.9365,3.8822,327.8291,-1,-1,180);
	FamedVehicles[38] = AddStaticVehicleEx(468,2516.2051,2352.1504,3.8789,327.8291,-1,-1,180);
	
	return 1;
}

forward LoadStreamerDynamicPickups();
public LoadStreamerDynamicPickups()
{
	// Points
	new string[128];
    for(new h = 0; h < sizeof(Points); h++)
	{
		if(Points[h][Type] == 3)
		{
			format(string, sizeof(string), " POT/THUOC PHIEN CO SAN: %d/1000.", Points[h][Stock]);
			Points[h][TextLabel] = CreateDynamic3DTextLabel(string, COLOR_YELLOW, Points[h][Pointx], Points[h][Pointy], Points[h][Pointz], 4.0);
			Points[h][CratePoint] = 1;
		}
		else if(Points[h][Type] == 4)
		{
			format(string, sizeof(string), " CRACK CO SAN: %d/500.", Points[h][Stock]);
			Points[h][TextLabel] = CreateDynamic3DTextLabel(string, COLOR_YELLOW, Points[h][Pointx], Points[h][Pointy], Points[h][Pointz], 4.0);
			Points[h][CratePoint] = 2;
		}
		CreateDynamicPickup(1239, 23, Points[h][Pointx], Points[h][Pointy], Points[h][Pointz]);
	}

	for(new i = 0; i < sizeof(PosBuyFood); i++) CreateDynamicPickup(2881, 23, PosBuyFood[i][0], PosBuyFood[i][1], PosBuyFood[i][2], -1); // Buy Food
	for(new i = 0; i < sizeof(PosThueXe); i++) CreateDynamicPickup(1239, 23, PosThueXe[i][0],PosThueXe[i][1], PosThueXe[i][2], -1); // Buy Food

    // Pickups
	CreateDynamicPickup(1239, 23, -1196.4404, -1070.0533, 129.2188, -1); // Farmer
	CreateDynamicPickup(1239, 23, 2096.0247,-1813.4172,13.3828, -1); // pizza ls
	CreateDynamicPickup(1239, 23, 1462.3606, 342.6024, 18.9531, -1); // Nguoi Chat Go
	CreateDynamicPickup(1239, 23, 1634.7841, 762.2999, 10.8203, -1); // Ban Go
	CreateDynamicPickup(1239, 23, 584.8134, 869.1849, -42.4973, -1); // Khai Thac Da
	CreateDynamicPickup(1239, 23, -380.9873,-1430.6262,25.7266, -1); // Nong Dan
	CreateDynamicPickup(1239, 23, 1695.3774, 684.4698, 10.8203, -1); // Khai Thac Da - Ban Da
	CreateDynamicPickup(1239, 23, -1740.6216,1385.5175,7.2173, -1); // Pizza Boy job (SF)
	CreateDynamicPickup(1239, 23, 833.60, 3.23, 1004.17, -1); // /paymytickets point
	CreateDynamicPickup(1239, 23, -4429.944824, 905.032470, 987.078186, -1); // VIP Garage Travel
	CreateDynamicPickup(1239, 23, -2649.4661, 1350.0269, 7.1825, -1); // Tho Sua Xe ( SF )
	CreateDynamicPickup(1239, 23, 757.3734,5.7227,1000.7012, -1); // Train Pos
	CreateDynamicPickup(1239, 23, 758.43,-78.0,1000.65, -1); // Train Pos (MALL GYM)
    CreateDynamicPickup(1210, 23, -71.419654846191,1360.4097900391,1080.2185058594, -1); //Hitman Pickup
	CreateDynamicPickup(1240, 23, 1142.4733,-1326.3633,13.6259, -1);// Deliverpt (All Saints)
	CreateDynamicPickup(1240, 23, 2027.0599,-1410.6870,16.9922, -1);// Deliverpt (County General)
	CreateDynamicPickup(1240, 23, -2695.5725,639.4147,14.4531, -1); // Deliverpt (SF)
	CreateDynamicPickup(1240, 23, 1165.1564,-1368.8240,26.6502, -1);// Deliverpt (All Saints Rooftop)
	CreateDynamicPickup(1240, 23, 2024.5742,-1382.7844,48.3359, -1);// Deliverpt (County General)
	CreateDynamicPickup(1240, 23, -2656.0339,615.2567,66.0938, -1);// Deliverpt (SF Rooftop)
	CreateDynamicPickup(1239, 23, -1560.963867, 127.491157, 3.554687); //Trucker registration
	CreateDynamicPickup(1239, 23, 758.98,-60.32,1000.78); //Boxer Registration2

	CreateDynamicPickup(1239, 23, 358.2363,182.6809,1008.3828, -1); //thibanglai
	CreateDynamicPickup(1239, 23, 361.8317,173.6526,1008.3828, -1); //cmnd
	CreateDynamicPickup(1239, 23, 366.3999,158.9757,1008.3828, -1); //biensoxe
	CreateDynamicPickup(1239, 23, -2663.4546,553.4243,14.6094, -1); //aremna
	CreateDynamicPickup(1239, 23, 1667.0760,-972.2538,683.6855, -1); //bank

    CreateDynamicPickup(1239, 23, -1709.6616,400.5131,7.1872);
    CreateDynamicPickup(1239, 23, -1702.4624,378.1379,7.1797);
    CreateDynamicPickup(1409, 23, -1889.5608,-201.3575,14.4711);
    CreateDynamicPickup(1239, 23, -2513.2341,-35.6000,25.6172);
    CreateDynamicPickup(917, 23, -1872.7393,1120.5895,45.4453);
    CreateDynamicPickup(1239, 23, -1835.3987,1429.0834,7.1875);

	CreateDynamicPickup(1239, 23, -395.7523, -1435.4697, 25.7266); // che bien can sa
	CreateDynamicPickup(1239, 23, 2846.5195,973.0493,10.7500); // rua tien ban

	CreateDynamicPickup(1239, 23, -1740.9340, 1382.2024, 7.2173); // ben canh lay banh



	CreateDynamicPickup(1239, 23, 207.0248, -129.9042, 1003.5078); // /trangphuc
	return 1;
}

forward LoadStreamerDynamic3DTextLabels();
public LoadStreamerDynamic3DTextLabels()
{
	new string[1028];
	for(new i = 0; i < sizeof(PosWood); i++) CreateDynamic3DTextLabel("CAY GO\nSu dung lenh /chatgo de chat go", -1, PosWood[i][0], PosWood[i][1], PosWood[i][2], 30.0);
	for(new i = 0; i < sizeof(PosBuyFood); i++) CreateDynamic3DTextLabel("{AA3333}MUA DO AN{FFFFFF}\nSu dung /buyfood de mua do an", -1, PosBuyFood[i][0], PosBuyFood[i][1], PosBuyFood[i][2]+0.5, 4.0);
	for(new i = 0; i < sizeof(PosThueXe); i++) CreateDynamic3DTextLabel("{AA3333}THUE XE{FFFFFF}\nSu dung /thuexe de thue xe", -1, PosThueXe[i][0], PosThueXe[i][1], PosThueXe[i][2]+0.5, 4.0);

	CreateDynamic3DTextLabel("{FFFFFF}SU DUNG: {FFFF00}/trangphuc{FFFFFF}\n{C2BFB6}De Mua Trang Phuc/Skin", -1, 207.0248, -129.9042, 1003.5078+0.5,4.0);

    CreateDynamic3DTextLabel("{FF8000}/loadforklift\nDe dua cac thung len xe forklift", COLOR_YELLOW, -2114.1, -1723.5, 11984.5, 20.0, _, _, 1, 0, -1, _, 20.0);
	CreateDynamic3DTextLabel("{FF8000}LOCKDOWN\nCHI BAM TRONG TRUONG HOP KHAN CAP", COLOR_YELLOW, -1121.70, 4290.41, 5.88, 20.0, _, _, 1, 0, 0, _, 20.0);

	CreateDynamic3DTextLabel("Ban Muon Thi Bang Lai \nSu dung /thibanglai de bat dau ngay ",COLOR_RED,358.2363,182.6809,1008.3828+0.5,4.0);//thibanglai
	CreateDynamic3DTextLabel("Ban Muon Dang Ky CMND \nSu dung /dangkycccd de dang ky",COLOR_RED,361.8317,173.6526,1008.3828+0.5,4.0);//cmnd
	CreateDynamic3DTextLabel("ban muon mua bien so xe \nSu dung /dangkybiensoxe de dang ky bien so xe",COLOR_RED,366.3999,158.9757,1008.3828+0.5,4.0);//biensoxe
	CreateDynamic3DTextLabel("Ngan Hang MB BANK) \nSu dung /guitien or /ruttien",COLOR_RED,2308.7422,-13.2485,26.7422+0.5,4.0);//bank
	CreateDynamic3DTextLabel("Ngan Hang MB BANK) \nSu dung /chuyentien",COLOR_YELLOW,2309.1926,-8.5479,26.7422+0.5,4.0);//bank
 	CreateDynamic3DTextLabel("Phong tap ban arena\n\nSu dung /thamgiaarena de vao phong",COLOR_YELLOW,1836.7759,-1682.4077,13.3338+0.5,6.0);
    
    CreateDynamic3DTextLabel("Tank Spawn\nZone",COLOR_YELLOW,286.7334, 2024.3762, 17.6406,10.0);
    CreateDynamic3DTextLabel("Air Vehicle Spawn\nZone", COLOR_YELLOW, 326.2754,1887.7212,17.6566, 10.0);
	
	// General text labels
	CreateDynamic3DTextLabel("All Saints Plaza Parking Garage\nType /enter de dua xe cua ban vao bai",COLOR_YELLOW,1218.69,-1425.01,13.15+0.6,25.0);
	CreateDynamic3DTextLabel("Club VIP Parking\nSu dung /enter de dua xe cua ban vao bai",COLOR_YELLOW,1814.6857,-1559.2028,13.4834+0.4,15.0);
	CreateDynamic3DTextLabel("Gym Parking Garage\nSu dung /enter de dua xe cua ban vao bai",COLOR_YELLOW,2273.4026,-1724.3064,13.5469+0.6,25.0);
	CreateDynamic3DTextLabel("Courthouse Parking Garage\nSu dung /enter de dua xe cua ban vao bai",COLOR_YELLOW,1418.5190,-1663.8959,13.5395+0.6,25.0);
    CreateDynamic3DTextLabel("Tra ve phat cua ban hoac\nlay chiec xe cua ban, su dung /dmvmenu",COLOR_YELLOW,833.60, 3.23, 1004.17+0.6,4.0);//
    CreateDynamic3DTextLabel("Thay doi so dien thoai VIP, su dung /vipnum",COLOR_YELLOW,2549.548095, 1404.047729, 7699.584472+0.6,4.0);//
    CreateDynamic3DTextLabel("Thay doi so dien thoai VIP, su dung /vipnum",COLOR_YELLOW,1832.6000, 1375.1700, 1464.4600+0.6,4.0);//
    CreateDynamic3DTextLabel("Su dung /travel\nDe dua chiec xe cua ban ra khoi bai do xe VIP",COLOR_YELLOW,-4429.944824, 905.032470, 987.078186+0.5,13.0);// VIP garage travel
    CreateDynamic3DTextLabel("/viplocker\nDe mo tu do VIP.",COLOR_YELLOW,2555.747314, 1404.106079, 7699.584472+0.6,4.0);/// LS VIP locker room
	CreateDynamic3DTextLabel("/viplocker\nDe mo tu do VIP.",COLOR_YELLOW,1832.0533, 1380.7281, 1464.3822+0.6,4.0);/// LV Main VIP locker room
    CreateDynamic3DTextLabel("/viplocker\nDe mo tu do VIP.",COLOR_YELLOW,772.4844, 1715.7213, 1938.0391+0.6,4.0);/// LV Plat VIP locker room
	CreateDynamic3DTextLabel("/getgift\nDe nhan phan thuong ben trong tui qua.",COLOR_YELLOW,2546.611572, 1403.323608, 7700.768066,8.0);/// VIP Lounge
	CreateDynamic3DTextLabel("/nhanqua\nDe nhan phan thuong ben trong tui qua.",COLOR_YELLOW,1726.1000, 1370.1000, 1449.9000,8.0);/// LV VIP Lounge
	CreateDynamic3DTextLabel("/nhanqua\nDe nhan phan thuong ben trong tui qua.",COLOR_YELLOW,1763.5000, 1432.5000, 2015.7000,8.0);/// LV GVIP Lounge
	CreateDynamic3DTextLabel("/nhanqua\nDe nhan phan thuong ben trong tui qua.",COLOR_YELLOW,772.4000, 1743.2000, 1938.8800,8.0);/// LV PVIP Lounge
	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,225.3467,1981.8497,17.6406+0.6,4.0);//Deliverpt (DeMorgan)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,-1528.814331, 2540.706054, 55.835937+0.6,4.0);///Deliverpt (TR - El Quebrados)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,1142.4733,-1326.3633,13.6259+0.6,4.0);///Deliverpt (All Saints)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,2027.0599,-1410.6870,16.9922+0.6,4.0);///Deliverpt (County General)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,1227.2339,306.4730,19.7028+0.6,4.0);///Deliverpt (Montgomery)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,-339.2989,1055.8138,19.7392+0.6,4.0);///Deliverpt (Fort Carson)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,1165.1564,-1368.8240,26.6502+0.6,4.0);///Deliverpt (All Saints Rooftop)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,2024.5742,-1382.7844,48.3359+0.6,4.0);///Deliverpt (County General)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,1233.3384,316.4022,24.7578+0.6,4.0);///Deliverpt (Montgomery Rooftop)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,-334.1560,1051.4434,26.0125+0.6,4.0);///Deliverpt (Fort Carson Rooftop)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,-2656.0339,615.2567,66.0938+0.6,4.0);///Deliverpt (SF Rooftop)
	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,1579.58,1768.88,10.82+0.6,4.0); // /deliverpt (LV Hospital)
   	CreateDynamic3DTextLabel("Emergency Room\n/deliverpt",COLOR_DBLUE,-2695.5725,639.4147,14.4531+0.6,4.0);///Deliverpt (SF)
	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,-2482.4338,2231.1106,4.8463+0.6,4.0);///Deliverpt (TR - Bayside)
   	CreateDynamic3DTextLabel("/deliver",COLOR_DBLUE,1991.7953,-2321.2532,13.5469+0.6,4.0);// Deliver
   	CreateDynamic3DTextLabel("/muabaohiem \n Mua bao hiem y te",COLOR_DBLUE,1169.7209472656,-1348.3218994141,2423.0461425781+0.6,4.0);// Insurance
   	CreateDynamic3DTextLabel("/muabaohiem \n Mua bao hiem y te",COLOR_DBLUE,2785.586914, 2400.224853, 1240.531127+0.6,8.0);// GVIP Insurance
   	CreateDynamic3DTextLabel("/muabaohiem \n Mua bao hiem y te",COLOR_DBLUE,912.1003,1429.9298,-81.1762+0.6,4.0);// Famed Room Insurance
	CreateDynamic3DTextLabel("Su dung /layvatlieu tu mot chiec thuyen \nde co duoc vat lieu",COLOR_YELLOW,2102.71,-103.97,2.28+0.5,8.0);// Deliver
    //CreateDynamic3DTextLabel("Su Dung /laybanh de nhan banh \nDe co Pizza giao hang!",COLOR_YELLOW, -1740.6353, 1385.3777, 7.2173, 4.0); //laybanh
    CreateDynamic3DTextLabel("Su Dung /laybanh de nhan banh \nDe co Pizza giao hang!",COLOR_YELLOW, 2096.0247,-1813.4172,13.3828, 4.0); //laybanh
	CreateDynamic3DTextLabel("/trangphuc\n De thay trang phuc ca nhan.",COLOR_YELLOW,208.8970,-100.3289,1005.2578,8.0);
    CreateDynamic3DTextLabel("/trangphuc\n De thay trang phuc ca nhan.",COLOR_YELLOW,206.5429,-41.2313,1001.8047,8.0);
    CreateDynamic3DTextLabel("/trangphuc\n De thay trang phuc ca nhan.",COLOR_YELLOW,209.3064,-8.3033,1005.2109,8.0);
    CreateDynamic3DTextLabel("/trangphuc\n De thay trang phuc ca nhan.",COLOR_YELLOW,159.6771,-83.2866,1001.8120,8.0);
    CreateDynamic3DTextLabel("/trangphuc\n De thay trang phuc ca nhan.",COLOR_YELLOW,206.4552,-163.0903,1000.5234,8.0);
    CreateDynamic3DTextLabel("/muadochoi\n De mua phu kien trang tri.",COLOR_YELLOW,206.3253,-100.3268,1005.2578,8.0);
    CreateDynamic3DTextLabel("/muadochoi\n De mua phu kien trang tri.",COLOR_YELLOW,201.0413,-40.1616,1001.8047,8.0);
    CreateDynamic3DTextLabel("/muadochoi\n De mua phu kien trang tri.",COLOR_YELLOW,206.3963,-8.2122,1001.2109,8.0);
    CreateDynamic3DTextLabel("/muadochoi\n De mua phu kien trang tri.",COLOR_YELLOW,162.7706,-83.2726,1001.8047,8.0);
    CreateDynamic3DTextLabel("/muadochoi\n De mua phu kien trang tri.",COLOR_YELLOW,2787.095947, 2390.353027, 1240.531127+0.6,4.0); // Gold+ VIP Room
    CreateDynamic3DTextLabel("/muadochoi\n De mua phu kien trang tri.",COLOR_YELLOW,202.6777,-163.0623,1000.5306,8.0);
	CreateDynamic3DTextLabel("/muadochoi\n De mua phu kien trang tri.",COLOR_YELLOW,1774.7533, 1422.6665, 2013.4979,8.0);
	CreateDynamic3DTextLabel("/muadochoi\n De mua phu kien trang tri.",COLOR_YELLOW,775.0900, 1742.4900, 1938.3800,8.0);

	// SANews Broadcast
	SANews3DText = CreateDynamic3DTextLabel(string,COLOR_LIGHTBLUE,632.7400,-14.2350,1108.2181,8.0);

	// Buildings 3D labels
	//CreateDynamic3DTextLabel("Press F (enter) to go inside.",COLOR_YELLOW,1568.5718,-1691.0177,5.8906+0.6,4.0); //LSPD Garage enter
	//CreateDynamic3DTextLabel("Press F (enter) to go inside.",COLOR_YELLOW,1564.8464,-1666.1444,28.3956+0.6,4.0); //LSPD Roof enter

	CreateDynamic3DTextLabel("Diem thay doi ten \nSu dung /doiten de thay doi ten",COLOR_YELLOW,1154.7295,-1440.2323,15.7969+0.6,18.0); // Namechange at mall
	
	CreateDynamic3DTextLabel("{F25B1F}Neu Lay Banh Ma Khong Giao Duoc, Vui Long [{FFFF00} /xmt {FFFFFF}] {F25B1F}sau do lay banh lai lan nua !!",-1,-1740.9340, 1382.2024, 7.2173, 4.0); //laybanh
	/* Pickup TimViecLam */
	CreateDynamic3DTextLabel("JOB Trucker da duoc chuyen qua Las Venturas ( LS )", -1, -1560.963867, 127.491157, 3.554687+0.5,15.0);
	CreateDynamic3DTextLabel("[NGUOI VAN CHUYEN XANG/DAU] \nSu dung /xinviec de lua chon cong viec",COLOR_WHITE,-1709.6616,400.5131,7.1872+0.5,15.0);// Giao Xang Job (SF)
	CreateDynamic3DTextLabel("Nong Dan\nSu dung /xinviec hoac /muahatgiong de tuong tac",COLOR_WHITE,-380.9873,-1430.6262,25.7266+0.5,15.0);// Nong Dan
	CreateDynamic3DTextLabel("Nguoi Chat Go\nSu dung /xinviec de lua chon cong viec",COLOR_WHITE,1462.3606, 342.6024, 18.9531+0.5,15.0);// Nguoi Chat Go
	CreateDynamic3DTextLabel("Ban Go\nSu dung /bango de ban go",COLOR_WHITE,1634.7841, 762.2999, 10.8203+0.5,15.0);// Nguoi Chat Go
    CreateDynamic3DTextLabel("Noi lay 'XANG' \nSu dung :  '/layxang'",COLOR_YELLOW,-1702.4624,378.1379,7.1797+0.6,15.0);

	CreateDynamic3DTextLabel("Tho sua xe \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-2649.4661, 1350.0269, 7.1825+0.5,4.0);// Tho Sua Xe ( SF )
	CreateDynamic3DTextLabel("{FFFF00}Cong Viec Tai Xe Trucker{FFFFFF}\nSu dung {FFFF00}[ /xinviec ]{FFFFFF} de nhan cong viec nay",-1,2435.1719,-2121.7615,13.5469+0.5,4.0);// Trucker Job (LV)
    CreateDynamic3DTextLabel("Nhan vien Pizza Boy \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-1730.3549,1395.4358,7.5141+0.5,4.0);// Pizza Boy Job (SF)
    CreateDynamic3DTextLabel("Nhan vien Pizza Boy \nSu dung /xinviec de lua chon cong viec",COLOR_RED,2104.3535,-1803.7498,13.5547+0.5,4.0);// Pizza Boy Job (LS)
    
	for(new i = 0; i < sizeof(PosRockDigging); i++) CreateDynamic3DTextLabel("{21490D}Su dung lenh /khaithacda de bat dau khai thac", -1, PosRockDigging[i][0], PosRockDigging[i][1], PosRockDigging[i][2], 20.0);
	CreateDynamic3DTextLabel("Khai Thac Da\nSu dung /xinviec de lua chon cong viec",COLOR_RED,584.8134, 869.1849, -42.4973+0.5,4.0);// Khai Thac Da
    CreateDynamic3DTextLabel("{FFFF00}Khai Thac Da\nSu dung /banda de ban so da ban co", -1,1695.3774, 684.4698, 10.8203+0.5,4.0);// Khai Thac Da - Ban Da
	
	for(new i = 0; i < sizeof(PosFishing); i++) CreateDynamic3DTextLabel("{FFFF00}CAU CA\nSu dung lenh /cauca de bat dau cau ca", -1, PosFishing[i][0], PosFishing[i][1], PosFishing[i][2], 20.0);
    CreateDynamic3DTextLabel("{FFFF00}CAU CA\nSu dung lenh (/dungcucauca | /banca) de giao dich", -1, -1481.1168, 744.2952, 2.7752, 20.0);
	CreateDynamic3DTextLabel("{FFFF00}CAU CA\nSu dung lenh (/dungcucauca | /banca) de giao dich", -1, 388.9126,-2072.7175,7.8359, 20.0);

	////////////////////////////
	
	CreateDynamic3DTextLabel("Famed Locker \nType /famedlocker to access the locker", COLOR_YELLOW,901.4825,1429.7404,-82.3235+0.6,4.0); //Famed Locker

	//cansa
	CreateDynamic3DTextLabel("{A1F700}Cay Can Sa {00FFE5}[ ID: 1 ]\n{A1F700}Su dung: /haicansa",-1 ,	2475.8984,-835.7211,100.4696+0.5,10.0); // Cay Can Sa 1
	CreateDynamic3DTextLabel("{A1F700}Cay Can Sa {00FFE5}[ ID: 2 ]\n{A1F700}Su dung: /haicansa",-1 ,	2491.2844,-852.9114,96.1967+0.5,10.0); // Cay Can Sa 2
	CreateDynamic3DTextLabel("{A1F700}Cay Can Sa {00FFE5}[ ID: 3 ]\n{A1F700}Su dung: /haicansa",-1 ,	2512.3445,-876.4426,90.7581+0.5,10.0); // Cay Can Sa 3
	CreateDynamic3DTextLabel("{A1F700}Cay Can Sa {00FFE5}[ ID: 4 ]\n{A1F700}Su dung: /haicansa",-1 ,	2526.7927,-870.6161,88.7665+0.5,10.0); // Cay Can Sa 4
	CreateDynamic3DTextLabel("{A1F700}Cay Can Sa {00FFE5}[ ID: 5 ]\n{A1F700}Su dung: /haicansa",-1 ,	2522.1143,-851.9771,89.8587+0.5,10.0); // Cay Can Sa 5
	CreateDynamic3DTextLabel("{A1F700}Cay Can Sa {00FFE5}[ ID: 6 ]\n{A1F700}Su dung: /haicansa",-1 ,	2511.8733,-825.7000,90.2217+0.5,10.0); // Cay Can Sa 6
	CreateDynamic3DTextLabel("{A1F700}Cay Can Sa {00FFE5}[ ID: 7 ]\n{A1F700}Su dung: /haicansa",-1 ,	2541.4746,-824.3604,87.7863+0.5,10.0); // Cay Can Sa 7
	CreateDynamic3DTextLabel("{A1F700}Cay Can Sa {00FFE5}[ ID: 8 ]\n{A1F700}Su dung: /haicansa",-1 ,	2548.2466,-851.5301,85.8251+0.5,10.0); // Cay Can Sa 8
	CreateDynamic3DTextLabel("{A1F700}Cay Can Sa {00FFE5}[ ID: 9 ]\n{A1F700}Su dung: /haicansa",-1 ,	2552.7935,-878.9175,85.1903+0.5,10.0); // Cay Can Sa 9
	CreateDynamic3DTextLabel("{A1F700}Cay Can Sa {00FFE5}[ ID: 10 ]\n{A1F700}Su dung: /haicansa",-1 ,	2535.8438,-849.5370,87.7475+0.5,10.0); // Cay Can Sa 10
	CreateDynamic3DTextLabel("{A1F700}Cay Can Sa {00FFE5}[ ID: 11 ]\n{A1F700}Su dung: /haicansa",-1 ,	2532.6279,-802.4359,89.8630+0.5,10.0); // Cay Can Sa 11
	CreateDynamic3DTextLabel("{A1F700}Cay Can Sa {00FFE5}[ ID: 12 ]\n{A1F700}Su dung: /haicansa",-1 ,	2503.2559,-790.0455,91.8464+0.5,10.0); // Cay Can Sa 12
	CreateDynamic3DTextLabel("{A1F700}Cay Can Sa {00FFE5}[ ID: 13 ]\n{A1F700}Su dung: /haicansa",-1 ,	2481.1021,-789.7115,98.2273+0.5,10.0); // Cay Can Sa 13
	CreateDynamic3DTextLabel("{A1F700}Cay Can Sa {00FFE5}[ ID: 14 ]\n{A1F700}Su dung: /haicansa",-1 ,	2462.3257,-804.0538,104.3921+0.5,10.0); // Cay Can Sa 14
	CreateDynamic3DTextLabel("{A1F700}Cay Can Sa {00FFE5}[ ID: 15 ]\n{A1F700}Su dung: /haicansa",-1 ,	2445.5696,-827.2520,109.1290+0.5,10.0); // Cay Can Sa 15

	CreateDynamic3DTextLabel("Che bien can sa\nSu dung: H or /chebiencansa",COLOR_YELLOW,2355.7100,-648.1693,128.0547+0.5,30.0);

	CreateDynamic3DTextLabel("RUA TIEN BAN\nSu dung: H or /ruatienban",COLOR_YELLOW,1564.6577,21.2825,24.1641+0.5,30.0);

	CreateDynamic3DTextLabel("BAN CAN SA\nSu dung bam : [H]",COLOR_YELLOW,2082.1299,-1856.6500,3.9844+0.5,30.0);

	CreateDynamic3DTextLabel("TRAM THU PHI\nSu dung : /nopphi",COLOR_YELLOW,1769.0863,592.0186,22.9697+0.5,30.0);

	CreateDynamic3DTextLabel("TRAM THU PHI\nSu dung : /nopphi",COLOR_YELLOW,1753.1344,587.3882,23.6280+0.5,30.0);
	
	//add label
	CreateDynamic3DTextLabel(" {FFFF00} [Andrey Salvatorel] {FFFFFF}Thu mua do co , vat cua chu so huu \n~! PHIM ALT !~ ", COLOR_WHITE, 810.6816,-1109.5469,25.7841+0.6, 10.0);
	CreateDynamic3DTextLabel("{ffff00}Lay hoa don thanh toan tai day\n{ffffff}(/layhoadon)",COLOR_RED,1857.8446,-1798.2284,13.5958+0.6, 5.0);
    CreateDynamic3DTextLabel("{ffff00}Lay hoa don thanh toan tai day\n{ffffff}(/layhoadon)",COLOR_RED,1850.9240,-1791.5820,13.5958+0.6, 5.0);
	CreateDynamic3DTextLabel("{FFFF00}/doxe\n{FFFFFF}200.000$ /1 lan (khong tinh nitro) .",COLOR_YELLOW,1890.2111,-1793.4839,13.8777+0.6, 5.0);
	CreateDynamic3DTextLabel("{FFFF00}/doxe\n{FFFFFF}200.000$ /1 lan (khong tinh nitro).",COLOR_YELLOW,1899.6859,-1793.6655,13.8777+0.6, 5.0); //
	CreateDynamic3DTextLabel(" {FFFF00} Van Chuyen Xang\n{ffffff}ALT de xin viec ", COLOR_WHITE,  860.8265,-1245.6165,14.7578+0.6, 10.0);
	CreateDynamic3DTextLabel("{ffffff}Ban Mu Bao Hiem\n{ffff00}/buyhelmet",COLOR_RED,1887.4771,-1742.6312,13.5469+0.6, 5.0);
	CreateDynamic3DTextLabel("{ffffff}Ban Mu Bao Hiem\n{ffff00}/buyhelmet",COLOR_RED,1895.8049,-1742.7050,13.5469+0.6, 5.0);
	CreateDynamic3DTextLabel(" {FFFF00} Ban binh xang du tri tai day\n{ffffff}/muaxang\n{b22222}Toi da 2 binh - Gia : 10.000$/1 binh ", COLOR_WHITE,  2424.9690,-1787.0514,13.5556+0.6, 10.0);



	return 1;
}

forward LoadStreamerDynamicButtons();
public LoadStreamerDynamicButtons()
{
    /* LSPD buttons */
 	eastin = CreateButton(253.44921875,110.59960938,1003.79998779,90.00000000); //object(fire_break) (1)
	westout = CreateButton(239.79492188,116.18457031,1003.87286377,90.00000000); //object(fire_break) (2)
	westin = CreateButton(239.32031250,116.27441406,1003.87286377,270.00000000); //object(fire_break) (3)
	eastout = CreateButton(253.00000000,110.59960938,1003.79998779,270.00000000); //
	elevator = CreateButton(275.83984375,120.94921875,1005.12280273,90.00000000); //object(kmb_keypad) (1)
	cctvin = CreateButton(264.55566406,115.97949219,1005.12280273,179.99450684); //object(kmb_keypad) (2)
	cctvout = CreateButton(264.55566406,115.69531250,1005.12280273,0.00000000); //object(kmb_keypad) (3)
	lockerin = CreateButton(267.21679688,112.40917969,1005.12280273,0.00000000); //object(kmb_keypad) (4)
	lockerout = CreateButton(267.21679688,112.66992188,1005.12280273,179.99450684); //object(kmb_keypad) (5)
	chiefout = CreateButton(232.50000000,119.38476562,1010.81384277,0.00000000); //object(sec_keypad) (2)
	chiefin = CreateButton(229.67089844,119.66992188,1010.81384277,179.99450684); //object(sec_keypad) (1)
	roofkey = CreateButton(1565.93652344,-1667.35058594,28.85165977,179.99450684); //object(sec_keypad) (3)
	garagekey = CreateButton(1567.14550781,-1689.62011719,6.69999981,0.00000000); //object(sec_keypad) (4)
 	sasdbtn1 = CreateButton(2514.59179688,-1697.05761719,563.19116211,0.00000000); //SASD West
	sasdbtn2 = CreateButton(2522.82299805,-1660.15917969,563.15893555,0.00000000); //SASD East
	sasdbtn3 = CreateButton(2525.09863281,-1697.05761719,563.16284180,0.00000000); //SASD R4
	sasdbtn4 = CreateButton(2519.84375000,-1697.00659180,563.20904541,0.00000000); //SASD R5
	sasdbtn5 = CreateButton(2514.77880859,-1660.15917969,563.16925049); //SASD R6

	/* Noose Int Buttons */
	nooseenter[0] = CreateButton(-765.87152100,2539.55102539,10021.18847847,90); //object(kmb_keypad) (5) yes entrance
    nooseenter[1] = CreateButton(-766.81298828,2539.55664062,10021.18847847,0); //object(kmb_keypad) (9) yes entrance
    radarroom[0] = CreateButton(-747.22851562,2533.17968750,10021.18847656,260);
    radarroom[1] = CreateButton(-745.98876953,2533.04150391,10021.18847656,90);
	intergate[0] = CreateButton(-765.34863281,2549.97070312,10021.18847656,90);
	intergate[1] = CreateButton(-765.13671875,2554.51660156,10020.90917969,260 );
	intergate[2] = CreateButton(-773.29394531,2546.13134766,10020.86816406,90); // Cage
	bottomroom[0] = CreateButton(-764.06152344,2566.59277344,10021.18847656, 90);
	bottomroom[1] = CreateButton(-764.51269531,2566.65332031,10021.18847656, 260);
	ncontrolroom[0] = CreateButton(-754.32763672,2538.71655273,10021.61132812, 178.50000000);
	ncontrolroom[1] = CreateButton(-752.47076416,2538.23266602,10021.00195312, 0);

	/* DoC Prison Buttons */
	PrisonButtons[0] = CreateButton(-2097, -191.100006, 996.299987, 90); // Control Room
	PrisonButtons[1] = CreateButton(-2092.550048, -204, 996.099975, 0); // Control Room Door 2
	PrisonButtons[2] = CreateButton(-2088.530029, -213, 996, 90); //Control Room Door 1
	PrisonButtons[3] = CreateButton(-2037, -191, 992.200012, 270); // Security Room
	PrisonButtons[4] = CreateButton(-2050.5, -205.880004, 985.599975, 0); // Staff Lounge
	PrisonButtons[5] = CreateButton(-2046.599975, -194, 985.700012, 270); // Duty Room
	PrisonButtons[6] = CreateButton(-2092.772949, -193.570007, 979.299987, 0); // Security Room 2
 	PrisonButtons[7] = CreateButton( -2054.699951, -84, 35.7, 270);
 	PrisonButtons[8] = CreateButton(-2058, -146.75, 988.7,270);

 	// Create the required buttons for the interior.
	SFPDButton[0] = CreateButton(-1635.12597656,708.45117188,19996.32812500, 180.0);
	SFPDButton[1] = CreateButton(-1635.18176270,687.56250000,19996.32812500, 180.0);
	SFPDButton[2] = CreateButton(-1636.74023438,687.56250000,19996.32812500, 180.0);
	SFPDButton[3] = CreateButton(-1636.29687500,708.36035156,19996.32812500, 270.0);
	SFPDButton[4] = CreateButton(-1627.03222656,712.46093750,19996.32812500, 0.0);
	SFPDButton[5] = CreateButton(-1627.03295898,712.63281250,19996.32812500, 180.0);
	SFPDButton[6] = CreateButton(-1614.06738281,683.54052734,19990.56250000, 270.0);
	SFPDButton[7] = CreateButton(-1612.91674805,683.60369873,19990.56250000, 0.0);
	SFPDButton[8] = CreateButton(-1632.86157227,712.62530518,19996.32812500, 180.0);
	SFPDButton[9] = CreateButton(-1632.861328125, 712.47210693359, 19996.328125, 0.0);

	FBILobbyLeftBTN[0] = CreateButton(297.66613770,-1498.67749023,-44.59006119,0.79565430); //Lobby Button Left
	FBILobbyLeftBTN[1] = CreateButton(297.24850464,-1498.23107910,-44.59006119,180); //Lobby Button Left
	FBILobbyRightBTN[0] = CreateButton(300.05300903,-1521.40747070,-44.59006119,180); //Lobby Button Right
	FBILobbyRightBTN[1] = CreateButton(300.16033936,-1521.84387207,-44.59006119,0); //Lobby Button Right
	FBIPrivateBTN[0] = CreateButton(298.87384033,-1495.87316895,-27.32773209,270); //Private Office Button
	FBIPrivateBTN[1] = CreateButton(300.49453735,-1495.33837891,-27.28091812,180.49487305); //Private Office Button

	SANewsPrivate = CreateButton(625.51953125,-3.59961796,1108.50000000,269.99450684); //object(sec_keypad) (2)
	SANewsOffice = CreateButton(614.58581543,17.78320312,1108.55004883,0); //object(sec_keypad) (3)
	SANewsStudio = CreateButton(625.50000000,-13.60000038,1108.50000000,270.00000000); //object(sec_keypad) (1)
	SANewsPrivateOPP = CreateButton(626.13519287,-0.08516422,1108.61315918,0); //object(sec_keypad) (4)

	lockdownbutton = CreateButton(-1121.70, 4290.41, 4.88, 180.00);
	print("[Streamer] Dynamic Buttons has been loaded.");

	return 1;
}

forward LoadStreamerDynamicObjects();
public LoadStreamerDynamicObjects()
{
    CrateLoad = CreateDynamicObject(964,-2114.1, -1723.5, 11984.5, 0, 0, 337.994, .worldid = 0, .interiorid = 1, .streamdistance = 200); //object(cj_metal_crate) (1)
	IslandGate = CreateDynamicObject(16773,-1083.90002441,4289.70019531,14.10000038,0.00000000,0.00000000,0.00000000, .streamdistance = 400); //object(door_savhangr1) (5)

	new VIPLogo = CreateDynamicObject(19353, 1803.89, -1593.99, 14.05,   0.00, 0.00, 312.26);
	SetDynamicObjectMaterialText(VIPLogo, 0, "{842787}VIP LOUNGE", 90, "Impact", 56, 1, 0xFFFFFFFF, 0, 1);

	new FCTS = CreateDynamicObject(19482, -58.9155, -1118.4808, 7.4781, 0.0000, 0.0000, 160.3858);
	SetDynamicObjectMaterialText(FCTS, 0, "{880000}Flint County Towing Services\n{000000}CALL 1715 OR 2112", 110, "Impact", 40, 1, 0xFF000000, 0, 1);

    new vipsf = CreateObject(19353, -2455.0632, 503.8305, 32.7488, 0.1999, 31.5000, -0.0145);
	SetObjectMaterialText(vipsf, "{FF0000}A{6C6E70}GTA{6C6E70} Group {FF38AF}VIP", 0, 130, "Times New Roman", 30,0, -16776961, 0,OBJECT_MATERIAL_TEXT_ALIGN_CENTER);

//actor

    Actor[1] = CreateActor(8,2435.1719,-2121.7615,13.5469,2.6159);// NPC Xin viec Trucker

    Actor[2] = CreateActor(155,-1730.3549,1395.4358,7.5141,136.9014);
    ApplyActorAnimation(Actor[2], "PED", "roadcross_gang", 4.0, 1, 0, 0, 0, 0); // PIZZA

    Actor[3] = CreateActor(288,1474.3090,-1755.1294,3285.2859,355.8171); // POLICE _ MUA GIAY PHEP
    ApplyActorAnimation(Actor[3], "PLAYIDLES", "time", 4.0, 1, 0, 0, 0, 0);

    ActorGB = CreateActor(8, -2240.3701,264.9971,35.3203,128.1046);
    ApplyActorAnimation(ActorGB, "GANGS", "prtial_gngtlkA", 4.0, 1, 0, 0, 0, 0);

    Actor[4] = CreateActor(140,-1481.7930,761.0351,2.7752,265.1383);
    ApplyActorAnimation(Actor[4], "PLAYIDLES", "time", 4.0, 1, 0, 0, 0, 0);

    Actor[5] = CreateActor(11, 2318.3826, -12.6173, 26.7496, 86.5145);
    ApplyActorAnimation(Actor[5], "GANGS", "prtial_gngtlkA", 4.0, 1, 0, 0, 0, 0);

    Actor[6] = CreateActor(293,-2660.3867,239.0071,4.3359,167.8375);
    ApplyActorAnimation(Actor[6], "PLAYIDLES", "time", 4.0, 1, 0, 0, 0, 0);

    Actor[7] = CreateActor(179,296.3040,-40.6096,1001.5156,358.9708);
    ApplyActorAnimation(Actor[7], "GANGS", "prtial_gngtlkH", 4.0, 1, 0, 0, 0, 0);

    Actor[8] = CreateActor(6,-1709.6616,400.5131,7.1872,223.0213);
    ApplyActorAnimation(Actor[8], "POLICE", "CopTraf_Come", 4.0, 1, 0, 0, 0, 0);

    Actor[9] = CreateActor(123,259.8682,2913.2241,10.4883,275.3074);
    ApplyActorAnimation(Actor[9], "POLICE", "CopTraf_Come", 4.0, 1, 0, 0, 0, 0);
    Actor[10] = CreateActor(33 , -1657.4209,1325.9393,7.1875,135.3878);
    ApplyActorAnimation(Actor[10], "FOOD", "FF_Sit_Eat2", 4.0, 1, 0, 0, 0, 0);

    Actor[11] = CreateActor(208,-2053.2104,-537.9892,35.3430,210.5217);
    ApplyActorAnimation(Actor[11], "PED", "IDLE_CHAT", 4.0, 1, 0, 0, 0, 0);
    
    Actor[12] = CreateActor(208,-958.4013,-558.3531,25.4829,210.5217);
    ApplyActorAnimation(Actor[12], "PED", "IDLE_CHAT", 4.0, 1, 0, 0, 0, 0);

	//Actor-BanHotDog
	Actor[13] = CreateActor(155, -1580.1256, 754.3460, 6.8203, 268.3649); // sfpd
    ApplyActorAnimation(Actor[13], "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0);
	Actor[15] = CreateActor(155, -1717.5408, 1353.4626, 7.1795, 138.0797); //pizzaboy
    ApplyActorAnimation(Actor[15], "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0);
	Actor[16] = CreateActor(155, -2609.3950, 1375.3195, 7.1953, 181.9677);//gara sua xe
    ApplyActorAnimation(Actor[16], "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0);
	Actor[17] = CreateActor(155, -2578.7207, 554.3765, 14.6094, 0.2773);//benh vien
    ApplyActorAnimation(Actor[17], "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0);
	Actor[18] = CreateActor(155, -2032.4202, 144.0305, 28.8359, 269.5793); // taxi
    ApplyActorAnimation(Actor[18], "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0);
    
    Actor[19] = CreateActor(155, 2104.3535,-1803.7498,13.5547,86.0529); // Pizza LS
    ApplyActorAnimation(Actor[19], "BD_FIRE", "wash_up", 4.0, 1, 0, 0, 0, 0);


    Actor[20] = CreateActor(112,2082.1318,-1856.6543,3.9844,359.0001);
    ApplyActorAnimation(Actor[20], "PED", "roadcross_gang", 4.0, 1, 0, 0, 0, 0); // ban can sa
	//add npc
	ActorDaoMo = CreateActor(78, 810.6816,-1109.5469,25.7841,356.5741); // Dao mo
	NPCJobGiaoXang = CreateActor(2, 860.8265,-1245.6165,14.7578,267.7983); // giao xang
	//maychebiencansa
	CreateDynamicObject(934, -395.50970, -1433.67603, 25.99890,   0.00000, 0.00000, 90.00000);

	//Cay Can Sa
	CreateDynamicObject(19473, 2475.8984,-835.7211,100.4696-0.5,   0.00000, 0.00000, 267.61829); 	// Cay Can Sa	1
	CreateDynamicObject(19473, 2491.2844,-852.9114,96.1967-0.5,   0.00000, 0.00000, 267.61829);	// Cay Can Sa	2
	CreateDynamicObject(19473, 2512.3445,-876.4426,90.758-0.5,   0.00000, 0.00000, 4.12590);	// Cay Can Sa	3
	CreateDynamicObject(19473, 2526.7927,-870.6161,88.7665-0.5,   0.00000, 0.00000, 25.95500);	// Cay Can Sa	4
	CreateDynamicObject(19473, 2522.1143,-851.9771,89.8587-0.5,   0.00000, 0.00000, 64.78780);	// Cay Can Sa	5
	CreateDynamicObject(19473, 2511.8733,-825.7000,90.2217-0.5,   0.00000, 0.00000, 322.07611);	// Cay Can Sa	6
	CreateDynamicObject(19473, 2541.4746,-824.3604,87.7863-0.5,   0.00000, 0.00000, 46.40540);	// Cay Can Sa	7
	CreateDynamicObject(19473, 2548.2466,-851.5301,85.8251-0.5,   0.00000, 0.00000, 327.36130);	// Cay Can Sa	8
	CreateDynamicObject(19473, 2552.7935,-878.9175,85.1903-0.5,   0.00000, 0.00000, 229.93410);	// Cay Can Sa	9
	CreateDynamicObject(19473, 2535.8438,-849.5370,87.7475-0.5,   0.00000, 0.00000, 250.84390);	// Cay Can Sa	10
	CreateDynamicObject(19473, 2532.6279,-802.4359,89.8630-0.5,   0.00000, 0.00000, 242.80161);	// Cay Can Sa	11
	CreateDynamicObject(19473, 2503.2559,-790.0455,91.8464-0.5,   0.00000, 0.00000, 255.89900);	// Cay Can Sa	12
	CreateDynamicObject(19473, 2481.1021,-789.7115,98.2273-0.5,   0.00000, 0.00000, 243.49091);	// Cay Can Sa	13
	CreateDynamicObject(19473, 2462.3257,-804.0538,104.3921-0.5,   0.00000, 0.00000, 243.26109);	// Cay Can Sa	14
	CreateDynamicObject(19473, 2445.5696,-827.2520,109.1290-0.5,   0.00000, 0.00000, 1.68010);	// Cay Can Sa	15

	//xeday-hotdog
	CreateDynamicObject(1340, -2609.40381, 1374.30310, 7.22000,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1340, -1579.11060, 754.32367, 6.85400,   0.00000, 0.00000,  0.00000);
	CreateDynamicObject(1340, -1718.25830, 1352.74866, 7.22000,   0.00000, 0.00000, -133.00000);
	CreateDynamicObject(1340, -1673.66418, -7.68433, 3.60000,   0.00000, 0.00000,   45.00000);
	CreateDynamicObject(1340, -2578.72778, 555.39185, 14.64000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1340, -2031.40759, 143.99345, 28.88000,   0.00000, 0.00000, 0.00000);


	// nha tu

	CreateDynamicObject(5520, -11.46, 1565.26, 16.00,   0.00, 0.00, -2.00);
	CreateDynamicObject(10832, -30.05, 1509.18, 14.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 24.03, 1549.91, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 23.44, 1550.30, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 23.91, 1550.42, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 23.80, 1538.44, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 23.45, 1539.26, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 17.25, 1541.87, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 16.74, 1542.44, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 17.42, 1542.63, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 29.56, 1539.38, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 30.14, 1539.57, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 29.90, 1540.16, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 32.01, 1529.54, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 31.56, 1530.01, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 32.04, 1530.55, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 32.64, 1530.21, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 31.44, 1524.65, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 32.15, 1524.32, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 32.17, 1525.16, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 31.36, 1523.86, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 27.59, 1521.35, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 27.11, 1522.11, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 34.70, 1512.62, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 35.37, 1512.62, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 35.59, 1513.49, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 40.22, 1518.69, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 40.88, 1519.30, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 40.14, 1519.41, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 43.28, 1525.44, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 42.91, 1524.89, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 42.81, 1525.52, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 26.45, 1553.59, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 26.81, 1553.82, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 27.06, 1552.99, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 31.09, 1555.78, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 31.24, 1554.96, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 30.70, 1555.14, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 36.71, 1562.06, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 36.03, 1561.74, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 36.14, 1562.69, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 36.44, 1560.76, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 38.34, 1544.07, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 38.40, 1543.09, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 39.06, 1543.78, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 23.25, 1538.72, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 32.82, 1548.32, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 32.89, 1547.35, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 32.28, 1547.77, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 33.22, 1548.00, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(2629, 3.18, 1560.53, 12.00,   0.00, 0.00, -2.00);
	CreateDynamicObject(2629, 5.83, 1560.42, 12.00,   0.00, 0.00, -2.00);
	CreateDynamicObject(2630, 5.81, 1565.80, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(2630, 3.24, 1565.89, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 40.19, 1503.42, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 39.44, 1503.08, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 39.64, 1504.19, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 30.80, 1502.83, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 30.96, 1503.94, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 30.29, 1503.51, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 23.94, 1528.73, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 23.37, 1528.49, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 23.77, 1528.07, 12.00,   0.00, 0.00, 91.00);
	CreateDynamicObject(1256, 11.34, 1566.19, 12.50,   0.00, 0.00, 87.00);
	CreateDynamicObject(1256, 14.06, 1565.99, 12.50,   0.00, 0.00, 87.00);
	CreateDynamicObject(905, 26.17, 1516.76, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 23.28, 1518.64, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 25.56, 1510.13, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 24.97, 1510.32, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 25.02, 1509.42, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 25.51, 1509.50, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 40.57, 1536.19, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 39.98, 1535.94, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 40.36, 1536.84, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 40.29, 1535.15, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 41.07, 1536.65, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 45.57, 1509.36, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 45.03, 1509.64, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 40.55, 1552.15, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 39.80, 1552.15, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 39.99, 1551.45, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 22.75, 1519.57, 12.00,   0.00, 164.00, 0.00);
	CreateDynamicObject(905, 23.42, 1519.99, 12.00,   167.00, 4.00, 0.00);
	CreateDynamicObject(832, 4.54, 1538.50, 13.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(833, 4.20, 1535.20, 12.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(715, 10.61, 1530.02, 20.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 29.14, 1568.10, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 28.42, 1568.21, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 28.80, 1567.39, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 28.84, 1568.77, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 24.32, 1564.64, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 23.67, 1564.66, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 24.20, 1565.17, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 23.79, 1563.92, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 20.68, 1557.98, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 20.11, 1558.00, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 20.43, 1558.45, 12.00,   140.00, 0.00, 0.00);
	CreateDynamicObject(1332, -0.83, 1556.24, 12.60,   0.00, 0.00, -1.00);
	CreateDynamicObject(3565, 9.22, 1492.57, 13.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(3565, 1.19, 1492.62, 13.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(3565, 1.10, 1492.62, 15.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(3565, 9.18, 1492.59, 15.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(3577, -11.98, 1559.26, 12.50,   0.00, 0.00, 0.00);
	CreateDynamicObject(3572, 9.18, 1495.11, 13.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(3572, 1.11, 1495.11, 13.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(3572, 1.10, 1495.22, 15.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(3572, 9.21, 1495.19, 15.60,   0.00, 0.00, 0.00);
	CreateDynamicObject(3425, 5.04, 1574.94, 20.00,   0.00, 0.00, -90.00);
	CreateDynamicObject(905, 45.44, 1510.46, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 34.15, 1496.63, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 33.72, 1497.21, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 34.83, 1496.65, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 34.43, 1497.61, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 25.18, 1498.83, 12.00,   0.00, 0.00, 0.00);
	CreateDynamicObject(905, 25.54, 1498.53, 12.00,   0.00, 0.00, 98.00);
	CreateDynamicObject(905, 25.80, 1499.01, 12.00,   0.00, 0.00, 99.00);
	CreateDynamicObject(905, 26.92, 1516.78, 12.00,   0.00, 0.00, 69.00);
	CreateDynamicObject(905, 26.72, 1517.22, 12.00,   0.00, 0.00, 0.00);

 /// HQ
	/*CreateObject(19913, 2253.36670, -1835.78918, 13.44910,   2.00000, 0.00000, 7.60000);
	CreateObject(19913, 2322.97241, -1828.04321, 3.62700,   -0.50000, -0.50000, 6.00000);
	CreateObject(19912, 2238.64917, -1813.91162, 16.03550,   -0.50000, -0.50000, 0.50000);
	CreateObject(19912, 2228.22144, -1825.82483, 16.04710,   0.00000, 0.00000, -86.00000);
	CreateObject(19912, 2228.19556, -1824.94067, 16.16560,   0.50000, 0.50000, -266.50000);
	CreateObject(19912, 2228.50610, -1835.84741, 7.41470,   2.00000, 87.50000, 92.00000);
	CreateObject(19913, 2321.41602, -1827.44434, 13.04820,   0.00000, 0.00000, 8.00000);
	CreateObject(19912, 2296.60815, -1830.74353, 16.03710,   0.00000, 0.00000, 5.00000);
	CreateObject(19912, 2287.96021, -1831.43457, 16.03530,   0.00000, 0.00000, 6.50000);
	CreateObject(19912, 2356.90479, -1823.02124, 1631.00000,   0.00000, 0.00000, 5.50000);
	CreateObject(19912, 2357.24780, -1823.25000, 15.74300,   0.00000, 0.00000, 3.50000);
	CreateObject(19912, 2368.64966, -1822.99097, 15.74600,   0.00000, 0.00000, 1.50000);
	CreateObject(19912, 2380.04761, -1823.11108, 15.54020,   0.00000, 0.00000, 0.00000);
	CreateObject(19912, 2391.19556, -1823.11108, 15.54670,   0.00000, 0.00000, 0.00000);
	CreateObject(19912, 2402.45776, -1823.09998, 15.54730,   0.00000, 0.00000, 0.00000);
	CreateObject(19913, 2403.38550, -1799.45630, 13.00000,   0.00000, 0.00000, 90.00000);
	CreateObject(19912, 2403.46362, -1763.43494, 15.49320,   0.00000, 0.00000, 90.00000);
	CreateObject(19912, 2403.41699, -1760.26331, 15.55160,   0.00000, -1.50000, 90.00000);
	CreateObject(19913, 2378.38647, -1759.96973, 13.04560,   0.00000, 0.00000, 0.00000);
	CreateObject(19912, 2231.95996, -1764.56909, 7.55980,   -0.50000, 704970.00000, 89.00000);
	CreateObject(19912, 2231.46167, -1762.16040, 7.65870,   -2.00000, 91.00000, -90.00000);
	CreateObject(19913, 2256.70337, -1759.54407, 13.54050,   0.00000, 0.00000, 0.00000);
	CreateObject(18850, 2286.66724, -1792.96118, 8.53920,   0.00000, 0.00000, 0.00000);
	CreateObject(3749, 2300.14380, -1760.00720, 18.61060,   0.00000, 0.00000, 0.00000);
	CreateObject(19912, 2292.33740, -1759.58838, 16.15590,   0.00000, 0.00000, 0.00000);
	CreateObject(3749, 2336.68457, -1759.96265, 18.04380,   -0.50000, 0.00000, 0.00000);
	CreateObject(19912, 2354.51099, -1759.95129, 15.78210,   0.00000, 0.00000, 0.00000);
	CreateObject(19912, 2326.89502, -1759.82312, 15.79780,   0.00000, 0.00000, 0.00000);
	CreateObject(19912, 2318.79443, -1759.66577, 15.74810,   0.00000, 0.00000, 0.00000);
	CreateObject(10009, 2304.59302, -1791.16248, 17.54520,   0.00000, 0.00000, 904.00000);
	CreateObject(19129, 2364.27197, -1786.31763, 12.55330,   0.00000, 0.00000, -1.50000);
	CreateObject(19129, 2364.02979, -1803.48779, 12.55650,   0.00000, 0.00000, 0.00000);
	CreateObject(3527, 2346.50293, -1747.59460, 12.37097,   0.00000, 0.00000, 0.00000);
	CreateObject(3471, 2292.34033, -1756.90527, 13.79340,   0.00000, 0.50000, 90.00000);
	CreateObject(3471, 2308.19824, -1756.86426, 14.10510,   2.00000, 0.00000, 89.00000);
	CreateObject(3471, 2344.08960, -1756.90027, 13.73210,   0.00000, 0.00000, 90.00000);
	CreateObject(3471, 2328.85645, -1756.90491, 13.79430,   0.00000, 0.00000, 90.00000);
	CreateObject(3528, 2300.67700, -1755.00684, 20.81260,   0.00000, 0.00000, 90.00000);
	CreateObject(3528, 2336.92822, -1754.95044, 20.08280,   0.00000, 0.00000, 90.00000);
	CreateObject(3525, 2307.85156, -1757.40564, 17.60680,   0.00000, 0.00000, 0.00000);
	CreateObject(3525, 2292.14209, -1757.40601, 17.53020,   0.00000, 0.00000, 0.00000);
	CreateObject(3525, 2328.71509, -1757.37610, 16.74780,   0.00000, 0.00000, 0.00000);
	CreateObject(3525, 2344.29736, -1757.37866, 16.98250,   0.00000, 0.00000, 0.00000);
	CreateObject(9132, 2316.21826, -1817.96472, 30.54550,   0.50000, 0.00000, 0.00000);
	CreateObject(19076, 2315.71973, -1787.00342, 12.54580,   0.00000, 0.00000, 0.00000);
	CreateObject(19057, 2314.54053, -1785.49939, 13.05130,   0.00000, 0.00000, 0.00000);
	CreateObject(19058, 2316.72461, -1785.23193, 13.04620,   0.00000, 0.00000, 0.00000);
	CreateObject(19055, 2316.08423, -1788.46252, 13.04620,   0.00000, 0.00000, 0.00000);
	CreateObject(19608, 2344.24194, -1821.33228, 12.54130,   0.00000, 0.00000, 183.00000);
	CreateObject(11685, 2344.74536, -1822.84546, 12.58810,   0.00000, 0.00000, 1620.00000);
	CreateObject(11685, 2343.38208, -1822.89941, 12.58780,   0.00000, 0.00000, 182.00000);
	CreateObject(11686, 2343.82300, -1820.97009, 12.58870,   0.00000, 0.00000, 3.00000);
	CreateObject(19893, 2343.44653, -1821.04175, 13.68690,   0.00000, 0.00000, 3.00000);
	CreateObject(19893, 2344.26758, -1821.02014, 13.68690,   0.00000, 0.00000, 2.00000);
	CreateObject(14395, 2301.80835, -1792.06274, 11.54420,   0.00000, 0.50000, 51.50000);*/


	//trangtri-shopxe
	/*CreateDynamicObject(1723, -1653.31995, 1207.54004, 12.80000,   0.00000, 0.00000, 181.00000);
	CreateDynamicObject(1723, -1656.28003, 1207.50000, 12.80000,   0.00000, 0.00000, 181.00000);
	CreateDynamicObject(640, -1646.14001, 1210.22998, 6.90000,   0.00000, 0.00000, 45.00000);
	CreateDynamicObject(640, -1654.29712, 1218.47058, 6.90000,   0.00000, 0.00000, 45.00000);
	CreateDynamicObject(19173, -1662.59998, 1221.58997, 8.00000,   0.00000, 0.00000, 43.00000);
	CreateDynamicObject(1212, -1658.14001, 1209.34998, 7.20000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1212, -1658.32996, 1209.31995, 7.20000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1212, -1658.52002, 1209.29004, 7.20000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1663, -1650.52002, 1210.03003, 6.70000,   0.00000, 0.00000, -126.00000);
	CreateDynamicObject(646, -1664.53003, 1218.89001, 7.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(646, -1662.18005, 1207.23999, 7.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2267, -1668.25000, 1226.81995, 15.00000,   0.00000, 0.00000, 45.00000);
	CreateDynamicObject(2267, -1662.15002, 1226.33997, 15.00000,   0.00000, 0.00000, -44.00000);
	CreateDynamicObject(2690, -1658.85999, 1206.53003, 13.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2690, -1659.15002, 1206.52002, 13.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2690, -1653.34998, 1206.33997, 6.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2690, -1652.95996, 1206.32996, 6.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1212, -1658.51001, 1209.18994, 7.20000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1212, -1658.20996, 1209.20996, 7.20000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1212, -1657.91003, 1209.22998, 7.20000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2121, -1662.93005, 1202.93994, 6.80000,   0.00000, 0.00000, 178.00000);
	CreateDynamicObject(2121, -1663.41003, 1202.87000, 6.80000,   0.00000, 0.00000, 178.00000);
	CreateDynamicObject(2121, -1663.93994, 1202.98999, 6.80000,   0.00000, 0.00000, 178.00000);
	CreateDynamicObject(2121, -1664.43005, 1202.97998, 6.80000,   0.00000, 0.00000, 178.00000);
	CreateDynamicObject(2121, -1664.92004, 1202.93005, 6.80000,   0.00000, 0.00000, 178.00000);
	CreateDynamicObject(2121, -1665.40002, 1202.81006, 6.80000,   0.00000, 0.00000, 178.00000);
	CreateDynamicObject(1735, -1657.92004, 1207.34998, 6.40000,   0.00000, 0.00000, 173.00000);
	CreateDynamicObject(646, -1670.66003, 1223.13000, 7.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(646, -1677.13000, 1214.67004, 7.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1670, -1655.88000, 1208.89001, 7.20000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2008, -1651.43005, 1210.19995, 6.00000,   0.00000, 0.00000, 52.00000);
	CreateDynamicObject(2273, -1671.02002, 1204.56995, 9.00000,   0.00000, 0.00000, 117.00000);
	CreateDynamicObject(1670, -1660.75000, 1207.96997, 7.20000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2273, -1681.00000, 1213.52002, 15.00000,   0.00000, 0.00000, 46.00000);
	CreateDynamicObject(644, -1659.94995, 1222.79004, 13.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(644, -1650.13000, 1212.68994, 13.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(644, -1644.90002, 1202.84998, 13.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(4731, -1651.85999, 1217.94995, 29.20000,   0.00000, 0.00000, 165.00000);
	CreateDynamicObject(644, -1660.59998, 1222.90002, 20.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(644, -1649.81995, 1212.93005, 20.50000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(644, -1644.46997, 1207.26001, 20.50000,   0.00000, 0.00000, 0.00000);
	////
	//map-suaxe
	CreateDynamicObject(19905, -2640.23999, 1357.41003, 6.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19899, -2647.03003, 1358.50000, 6.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19899, -2647.06006, 1349.43994, 6.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19899, -2646.81006, 1342.21997, 6.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19899, -2647.11011, 1367.31995, 6.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19815, -2647.35010, 1363.06995, 8.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19815, -2647.40991, 1354.26001, 8.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19815, -2647.42993, 1371.92004, 8.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19366, -2647.93994, 1337.67004, 8.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19366, -2647.89990, 1334.46997, 8.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19366, -2647.87988, 1332.22998, 8.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19366, -2646.10010, 1330.79004, 8.00000,   0.00000, 0.00000, 89.00000);
	CreateDynamicObject(19366, -2642.73999, 1330.78003, 8.00000,   0.00000, 0.00000, 89.00000);
	CreateDynamicObject(19366, -2639.57007, 1330.68005, 8.00000,   0.00000, 0.00000, 89.00000);
	CreateDynamicObject(19366, -2636.41992, 1330.70996, 8.00000,   0.00000, 0.00000, 91.00000);
	CreateDynamicObject(19366, -2633.16992, 1330.72998, 8.00000,   0.00000, 0.00000, 91.00000);
	CreateDynamicObject(19366, -2629.19995, 1330.77002, 8.00000,   0.00000, 0.00000, 89.00000);
	CreateDynamicObject(19366, -2626.53003, 1331.89001, 8.00000,   0.00000, 0.00000, 137.00000);
	CreateDynamicObject(19366, -2630.60010, 1330.75000, 8.00000,   0.00000, 0.00000, 89.00000);
	CreateDynamicObject(19366, -2624.28003, 1334.13000, 8.00000,   0.00000, 0.00000, 135.00000);
	CreateDynamicObject(19366, -2622.04004, 1336.33997, 8.00000,   0.00000, 0.00000, 135.00000);
	CreateDynamicObject(19366, -2619.78003, 1338.55005, 8.00000,   0.00000, 0.00000, 135.00000);
	CreateDynamicObject(19366, -2617.09009, 1341.31995, 8.00000,   0.00000, 0.00000, 135.00000);
	CreateDynamicObject(19366, -2616.03003, 1343.95996, 8.00000,   0.00000, 0.00000, 181.00000);
	CreateDynamicObject(19366, -2618.25000, 1340.10999, 8.00000,   0.00000, 0.00000, 135.00000);
	CreateDynamicObject(19366, -2616.12012, 1347.18005, 8.00000,   0.00000, 0.00000, 181.00000);
	CreateDynamicObject(8406, -2615.80005, 1358.06995, 12.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19366, -2616.04004, 1373.94995, 8.00000,   0.00000, 0.00000, 181.00000);
	CreateDynamicObject(19366, -2616.08008, 1377.14001, 8.00000,   0.00000, 0.00000, 181.00000);
	CreateDynamicObject(19366, -2616.08008, 1379.09998, 8.00000,   0.00000, 0.00000, 181.00000);
	CreateDynamicObject(19366, -2617.68994, 1380.68005, 8.00000,   0.00000, 0.00000, 268.00000);
	CreateDynamicObject(19366, -2620.87012, 1380.70996, 8.00000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(19366, -2623.91992, 1380.68005, 8.00000,   0.00000, 0.00000, 272.00000);
	CreateDynamicObject(19366, -2627.15991, 1380.62000, 8.00000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(19366, -2630.29004, 1380.57996, 8.00000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(19366, -2633.45996, 1380.56995, 8.00000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(19366, -2636.58008, 1380.58997, 8.00000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(19366, -2639.76001, 1380.63000, 8.00000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(19366, -2642.84009, 1380.70996, 8.00000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(19366, -2646.01001, 1380.72998, 8.00000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(19366, -2646.71997, 1380.70996, 8.00000,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(19366, -2648.14990, 1379.06006, 8.00000,   0.00000, 0.00000, 183.00000);
	CreateDynamicObject(19366, -2648.07007, 1377.14001, 8.00000,   0.00000, 0.00000, 183.00000);
	CreateDynamicObject(19817, -2637.28003, 1344.30005, 5.00000,   0.00000, 0.00000, 92.00000);
	CreateDynamicObject(19817, -2637.67993, 1352.50000, 5.00000,   0.00000, 0.00000, 92.00000);
	CreateDynamicObject(19817, -2638.17993, 1361.03003, 5.00000,   0.00000, 0.00000, 92.00000);
	CreateDynamicObject(19817, -2638.58008, 1371.17004, 5.00000,   0.00000, 0.00000, 92.00000);
	CreateDynamicObject(19900, -2642.92993, 1362.98999, 6.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19900, -2643.20996, 1369.03003, 6.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19900, -2642.29004, 1354.92004, 6.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19900, -2641.62012, 1346.31995, 6.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1686, -2641.51001, 1348.57996, 6.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1686, -2642.66992, 1365.71997, 6.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(10281, -2631.31006, 1357.33997, 11.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1775, -2631.59009, 1374.69995, 7.00000,   0.00000, 0.00000, 88.00000);
	CreateDynamicObject(1368, -2615.40991, 1346.75000, 7.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1368, -2615.34009, 1343.80005, 7.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1368, -2615.44995, 1375.96997, 7.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(640, -2616.76001, 1346.15002, 7.00000,   0.00000, 0.00000, 183.00000);
	CreateDynamicObject(640, -2616.59009, 1375.43005, 7.00000,   0.00000, 0.00000, 2.00000);
	CreateDynamicObject(638, -2631.53003, 1366.27002, 7.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(638, -2631.54004, 1357.28003, 7.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(638, -2631.53003, 1348.51001, 7.00000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2480, -2647.12988, 1360.55005, 6.90000,   0.00000, 0.00000, 80.00000);
	CreateDynamicObject(2480, -2647.48999, 1349.45996, 9.00000,   0.00000, 0.00000, 82.00000);
	CreateDynamicObject(1083, -2646.97998, 1365.54004, 6.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1083, -2646.94995, 1364.68005, 6.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1098, -2647.43994, 1351.22998, 6.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1098, -2647.45996, 1352.14001, 6.70000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2480, -2647.46997, 1341.96997, 9.00000,   0.00000, 0.00000, 82.00000);
	CreateDynamicObject(2714, -2631.93994, 1357.38000, 8.00000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19425, -2632.37012, 1351.52002, 6.20000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19425, -2632.36011, 1354.31995, 6.20000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19425, -2632.34009, 1360.45996, 6.20000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19425, -2632.34009, 1363.40002, 6.20000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19425, -2632.38989, 1372.31995, 6.20000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19425, -2632.37012, 1369.43005, 6.20000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19425, -2632.38989, 1345.40002, 6.20000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19425, -2632.38989, 1342.26001, 6.20000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19898, -2638.72998, 1371.43994, 6.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19898, -2641.58008, 1360.75000, 6.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19898, -2639.13989, 1355.17004, 6.30000,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19898, -2638.71997, 1344.60999, 6.30000,   0.00000, 0.00000, 0.00000);
	///////
	// pizza new
	CreateDynamicObject(10606, -1724.26599, 1399.18921, 14.98290,   0.00000, 0.00000, 495.42010);
	CreateDynamicObject(869, -1707.29700, 1385.31042, 6.54250,   -0.04000, 0.00000, 35.16000);
	CreateDynamicObject(869, -1709.50439, 1383.23425, 6.54250,   -0.04000, 0.00000, 35.16000);
	CreateDynamicObject(869, -1711.65491, 1381.16248, 6.54250,   -0.04000, 0.00000, 35.16000);
	CreateDynamicObject(869, -1713.85901, 1378.78650, 6.54250,   -0.04000, 0.00000, 35.16000);
	CreateDynamicObject(869, -1716.10657, 1376.50708, 6.54250,   -0.04000, 0.00000, 35.16000);
	CreateDynamicObject(869, -1718.65002, 1373.87280, 6.54250,   -0.04000, 0.00000, 35.16000);
	CreateDynamicObject(869, -1721.11096, 1371.39294, 6.54250,   -0.04000, 0.00000, 35.16000);
	CreateDynamicObject(869, -1723.67212, 1368.83008, 6.54250,   -0.04000, 0.00000, 35.16000);
	CreateDynamicObject(869, -1725.26270, 1367.23364, 6.54250,   -0.04000, 0.00000, 35.16000);
	CreateDynamicObject(1364, -1730.39258, 1368.28845, 6.80020,   0.00000, 0.00000, -44.76003);
	CreateDynamicObject(1364, -1735.41016, 1373.27319, 6.80020,   0.00000, 0.00000, -44.76003);
	CreateDynamicObject(1364, -1740.60669, 1378.26538, 6.82020,   0.00000, 0.00000, -44.76000);
	CreateDynamicObject(870, -1738.51721, 1375.56201, 6.28520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, -1733.17822, 1370.36548, 6.28520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(870, -1731.76550, 1367.15356, 6.28520,   0.00000, 0.00000, 71.70001);
	CreateDynamicObject(870, -1736.11938, 1371.31873, 6.28520,   0.00000, 0.00000, 71.70001);
	CreateDynamicObject(870, -1734.04419, 1369.16895, 6.28520,   0.00000, 0.00000, 71.70001);
	CreateDynamicObject(870, -1737.94556, 1373.06909, 6.28520,   0.00000, 0.00000, 71.70001);
	CreateDynamicObject(870, -1742.39673, 1377.52600, 6.28520,   0.00000, 0.00000, 71.70001);
	CreateDynamicObject(870, -1740.54089, 1375.65808, 6.28520,   0.00000, 0.00000, 71.70001);
	CreateDynamicObject(714, -1727.91846, 1365.40234, 4.37320,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(7405, -1740.71936, 1378.27966, 6.64002,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2456, -1745.23596, 1384.71619, 7.33520,   0.00000, 0.00000, -43.85998);
	CreateDynamicObject(2456, -1752.77612, 1392.17310, 7.33520,   0.00000, 0.00000, -45.95997);

	// NGU DAN SF
	CreateDynamicObject(3406, -1474.49768, 706.52301, -0.29079,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3406, -1471.69946, 711.35651, -0.29079,   0.00000, 0.00000, -88.69997);
	CreateDynamicObject(3406, -1471.89893, 720.16431, -0.29079,   0.00000, 0.00000, -88.69997);
	CreateDynamicObject(3406, -1472.09827, 728.95233, -0.29079,   0.00000, 0.00000, -88.69997);
	CreateDynamicObject(11496, -1475.94104, 741.82269, 1.61521,   0.00000, 0.00000, 1.30000);
	CreateDynamicObject(11496, -1476.30151, 757.73877, 1.61521,   0.00000, 0.00000, 1.30000);
	CreateDynamicObject(3406, -1473.02197, 769.68134, -0.29079,   0.00000, 0.00000, -88.69997);
	CreateDynamicObject(3406, -1473.22083, 778.46869, -0.29079,   0.00000, 0.00000, -88.69997);
	CreateDynamicObject(3406, -1476.39978, 793.11578, -0.29079,   0.00000, 0.00000, 1.20000);
	CreateDynamicObject(3406, -1482.93896, 792.99872, -0.27080,   0.00000, 0.00000, 1.20000);
	CreateDynamicObject(11496, -1480.91980, 741.70734, 1.57521,   0.00000, 0.00000, -178.69998);
	CreateDynamicObject(11496, -1481.28271, 757.63379, 1.57521,   0.00000, 0.00000, -178.69998);
	CreateDynamicObject(3406, -1473.42017, 787.24628, -0.29079,   0.00000, 0.00000, -88.69997);
	CreateDynamicObject(16151, -1481.88806, 761.92120, 2.16711,   0.00000, 0.00000, -179.30005);
	CreateDynamicObject(11497, -1480.15503, 740.24664, 1.21408,   0.00000, 0.00000, 91.29996);
	CreateDynamicObject(970, -1478.79822, 733.78766, 2.22794,   0.00000, 0.00000, 1.60000);
	CreateDynamicObject(970, -1475.31750, 733.87549, 2.24794,   0.00000, 0.00000, 1.60000);
	CreateDynamicObject(970, -1480.81653, 765.57434, 2.24794,   0.00000, 0.00000, 1.60000);
	CreateDynamicObject(970, -1476.68726, 765.69092, 2.24794,   0.00000, 0.00000, 1.60000);
	CreateDynamicObject(3406, -1467.24902, 771.38623, -0.32937,   0.00000, 0.00000, 0.90000);
	CreateDynamicObject(3406, -1467.35352, 778.04578, -0.32937,   0.00000, 0.00000, 0.90000);
	CreateDynamicObject(3406, -1467.45459, 784.50562, -0.32937,   0.00000, 0.00000, 0.90000);
	CreateDynamicObject(3406, -1467.56018, 791.20483, -0.32937,   0.00000, 0.00000, 0.90000);
	CreateDynamicObject(3406, -1466.57617, 728.49170, -0.32937,   0.00000, 0.00000, 0.90000);
	CreateDynamicObject(3406, -1466.47290, 721.88220, -0.32937,   0.00000, 0.00000, 0.90000);
	CreateDynamicObject(3406, -1466.37012, 715.31238, -0.32937,   0.00000, 0.00000, 0.90000);
	CreateDynamicObject(3406, -1466.26526, 708.67310, -0.32937,   0.00000, 0.00000, 0.90000);
	CreateDynamicObject(1256, -1482.47156, 749.34406, 2.45236,   0.00000, 0.00000, 179.89980);
	CreateDynamicObject(1256, -1482.46558, 753.70496, 2.45236,   0.00000, 0.00000, 179.89980);
	CreateDynamicObject(3425, -1474.39893, 737.75104, 2.47718,   0.00000, 0.00000, -177.50000);*/
	
	//KHU THO MO
	/*CreateDynamicObject(17859, 266.98398, 2906.54346, 11.72389,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(19450, 270.23807, 2893.60522, 10.98105,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(19450, 256.00815, 2893.64526, 10.98105,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(8661, 260.32236, 2924.39380, 9.48827,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(8661, 260.32236, 2904.44092, 9.48827,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3498, 250.48068, 2892.62646, 12.86950,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1479, 264.07520, 2894.94604, 12.53645,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1479, 264.10522, 2894.94482, 9.84645,   0.00000, 180.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3498, 256.78058, 2892.62646, 12.86950,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3498, 265.96039, 2892.62646, 12.86950,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3498, 273.29044, 2892.71655, 12.86950,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1479, 256.52554, 2894.94604, 12.53645,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1479, 271.78549, 2894.94604, 12.53645,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3125, 264.84973, 2893.85352, 11.14981,   0.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3125, 261.30972, 2893.83618, 11.14981,   0.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3498, 269.59064, 2892.71655, 16.10950,   0.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3498, 260.59091, 2892.71655, 16.10950,   0.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3498, 253.60124, 2892.68652, 16.10950,   0.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3498, 255.18118, 2892.68652, 11.97947,   0.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3498, 270.42111, 2892.68652, 11.97947,   0.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3498, 259.56046, 2892.64624, 11.33950,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(6916, 261.24796, 2867.55640, 15.26390,   0.00000, 0.00000, 720.00000, .streamdistance = 300);
	CreateDynamicObject(899, 255.24963, 2904.41748, 19.45893,   -173.60002, 0.00000, -3.80000, .streamdistance = 300);
	CreateDynamicObject(11533, 247.89743, 3029.00879, 10.65329,   -4.20000, -23.90001, 90.00000, .streamdistance = 300);
	CreateDynamicObject(8229, 256.71555, 2849.09937, 21.13285,   0.00000, 0.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(8229, 281.43555, 2849.09937, 21.13285,   0.00000, 0.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(19329, 266.61136, 2848.91162, 20.86466,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(19464, 263.05563, 2908.75952, 9.36309,   0.00000, 90.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(19464, 263.05563, 2896.92871, 9.36309,   0.00000, 90.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(19464, 263.05563, 2902.84326, 9.36309,   0.00000, 90.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(3631, 263.35974, 2899.16235, 8.52090,   90.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3631, 263.35974, 2899.16235, 8.52090,   90.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3631, 263.35815, 2906.75806, 8.51569,   90.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(18762, 259.43304, 2911.23560, 8.97827,   0.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(6233, 260.88290, 2977.85425, 13.09421,   0.00000, 7.60000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(6233, 260.88736, 2977.16357, 16.90548,   180.00000, 3.80000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3631, 263.34799, 2914.39136, 8.52563,   90.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3631, 263.34799, 2922.00879, 8.52563,   90.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3631, 263.34799, 2929.63623, 8.52563,   90.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3631, 263.33847, 2936.46289, 8.57942,   90.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(11694, 233.12906, 3032.26416, -21.71289,   16.79999, 21.99998, 135.19995, .streamdistance = 300);
	CreateDynamicObject(18228, 280.48245, 2931.68115, 40.42403,   27.39995, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(899, 241.37231, 2905.11060, 14.04851,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(899, 268.41437, 2904.34058, 19.71927,   -173.60002, 0.00000, -3.80000, .streamdistance = 300);
	CreateDynamicObject(899, 241.57756, 2906.72583, 18.35560,   -173.60002, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(19464, 262.38153, 3014.16895, 11.67280,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(19464, 269.18747, 3013.30054, 11.67280,   0.00000, 0.00000, 97.99995, .streamdistance = 300);
	CreateDynamicObject(19464, 253.89180, 3014.17651, 13.85281,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(19464, 259.81183, 3014.19653, 11.58278,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(19464, 274.99139, 3013.68579, 13.85281,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(2520, 263.27499, 2924.48389, 8.55114,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(2520, 263.27499, 2925.50488, 8.55114,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(2520, 263.27499, 2910.37207, 8.55114,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(2520, 263.27499, 2911.37305, 8.55114,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(2520, 263.27499, 2899.27393, 8.55114,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(2520, 263.27499, 2900.27490, 8.55114,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1945, 262.84485, 2925.19336, 9.65012,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(1945, 262.84485, 2926.69482, 9.65012,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(1945, 262.84485, 2912.61133, 9.65012,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(1945, 262.84485, 2911.07983, 9.65012,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(1945, 262.84485, 2901.52051, 9.65012,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(1945, 262.84485, 2900.03906, 9.65012,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(1945, 263.91483, 2900.03906, 9.65012,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(1945, 263.91483, 2901.50049, 9.65012,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(1945, 263.91483, 2911.05981, 9.65012,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(1945, 263.91483, 2912.55127, 9.65012,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(1945, 263.91483, 2925.11182, 9.65012,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(1945, 263.91483, 2926.61328, 9.65012,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2926.54761, 8.85205,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2925.78687, 8.85205,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2925.32642, 8.87204,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2912.41504, 8.87204,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2911.65430, 8.87204,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2911.22388, 8.85205,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2901.31445, 8.85205,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2900.58374, 8.85205,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1300, 263.35037, 2900.13330, 8.81205,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(16448, 246.49007, 2988.63403, 13.08253,   0.00000, 0.00000, 450.00000, .streamdistance = 300);
	CreateDynamicObject(16401, 268.66183, 2964.03662, 9.29792,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(16401, 270.39301, 2987.90576, 9.53792,   0.00000, 0.00000, -25.60001, .streamdistance = 300);
	CreateDynamicObject(16401, 253.45192, 2992.45459, 10.45326,   2.50000, -5.40000, -178.89996, .streamdistance = 300);
	CreateDynamicObject(16401, 257.83524, 2974.77832, 10.06952,   2.60000, -12.99999, -178.89996, .streamdistance = 300);
	CreateDynamicObject(16401, 256.80026, 2958.53223, 10.04330,   3.10000, -11.89999, 167.10002, .streamdistance = 300);
	CreateDynamicObject(16401, 268.93225, 2974.75537, 8.88406,   0.00000, 4.00000, 44.39998, .streamdistance = 300);
	CreateDynamicObject(16401, 269.77664, 2997.71582, 9.64792,   0.00000, 0.00000, -48.20001, .streamdistance = 300);
	CreateDynamicObject(1611, 258.03778, 2976.48657, 11.37752,   8.30000, 37.19999, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1611, 257.27368, 2959.67871, 11.27618,   22.80000, 36.70000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1611, 255.48184, 2959.02295, 12.84409,   22.80000, 44.00001, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1611, 258.33658, 2973.50171, 11.34927,   -18.19997, 27.20000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1611, 251.68196, 2992.19189, 13.23272,   -5.29998, 45.79998, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1611, 252.68013, 2993.70386, 12.32196,   6.50002, 48.20001, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1611, 268.99106, 2994.53052, 11.62887,   -29.09997, 61.70001, -163.40021, .streamdistance = 300);
	CreateDynamicObject(1611, 270.55618, 2994.11890, 13.02899,   24.50003, 61.70001, -111.10030, .streamdistance = 300);
	CreateDynamicObject(1611, 268.28946, 2986.80933, 10.59105,   -30.39999, -2.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1611, 270.79089, 2986.02856, 11.61605,   -49.99998, -2.00000, 56.30000, .streamdistance = 300);
	CreateDynamicObject(1611, 269.01932, 2976.57666, 10.79586,   -13.60001, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1611, 267.65128, 2974.61865, 9.72710,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1611, 269.13211, 2963.58057, 10.69508,   -2.00000, -32.70000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1611, 267.59171, 2965.53882, 10.34630,   16.30000, -17.30000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1354, 270.52444, 2995.10352, 12.21208,   0.00000, 0.00000, -143.39995, .streamdistance = 300);
	CreateDynamicObject(1354, 253.55597, 2991.39966, 11.38445,   90.00000, 165.50006, 0.00000, .streamdistance = 300);
	CreateDynamicObject(899, 236.71986, 2890.67651, 12.55793,   -173.60002, 0.00000, -27.40001, .streamdistance = 300);
	CreateDynamicObject(899, 234.97769, 2892.57959, 18.05059,   -173.60002, 0.00000, -27.40001, .streamdistance = 300);
	CreateDynamicObject(3498, 250.46118, 2887.94214, 11.99947,   0.00000, 90.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(3498, 250.46118, 2887.94214, 16.12948,   0.00000, 90.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(3498, 250.52066, 2883.61987, 11.82949,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(18980, 278.79465, 2892.81470, 9.09628,   90.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(19329, 259.67139, 2911.60864, 10.91827,   0.00000, 0.00000, -36.20002, .streamdistance = 300);
	CreateDynamicObject(19975, 264.95724, 2892.93384, 8.48517,   0.00000, 0.00000, -31.70000, .streamdistance = 300);
	CreateDynamicObject(3286, 268.14957, 2882.27832, 15.23072,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1408, 264.93359, 2848.99414, 22.36481,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1479, 259.89499, 2897.18579, 10.72668,   0.00000, 180.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(1479, 259.89499, 2903.88110, 10.72668,   0.00000, 180.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(1479, 266.48486, 2903.87109, 10.72668,   0.00000, 180.00000, 270.00000, .streamdistance = 300);
	CreateDynamicObject(1479, 266.48486, 2897.17603, 10.72668,   0.00000, 180.00000, 270.00000, .streamdistance = 300);
	CreateDynamicObject(3406, 261.82654, 2897.81836, 13.78593,   90.00000, 270.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3406, 261.82654, 2905.95557, 13.78593,   90.00000, 270.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1410, 263.29727, 2906.44312, 9.42296,   270.00000, 90.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(1410, 263.29727, 2897.51465, 9.42296,   270.00000, 90.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(1410, 263.29727, 2901.89868, 9.42296,   270.00000, 90.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(18762, 264.39307, 2911.23560, 8.98827,   0.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(18762, 254.46315, 2911.23560, 9.01827,   0.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1408, 259.48358, 2848.99414, 22.36481,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1410, 263.37311, 2911.32861, 9.42899,   270.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1410, 263.37311, 2916.15332, 9.42899,   270.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1410, 263.37311, 2920.89795, 9.42899,   270.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1410, 263.37311, 2925.64185, 9.43900,   270.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1410, 263.37311, 2930.46631, 9.45899,   270.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1410, 263.37311, 2935.07080, 9.51900,   270.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(17029, 249.97578, 2929.00854, 30.84988,   -70.99995, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(899, 279.66611, 2923.31567, 10.97547,   13.00000, -1.60000, 108.89988, .streamdistance = 300);
	CreateDynamicObject(899, 281.64511, 2922.32373, 17.68741,   13.00000, -1.60000, 108.89988, .streamdistance = 300);
	CreateDynamicObject(1408, 254.04373, 2848.99414, 22.36481,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(10984, 268.82709, 3014.16040, 11.26183,   82.39998, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(10984, 260.22739, 3015.62964, 10.41585,   89.99992, 3.30000, -3.80000, .streamdistance = 300);
	CreateDynamicObject(10984, 257.90094, 3003.08130, 9.84879,   0.00000, 16.99999, -1.70000, .streamdistance = 300);
	CreateDynamicObject(10984, 257.25058, 2981.15918, 9.84879,   0.00000, 16.99999, -1.70000, .streamdistance = 300);
	CreateDynamicObject(10984, 271.51422, 2950.14087, 10.64894,   0.50000, -12.50000, -1.70000, .streamdistance = 300);
	CreateDynamicObject(899, 285.59000, 2942.47534, 11.84953,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(943, 263.21121, 2951.75488, 11.03218,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(943, 263.21121, 2950.01318, 11.00217,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(943, 262.30103, 2950.01318, 11.00217,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(19601, 262.53256, 2954.34961, 10.25588,   0.00000, 0.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(943, 262.29123, 2951.75488, 11.03218,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1025, 263.96524, 2952.55542, 10.18442,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1025, 263.93521, 2949.30322, 10.18442,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1025, 261.60483, 2949.41333, 10.18442,   0.00000, 0.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(1025, 261.60483, 2952.68604, 10.18442,   0.00000, 0.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(1025, 261.60483, 2952.68604, 10.18442,   0.00000, 0.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(1897, 263.73984, 2953.32080, 10.56870,   179.20001, -109.59990, 90.00000, .streamdistance = 300);
	CreateDynamicObject(1897, 261.68240, 2953.26099, 10.64937,   9.09985, -73.59978, 92.99998, .streamdistance = 300);
	CreateDynamicObject(1471, 262.74591, 2950.00635, 12.80262,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(2978, 262.75757, 2949.35083, 11.64883,   0.00000, 90.00000, 630.00000, .streamdistance = 300);
	CreateDynamicObject(1431, 267.12460, 2937.63013, 10.10364,   0.00000, 0.00000, 105.79994, .streamdistance = 300);
	CreateDynamicObject(1714, 262.70685, 2949.61230, 11.54618,   0.00000, 0.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(920, 262.81549, 2952.76929, 11.57969,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(11406, 262.79306, 2950.97290, 10.26318,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(1471, 262.74591, 2950.00635, 12.12261,   0.00000, 180.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3930, 263.69006, 2954.95801, 9.78166,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3930, 263.69006, 2954.95801, 9.78166,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3930, 262.79004, 2954.95801, 9.78166,   0.00000, 0.00000, -70.70001, .streamdistance = 300);
	CreateDynamicObject(3930, 261.77823, 2954.76440, 9.78166,   0.00000, 0.00000, -15.30002, .streamdistance = 300);
	CreateDynamicObject(1482, 259.72858, 2933.45923, 12.45977,   -89.20005, 4.09997, 6.60002, .streamdistance = 300);
	CreateDynamicObject(1482, 266.81668, 2933.47729, 12.83598,   90.00000, 0.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(1482, 270.21667, 2933.54736, 12.83598,   90.00000, 0.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(1482, 259.73935, 2933.36963, 19.12911,   -89.20005, 4.09997, 6.60002, .streamdistance = 300);
	CreateDynamicObject(1482, 266.81668, 2933.47729, 19.50599,   90.00000, 0.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(1482, 263.37668, 2933.43701, 17.74596,   90.00000, 0.00000, 180.00000, .streamdistance = 300);
	CreateDynamicObject(3474, 260.05829, 3008.01807, 5.85338,   0.00000, 0.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(3066, 254.55571, 2914.36890, 9.32894,   0.00000, 0.00000, 80.20004, .streamdistance = 300);
	CreateDynamicObject(3930, 263.41742, 2926.43677, 9.66790,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3930, 263.41742, 2925.40576, 9.66790,   0.00000, 0.00000, 64.10000, .streamdistance = 300);
	CreateDynamicObject(3930, 263.45734, 2912.31860, 9.72926,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3930, 263.45734, 2911.33765, 9.72926,   0.00000, 0.00000, -74.39998, .streamdistance = 300);
	CreateDynamicObject(3930, 263.45313, 2901.20728, 9.67809,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3930, 263.23480, 2900.17944, 9.67809,   0.00000, 0.00000, -141.70001, .streamdistance = 300);
	CreateDynamicObject(1408, 273.19330, 2848.99414, 22.36481,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1408, 278.63315, 2848.99414, 22.36481,   0.00000, 0.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(1307, 248.89561, 2964.64063, 17.17149,   0.00000, 180.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3864, 268.05798, 2959.18750, 11.63895,   0.00000, 0.00000, -30.40000, .streamdistance = 300);
	CreateDynamicObject(3864, 268.00412, 2984.33032, 11.63895,   0.00000, 0.00000, -8.40001, .streamdistance = 300);
	CreateDynamicObject(3862, 258.79337, 2918.37183, 10.49827,   0.00000, 0.00000, 75.20001, .streamdistance = 300);
	CreateDynamicObject(337, 259.08612, 2917.11768, 10.23828,   0.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(337, 259.17615, 2917.63818, 10.23828,   0.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(337, 259.30624, 2918.18872, 10.23828,   0.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(337, 259.42627, 2918.89941, 10.21828,   0.00000, 90.00000, 0.00000, .streamdistance = 300);
	CreateDynamicObject(3862, 259.59024, 2921.38965, 10.49827,   0.00000, 0.00000, 75.20001, .streamdistance = 300);
	CreateDynamicObject(19631, 259.82285, 2920.13037, 10.12828,   0.00000, 90.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(19631, 259.94284, 2920.56079, 10.12828,   0.00000, 90.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(19631, 260.26288, 2921.11133, 10.12828,   0.00000, 90.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(19631, 260.30289, 2921.71191, 10.12828,   0.00000, 90.00000, 90.00000, .streamdistance = 300);
	CreateDynamicObject(19980, 259.59296, 2911.60620, 8.31826,   0.00000, 0.00000, 145.29996, .streamdistance = 300);*/

	//HQ SAAS
	CreateDynamicObject(5130, -1334.65564, 478.66974, 8.16349,   0.00000, 0.00000, -135.39996, .streamdistance = 700);

 	CreateObject(8404,1569.19921875,-1709.09960938,1440.09997559,0.00000000,0.00000000,355.98449707); //object(vgshpgrnd03_lvs) (2)
	CreateObject(8404,1568.00000000,-1749.19921875,1440.19995117,0.00000000,0.00000000,0.00000000); //object(vgshpgrnd03_lvs) (3)
	CreateObject(18561,1580.79980469,-1697.09960938,1438.50000000,270.48889160,179.99450684,179.99450684); //object(cs_newbridge) (1)
	CreateObject(18561,1578.00000000,-1696.69921875,1438.50000000,272.98828125,179.99450684,269.98901367); //object(cs_newbridge) (2)
	CreateObject(18561,1620.09960938,-1598.00000000,1442.90002441,4.98779297,179.99450684,89.98352051); //object(cs_newbridge) (3)
	CreateObject(18561,1616.39941406,-1678.39941406,1438.50000000,270.48889160,179.99450684,89.98901367); //object(cs_newbridge) (5)
	CreateObject(18561,1582.00000000,-1755.79980469,1438.50000000,272.99926758,179.99450684,359.97802734); //object(cs_newbridge) (6)
	CreateObject(11233,1593.09997559,-1679.59997559,1390.09997559,0.00000000,0.00000000,0.00000000); //object(crackfactwalkb) (1)
	CreateObject(18561,1578.30004883,-1597.30004883,1446.00000000,4.98779297,179.99450684,267.98400879); //object(cs_newbridge) (7)
	CreateObject(8404,1569.79980469,-1708.89941406,1448.59997559,0.00000000,0.00000000,179.99450684); //object(vgshpgrnd03_lvs) (4)
	CreateObject(8404,1624.29980469,-1709.69921875,1445.59997559,0.00000000,0.00000000,0.08789062); //object(vgshpgrnd03_lvs) (5)
	CreateObject(8404,1624.69921875,-1716.59960938,1454.59997559,0.00000000,179.99450684,359.59350586); //object(vgshpgrnd03_lvs) (6)
	CreateObject(9131,1603.79980469,-1710.39941406,1441.19995117,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (1)
	CreateObject(9131,1603.79980469,-1710.39941406,1443.40002441,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (2)
	CreateObject(9131,1603.69995117,-1719.59997559,1441.19995117,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (3)
	CreateObject(9131,1603.69921875,-1719.59960938,1443.39990234,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (4)
	CreateObject(9131,1604.00000000,-1728.90002441,1441.19995117,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (5)
	CreateObject(9131,1604.00000000,-1728.89941406,1443.45996094,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (6)
	CreateObject(18561,1709.69921875,-1731.59960938,1438.50000000,271.98852539,359.97802734,179.47814941); //object(cs_newbridge) (8)
	CreateObject(9131,1587.80004883,-1727.99951172,1452.64978027,90.00000000,180.00000000,180.00000000); //object(shbbyhswall13_lvs) (7)
	CreateObject(9131,1587.69995117,-1708.50000000,1454.09985352,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (8)
	CreateObject(9131,1587.90002441,-1717.90002441,1454.09985352,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (9)
	CreateObject(9131,1587.80004883,-1727.40002441,1454.09997559,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (10)
	CreateObject(9131,1587.79980469,-1727.39941406,1449.69995117,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (14)
	CreateObject(9131,1587.89941406,-1717.89941406,1449.69995117,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (15)
	CreateObject(9131,1587.69921875,-1708.50000000,1449.69995117,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (16)
	CreateObject(9131,1587.79980469,-1699.00000000,1449.69995117,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (17)
	CreateObject(9131,1587.79980469,-1728.39416504,1449.69995117,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (18)
	CreateObject(9131,1587.79980469,-1728.39355469,1451.89990234,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (19)
	CreateObject(9131,1587.79980469,-1699.00000000,1451.89990234,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (20)
	CreateObject(9131,1587.69921875,-1708.50000000,1451.89990234,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (21)
	CreateObject(9131,1587.89941406,-1717.89941406,1451.89990234,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (22)
	CreateObject(9131,1587.79980469,-1727.39941406,1451.90002441,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (23)
	CreateObject(9131,1587.79980469,-1728.39355469,1454.19995117,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (24)
	CreateObject(982,1590.90002441,-1716.19995117,1449.09997559,0.00000000,0.00000000,0.00000000); //object(fenceshit) (1)
	CreateObject(9131,1587.79980469,-1700.50000000,1452.64978027,90.00000000,179.99450684,179.99450684); //object(shbbyhswall13_lvs) (25)
	CreateObject(9131,1587.79980469,-1702.50000000,1452.64978027,90.00000000,179.99450684,179.99450684); //object(shbbyhswall13_lvs) (26)
	CreateObject(9131,1587.79980469,-1704.50000000,1452.64978027,90.00000000,179.99450684,179.99450684); //object(shbbyhswall13_lvs) (27)
	CreateObject(9131,1587.79980469,-1706.50000000,1452.64978027,90.00000000,180.00549316,179.98352051); //object(shbbyhswall13_lvs) (28)
	CreateObject(9131,1587.79980469,-1708.50000000,1452.64978027,90.00000000,179.99450684,179.99450684); //object(shbbyhswall13_lvs) (29)
	CreateObject(9131,1587.79980469,-1710.50000000,1452.64978027,90.00000000,179.99450684,179.99450684); //object(shbbyhswall13_lvs) (30)
	CreateObject(9131,1587.79980469,-1712.50000000,1452.64978027,90.00000000,179.99450684,179.99450684); //object(shbbyhswall13_lvs) (31)
	CreateObject(9131,1587.79980469,-1714.50000000,1452.64978027,90.00000000,180.00549316,179.98352051); //object(shbbyhswall13_lvs) (32)
	CreateObject(9131,1587.79980469,-1716.50000000,1452.64978027,90.00000000,179.99450684,179.99450684); //object(shbbyhswall13_lvs) (33)
	CreateObject(9131,1587.79980469,-1719.00000000,1452.64978027,90.00000000,180.00549316,179.98352051); //object(shbbyhswall13_lvs) (34)
	CreateObject(9131,1587.79980469,-1721.00000000,1452.64978027,90.00000000,180.00549316,179.98352051); //object(shbbyhswall13_lvs) (35)
	CreateObject(9131,1587.79980469,-1723.00000000,1452.64978027,90.00000000,179.99450684,179.99450684); //object(shbbyhswall13_lvs) (36)
	CreateObject(9131,1587.79980469,-1725.00000000,1452.64978027,90.00000000,180.00549316,179.98352051); //object(shbbyhswall13_lvs) (37)
	CreateObject(9131,1587.79980469,-1727.19921875,1452.64978027,90.00000000,179.99450684,179.99450684); //object(shbbyhswall13_lvs) (38)
	CreateObject(9131,1587.79980469,-1699.00000000,1453.89990234,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (39)
	CreateObject(14401,1583.09997559,-1702.00000000,1440.40002441,0.00000000,0.00000000,90.00000000); //object(bench1) (1)
	CreateObject(12839,1595.60998535,-1699.59997559,1445.90002441,0.00000000,0.00000000,270.24218750); //object(cos_sbanksteps02) (1)
	CreateObject(12950,1597.69995117,-1728.59997559,1441.80004883,0.00000000,0.00000000,270.00000000); //object(cos_sbanksteps03) (2)
	CreateObject(14401,1582.80004883,-1709.40002441,1440.40002441,0.00000000,0.00000000,90.00000000); //object(bench1) (1)
	CreateObject(14401,1582.80004883,-1715.90002441,1440.40002441,0.00000000,0.00000000,90.00000000); //object(bench1) (1)
	CreateObject(14401,1589.80004883,-1702.19995117,1440.40002441,0.00000000,0.00000000,90.00000000); //object(bench1) (1)
	CreateObject(2628,1582.19995117,-1721.90002441,1440.09997559,0.00000000,0.00000000,88.00000000); //object(gym_bench2) (1)
	CreateObject(2628,1582.09997559,-1723.40002441,1440.09997559,0.00000000,0.00000000,87.99499512); //object(gym_bench2) (2)
	CreateObject(2628,1582.00000000,-1725.09997559,1440.09997559,0.00000000,0.00000000,87.99499512); //object(gym_bench2) (3)
	CreateObject(2949,1588.19995117,-1728.90002441,1440.00000000,0.00000000,0.00000000,270.00000000); //object(kmb_lockeddoor) (1)
	CreateObject(2949,1581.80004883,-1729.00000000,1440.00000000,0.00000000,0.00000000,270.00000000); //object(kmb_lockeddoor) (2)
	CreateObject(921,1589.59997559,-1712.59997559,1440.19995117,0.00000000,0.00000000,0.00000000); //object(cj_ind_light) (1)
	CreateObject(18561,1616.69995117,-1707.59997559,1438.50000000,272.99923706,179.99450684,269.98901367); //object(cs_newbridge) (2)
	CreateObject(2631,1592.30004883,-1726.00000000,1440.09997559,0.00000000,0.00000000,0.00000000); //object(gym_mat1) (1)
	CreateObject(2631,1592.50000000,-1723.19995117,1440.09997559,0.00000000,0.00000000,0.00000000); //object(gym_mat1) (2)
	CreateObject(2627,1592.30004883,-1725.90002441,1440.19995117,0.00000000,0.00000000,92.00000000); //object(gym_treadmill) (1)
	CreateObject(2627,1592.50000000,-1723.09997559,1440.19995117,0.00000000,0.00000000,89.99951172); //object(gym_treadmill) (2)
	CreateObject(2718,1582.19995117,-1698.59997559,1443.50000000,0.00000000,0.00000000,0.00000000); //object(cj_fly_killer) (1)
	CreateObject(2718,1584.90002441,-1698.59997559,1443.50000000,0.00000000,0.00000000,0.00000000); //object(cj_fly_killer) (2)
	CreateObject(2718,1587.40002441,-1698.59997559,1443.50000000,0.00000000,0.00000000,0.00000000); //object(cj_fly_killer) (3)
	CreateObject(1892,1587.00000000,-1728.80004883,1440.09997559,0.00000000,0.00000000,0.00000000); //object(security_gatsh) (1)
	CreateObject(1892,1580.59997559,-1728.80004883,1440.09997559,0.00000000,0.00000000,0.00000000); //object(security_gatsh) (2)
	CreateObject(1216,1579.59960938,-1742.29980469,1440.90002441,0.00000000,0.00000000,90.00000000); //object(phonebooth1) (1)
	CreateObject(1776,1590.30004883,-1699.00000000,1441.19995117,0.00000000,0.00000000,0.00000000); //object(cj_candyvendor) (1)
	CreateObject(1776,1591.79980469,-1699.00000000,1441.19995117,0.00000000,0.00000000,0.00000000); //object(cj_candyvendor) (2)
	CreateObject(1359,1579.50000000,-1699.00000000,1440.80004883,0.00000000,0.00000000,0.00000000); //object(cj_bin1) (1)
	CreateObject(9131,1603.99951172,-1701.00000000,1441.19995117,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (1)
	CreateObject(9131,1603.99218750,-1701.00000000,1443.19995117,0.00000000,0.00000000,0.00000000); //object(shbbyhswall13_lvs) (1)
	CreateObject(8651,1619.19995117,-1710.90002441,1441.09997559,0.00000000,0.00000000,88.00000000); //object(shbbyhswall07_lvs) (1)
	CreateObject(8651,1619.19921875,-1710.89941406,1443.09997559,0.00000000,0.00000000,87.99499512); //object(shbbyhswall07_lvs) (5)
	CreateObject(8651,1618.79980469,-1720.00000000,1441.09997559,0.00000000,0.00000000,87.98950195); //object(shbbyhswall07_lvs) (6)
	CreateObject(8651,1619.09997559,-1720.00000000,1443.09997559,0.00000000,0.00000000,87.98950195); //object(shbbyhswall07_lvs) (7)
	CreateObject(8653,1579.00000000,-1718.69921875,1441.09997559,0.00000000,0.00000000,0.00000000); //object(shbbyhswall08_lvs) (1)
	CreateObject(8653,1578.90002441,-1689.00000000,1441.09997559,0.00000000,0.00000000,0.00000000); //object(shbbyhswall08_lvs) (2)
	CreateObject(8653,1593.19921875,-1698.50000000,1441.09997559,0.00000000,0.00000000,270.00000000); //object(shbbyhswall08_lvs) (3)
	CreateObject(8653,1623.00000000,-1698.40002441,1441.09997559,0.00000000,0.00000000,270.00000000); //object(shbbyhswall08_lvs) (4)
	CreateObject(8659,1573.00000000,-1717.59997559,1453.59997559,0.00000000,0.00000000,358.75000000); //object(shbbyhswall11_lvs) (1)
	CreateObject(8659,1573.00000000,-1708.19995117,1453.59997559,0.00000000,0.00000000,358.74755859); //object(shbbyhswall11_lvs) (2)
	CreateObject(8659,1573.00000000,-1717.59960938,1449.59997559,0.00000000,0.00000000,358.74755859); //object(shbbyhswall11_lvs) (3)
	CreateObject(8659,1573.00000000,-1717.59960938,1451.59997559,0.00000000,0.00000000,358.74755859); //object(shbbyhswall11_lvs) (4)
	CreateObject(8659,1573.00000000,-1708.19921875,1449.59997559,0.00000000,0.00000000,358.74755859); //object(shbbyhswall11_lvs) (5)
	CreateObject(8659,1573.00000000,-1708.19921875,1451.59997559,0.00000000,0.00000000,358.74755859); //object(shbbyhswall11_lvs) (6)
	CreateObject(1800,1610.89941406,-1708.69921875,1440.09997559,0.00000000,0.00000000,265.99548340); //object(low_bed_1) (1)
	CreateObject(1800,1611.00000000,-1699.69995117,1440.09997559,0.00000000,0.00000000,265.99548340); //object(low_bed_1) (2)
	CreateObject(2528,1608.50000000,-1709.50000000,1440.19995117,0.00000000,0.00000000,179.99450684); //object(cj_toilet3) (2)
	CreateObject(1800,1582.80004883,-1707.09997559,1448.59997559,0.00000000,0.00000000,88.00000000); //object(low_bed_1) (3)
	CreateObject(1800,1582.90002441,-1699.80004883,1448.59997559,0.00000000,0.00000000,87.99499512); //object(low_bed_1) (4)
	CreateObject(1800,1582.80004883,-1710.19995117,1448.59997559,0.00000000,0.00000000,87.99499512); //object(low_bed_1) (5)
	CreateObject(1800,1582.80004883,-1716.59997559,1448.59997559,0.00000000,0.00000000,87.99499512); //object(low_bed_1) (6)
	CreateObject(1800,1582.90002441,-1719.59997559,1448.59997559,0.00000000,0.00000000,87.99499512); //object(low_bed_1) (7)
	CreateObject(1800,1582.80004883,-1727.80004883,1448.59997559,0.00000000,0.00000000,87.99499512); //object(low_bed_1) (8)
	CreateObject(2949,1586.50000000,-1729.69995117,1440.00000000,0.00000000,0.00000000,90.00000000); //object(kmb_lockeddoor) (1)
	CreateObject(2949,1580.90002441,-1729.80004883,1440.00000000,0.00000000,0.00000000,90.00000000); //object(kmb_lockeddoor) (1)
	CreateObject(1216,1579.59997559,-1740.80004883,1440.90002441,0.00000000,0.00000000,90.00000000); //object(phonebooth1) (1)
	CreateObject(1216,1579.50000000,-1739.09997559,1440.90002441,0.00000000,0.00000000,90.00000000); //object(phonebooth1) (1)
	CreateObject(1216,1579.59997559,-1737.50000000,1440.90002441,0.00000000,0.00000000,90.00000000); //object(phonebooth1) (1)
	CreateObject(2611,1615.40002441,-1736.19995117,1446.19995117,0.00000000,0.00000000,0.00000000); //object(police_nb1) (1)
	CreateObject(2198,1609.19995117,-1736.69995117,1440.19995117,0.00000000,0.00000000,88.00000000); //object(med_office2_desk_3) (1)
	CreateObject(2198,1611.59997559,-1734.00000000,1440.19995117,0.00000000,0.00000000,87.99499512); //object(med_office2_desk_3) (2)
	CreateObject(2198,1611.59997559,-1736.80004883,1440.19995117,0.00000000,0.00000000,87.99499512); //object(med_office2_desk_3) (3)
	CreateObject(2198,1611.59997559,-1739.59997559,1440.19995117,0.00000000,0.00000000,87.99499512); //object(med_office2_desk_3) (4)
	CreateObject(2182,1607.69995117,-1732.09997559,1440.19995117,0.00000000,0.00000000,0.00000000); //object(med_office5_desk_1) (1)
	CreateObject(2182,1605.40002441,-1731.90002441,1440.19995117,0.00000000,0.00000000,0.00000000); //object(med_office5_desk_1) (2)
	CreateObject(2182,1603.19995117,-1731.90002441,1440.19995117,0.00000000,0.00000000,0.00000000); //object(med_office5_desk_1) (3)
	CreateObject(2141,1614.00000000,-1698.69995117,1445.59997559,0.00000000,0.00000000,0.00000000); //object(cj_kitch2_l) (1)
	CreateObject(2141,1612.69995117,-1698.69995117,1445.59997559,0.00000000,0.00000000,0.00000000); //object(cj_kitch2_l) (2)
	CreateObject(2452,1610.69995117,-1698.50000000,1445.59997559,0.00000000,0.00000000,0.00000000); //object(cj_ff_fridge2) (1)
	CreateObject(2415,1614.69995117,-1701.50000000,1445.59997559,0.00000000,0.00000000,270.00000000); //object(cj_ff_fryer) (1)
	CreateObject(2613,1610.00000000,-1698.09997559,1445.90002441,0.00000000,0.00000000,0.00000000); //object(police_wastebin) (1)
	CreateObject(1776,1591.79980469,-1699.00000000,1441.19995117,0.00000000,0.00000000,0.00000000); //object(cj_candyvendor) (2)
	CreateObject(956,1615.09997559,-1705.50000000,1445.59997559,0.00000000,0.00000000,268.00000000); //object(cj_ext_candy) (1)
	CreateObject(956,1615.09997559,-1706.80004883,1445.59997559,0.00000000,0.00000000,267.99499512); //object(cj_ext_candy) (2)
	CreateObject(982,1603.00000000,-1715.00000000,1446.30004883,0.00000000,0.00000000,0.00000000); //object(fenceshit) (2)
	CreateObject(8653,1593.80004883,-1729.50000000,1441.09997559,0.00000000,0.00000000,270.00000000); //object(shbbyhswall08_lvs) (5)
	CreateObject(8653,1608.40002441,-1730.30004883,1441.09997559,0.00000000,0.00000000,268.00000000); //object(shbbyhswall08_lvs) (6)
	CreateObject(8653,1623.59997559,-1729.59997559,1441.09997559,0.00000000,0.00000000,269.99499512); //object(shbbyhswall08_lvs) (7)
	CreateObject(2161,1614.69995117,-1731.59997559,1440.19995117,0.00000000,0.00000000,88.00000000); //object(med_office_unit_4) (1)
	CreateObject(2161,1614.64843750,-1732.89941406,1440.19995117,0.00000000,0.00000000,87.98950195); //object(med_office_unit_4) (3)
	CreateObject(2161,1614.69995117,-1734.40002441,1440.19995117,0.00000000,0.00000000,87.99499512); //object(med_office_unit_4) (4)
	CreateObject(3278,1591.80004883,-1762.40002441,1441.69995117,0.00000000,0.00000000,0.00000000); //object(des_warewin) (1)
	CreateObject(2198,1606.80004883,-1736.59997559,1440.19995117,0.00000000,0.00000000,87.99499512); //object(med_office2_desk_3) (5)
	CreateObject(2198,1609.09997559,-1739.40002441,1440.19995117,0.00000000,0.00000000,87.99499512); //object(med_office2_desk_3) (6)
	CreateObject(2198,1606.69995117,-1739.30004883,1440.19995117,0.00000000,0.00000000,87.99499512); //object(med_office2_desk_3) (7)
	CreateObject(2210,1616.30004883,-1757.50000000,1456.09997559,0.00000000,0.00000000,0.00000000); //object(med_office9_unit_1) (1)
	CreateObject(8653,1579.00000000,-1748.09997559,1441.09997559,0.00000000,0.00000000,0.00000000); //object(shbbyhswall08_lvs) (8)
	CreateObject(1491,1583.89941406,-1754.79980469,1440.19995117,0.00000000,0.00000000,0.00000000); //object(gen_doorint01) (1)
	CreateObject(1491,1582.40002441,-1754.79992676,1440.19995117,0.00000000,0.00000000,0.00000000); //object(gen_doorint01) (2)
	CreateObject(991,1608.90002441,-1751.69995117,1440.50000000,0.00000000,0.00000000,270.00000000); //object(bar_barriergate1) (2)
	CreateObject(991,1608.90002441,-1745.09997559,1440.50000000,0.00000000,0.00000000,270.00000000); //object(bar_barriergate1) (3)
	CreateObject(991,1612.19921875,-1741.79980469,1440.50000000,0.00000000,0.00000000,179.99499512); //object(bar_barriergate1) (4)
	CreateObject(8653,1603.69995117,-1754.80004883,1441.09997559,0.00000000,0.00000000,90.00000000); //object(shbbyhswall08_lvs) (9)
	CreateObject(3851,1609.30004883,-1747.45043945,1442.19995117,0.00000000,0.00000000,0.00000000); //object(carshowwin_sfsx) (1)
	CreateObject(3851,1614.95007324,-1741.80004883,1442.19995117,0.00000000,0.00000000,270.49487305); //object(carshowwin_sfsx) (3)
	CreateObject(8653,1615.29980469,-1750.09960938,1443.09997559,0.00000000,0.00000000,180.74707031); //object(shbbyhswall08_lvs) (10)
	CreateObject(1892,1581.09997559,-1730.19995117,1440.19995117,0.00000000,0.00000000,0.00000000); //object(security_gatsh) (3)
	CreateObject(1892,1586.69995117,-1729.90002441,1440.19995117,0.00000000,0.00000000,0.00000000); //object(security_gatsh) (4)
	CreateObject(2290,1592.40002441,-1730.59997559,1440.19995117,0.00000000,0.00000000,0.00000000); //object(swk_couch_1) (1)
	CreateObject(2290,1591.09997559,-1734.00000000,1440.19995117,0.00000000,0.00000000,92.00000000); //object(swk_couch_1) (2)
	CreateObject(2290,1595.80004883,-1731.80004883,1440.19995117,0.00000000,0.00000000,271.99951172); //object(swk_couch_1) (3)
	CreateObject(1808,1601.90002441,-1730.69995117,1440.19995117,0.00000000,0.00000000,0.00000000); //object(cj_watercooler2) (1)
	CreateObject(8653,1615.29980469,-1750.09960938,1441.09997559,0.00000000,0.00000000,180.74707031); //object(shbbyhswall08_lvs) (11)
	CreateObject(8653,1603.90002441,-1754.80004883,1443.09997559,0.00000000,0.00000000,90.00000000); //object(shbbyhswall08_lvs) (12)
	CreateObject(3851,1609.30029297,-1758.71936035,1442.19995117,0.00000000,0.00000000,0.00000000); //object(carshowwin_sfsx) (5)
	CreateObject(638,1588.50000000,-1753.30004883,1440.90002441,0.00000000,0.00000000,0.00000000); //object(kb_planter_bush) (1)
	CreateObject(638,1588.50000000,-1750.50000000,1440.90002441,0.00000000,0.00000000,0.00000000); //object(kb_planter_bush) (2)
	CreateObject(638,1588.69995117,-1740.80004883,1440.90002441,0.00000000,0.00000000,0.00000000); //object(kb_planter_bush) (3)
	CreateObject(638,1588.69995117,-1737.69995117,1440.90002441,0.00000000,0.00000000,0.00000000); //object(kb_planter_bush) (4)
	CreateObject(638,1588.69995117,-1734.50000000,1440.90002441,0.00000000,0.00000000,0.00000000); //object(kb_planter_bush) (5)
	CreateObject(638,1588.69995117,-1731.59997559,1440.90002441,0.00000000,0.00000000,0.00000000); //object(kb_planter_bush) (6)
	CreateObject(1337,1579.59997559,-1730.90002441,1440.80004883,0.00000000,0.00000000,0.00000000); //object(binnt07_la) (1)
	CreateObject(1256,1579.59997559,-1744.19995117,1440.90002441,0.00000000,0.00000000,180.00000000); //object(stonebench1) (1)
	CreateObject(1256,1579.59997559,-1747.09997559,1440.90002441,0.00000000,0.00000000,179.99450684); //object(stonebench1) (2)
	CreateObject(2528,1578.90002441,-1723.40002441,1448.59997559,0.00000000,0.00000000,88.00000000); //object(cj_toilet3) (3)
	CreateObject(2528,1578.90002441,-1712.80004883,1448.59997559,0.00000000,0.00000000,87.99499512); //object(cj_toilet3) (4)
	CreateObject(2528,1579.09997559,-1702.90002441,1448.59997559,0.00000000,0.00000000,87.99499512); //object(cj_toilet3) (5)
	CreateObject(1800,1610.80004883,-1711.90002441,1440.09997559,0.00000000,0.00000000,265.99548340); //object(low_bed_1) (1)
	CreateObject(1800,1610.59997559,-1717.90002441,1440.09997559,0.00000000,0.00000000,265.99548340); //object(low_bed_1) (1)
	CreateObject(1800,1606.30004883,-1717.80004883,1440.09997559,0.00000000,0.00000000,265.99548340); //object(low_bed_1) (1)
	CreateObject(1800,1611.30004883,-1720.90002441,1440.09997559,0.00000000,0.00000000,265.99548340); //object(low_bed_1) (1)
	CreateObject(1800,1611.00000000,-1728.19995117,1440.09997559,0.00000000,0.00000000,265.99548340); //object(low_bed_1) (1)
	CreateObject(1800,1605.19995117,-1728.30004883,1440.09997559,0.00000000,0.00000000,265.99548340); //object(low_bed_1) (1)
	CreateObject(2528,1605.90002441,-1718.59997559,1440.19995117,0.00000000,0.00000000,179.99450684); //object(cj_toilet3) (2)
	CreateObject(2528,1614.69995117,-1724.80004883,1440.19995117,0.00000000,0.00000000,267.99450684); //object(cj_toilet3) (2)
	CreateObject(2629,1592.59997559,-1719.59997559,1440.09997559,0.00000000,0.00000000,0.00000000); //object(gym_bench1) (1)
	CreateObject(2629,1594.30004883,-1719.59997559,1440.09997559,0.00000000,0.00000000,0.00000000); //object(gym_bench1) (2)
	CreateObject(2629,1596.00000000,-1719.50000000,1440.09997559,0.00000000,0.00000000,0.00000000); //object(gym_bench1) (3)
	CreateObject(8572,1600.69995117,-1702.00000000,1441.20007324,0.00000000,0.00000000,90.00000000); //object(vgssstairs02_lvs) (1)
	CreateObject(11472,1600.69995117,-1698.19995117,1436.30004883,90.00000000,0.00000000,0.00000000); //object(des_swtstairs1) (3)
	CreateObject(1698,1591.89001465,-1701.79992676,1448.50000000,0.00000000,0.00000000,0.00000000); //object(esc_step8) (1)
	CreateObject(982,1603.00000000,-1689.40002441,1446.30004883,0.00000000,0.00000000,0.00000000); //object(fenceshit) (2)
	CreateObject(1594,1605.00000000,-1706.00000000,1446.09997559,0.00000000,0.00000000,0.00000000); //object(chairsntable) (1)
	CreateObject(1594,1604.90002441,-1710.50000000,1446.09997559,0.00000000,0.00000000,0.00000000); //object(chairsntable) (2)
	CreateObject(1594,1604.80004883,-1715.00000000,1446.09997559,0.00000000,0.00000000,0.00000000); //object(chairsntable) (3)
	CreateObject(1594,1604.69995117,-1719.30004883,1446.09997559,0.00000000,0.00000000,0.00000000); //object(chairsntable) (4)
	CreateObject(1594,1604.69995117,-1724.80004883,1446.09997559,0.00000000,0.00000000,0.00000000); //object(chairsntable) (5)
	CreateObject(1594,1608.40002441,-1724.80004883,1446.09997559,0.00000000,0.00000000,0.00000000); //object(chairsntable) (6)
	CreateObject(1594,1608.40002441,-1719.30004883,1446.09997559,0.00000000,0.00000000,0.00000000); //object(chairsntable) (7)
	CreateObject(1594,1608.69995117,-1715.09997559,1446.09997559,0.00000000,0.00000000,0.00000000); //object(chairsntable) (8)
	CreateObject(1594,1609.00000000,-1710.40002441,1446.09997559,0.00000000,0.00000000,0.00000000); //object(chairsntable) (9)
	CreateObject(1594,1609.40002441,-1706.19995117,1446.09997559,0.00000000,0.00000000,0.00000000); //object(chairsntable) (10)
	CreateObject(1594,1605.09997559,-1700.40002441,1446.09997559,0.00000000,0.00000000,0.00000000); //object(chairsntable) (11)
	CreateObject(8653,1589.19995117,-1744.30004883,1441.09997559,0.00000000,0.00000000,358.74707031); //object(shbbyhswall08_lvs) (10)
	CreateObject(8653,1589.19921875,-1744.29980469,1443.09997559,0.00000000,0.00000000,358.74206543); //object(shbbyhswall08_lvs) (10)
	CreateObject(8653,1589.19921875,-1744.29980469,1445.09997559,0.00000000,0.00000000,358.74206543); //object(shbbyhswall08_lvs) (10)
	CreateObject(8653,1589.19921875,-1744.29980469,1447.09997559,0.00000000,0.00000000,358.74206543); //object(shbbyhswall08_lvs) (10)
	CreateObject(8404,1627.80004883,-1750.00000000,1450.09997559,0.00000000,179.99450684,359.59350586); //object(vgshpgrnd03_lvs) (6)
	CreateObject(8653,1589.19921875,-1744.29980469,1447.09997559,0.00000000,0.00000000,358.74206543); //object(shbbyhswall08_lvs) (10)
	CreateObject(8653,1589.19921875,-1744.29980469,1449.09997559,0.00000000,0.00000000,358.74206543); //object(shbbyhswall08_lvs) (10)
	CreateObject(1216,1608.40002441,-1742.00000000,1440.90002441,0.00000000,0.00000000,270.00000000); //object(phonebooth1) (2)
	CreateObject(1216,1608.30004883,-1745.00000000,1440.90002441,0.00000000,0.00000000,270.00000000); //object(phonebooth1) (3)
	CreateObject(1216,1608.40002441,-1748.19995117,1440.90002441,0.00000000,0.00000000,270.00000000); //object(phonebooth1) (4)
	CreateObject(1216,1608.30004883,-1751.50000000,1440.90002441,0.00000000,0.00000000,270.00000000); //object(phonebooth1) (5)
	CreateObject(1216,1608.40002441,-1754.19995117,1440.90002441,0.00000000,0.00000000,270.00000000); //object(phonebooth1) (6)
	CreateObject(1715,1607.59997559,-1743.50000000,1440.19995117,0.00000000,0.00000000,88.00000000); //object(kb_swivelchair2) (1)
	CreateObject(1715,1607.59997559,-1746.80004883,1440.19995117,0.00000000,0.00000000,87.99499512); //object(kb_swivelchair2) (2)
	CreateObject(1715,1607.59997559,-1749.80004883,1440.19995117,0.00000000,0.00000000,87.99499512); //object(kb_swivelchair2) (3)
	CreateObject(1715,1607.50000000,-1753.09997559,1440.19995117,0.00000000,0.00000000,87.99499512); //object(kb_swivelchair2) (4)
	CreateObject(2960,1614.19995117,-1741.80004883,1444.44995117,0.00000000,0.00000000,0.00000000); //object(kmb_beam) (1)
	CreateObject(2960,1611.59924316,-1741.79980469,1444.44995117,0.00000000,0.00000000,0.00000000); //object(kmb_beam) (2)
	CreateObject(2960,1609.34997559,-1743.90002441,1444.15905762,0.00000000,180.00000000,270.00000000); //object(kmb_beam) (3)
	CreateObject(2960,1609.34960938,-1753.09936523,1444.15905762,0.00000000,179.99450684,270.00000000); //object(kmb_beam) (4)
	CreateObject(2960,1609.34960938,-1748.49902344,1444.15905762,0.00000000,179.99450684,270.00000000); //object(kmb_beam) (5)
	CreateObject(2947,1612.80004883,-1741.80004883,1440.19995117,0.00000000,0.00000000,272.00000000); //object(cr_door_01) (1)
	CreateObject(2635,1593.30004883,-1733.19995117,1440.59997559,0.00000000,0.00000000,0.00000000); //object(cj_pizza_table) (1)
	CreateObject(1491,1589.30004883,-1745.19946289,1440.09997559,0.00000000,0.00000000,88.00000000); //object(gen_doorint01) (3)
	CreateObject(1491,1589.29980469,-1746.69921875,1440.09997559,0.00000000,0.00000000,87.99499512); //object(gen_doorint01) (4)
	CreateObject(1491,1588.69995117,-1744.40002441,1440.19995117,0.00000000,0.00000000,270.00000000); //object(gen_doorint01) (5)
	CreateObject(1491,1588.69921875,-1745.91943359,1440.19995117,0.00000000,0.00000000,270.00000000); //object(gen_doorint01) (7)
	CreateObject(3659,1591.00000000,-1754.40002441,1441.19995117,0.00000000,0.00000000,0.00000000); //object(airfinfoa_las) (1)
	CreateObject(3659,1593.59997559,-1754.40002441,1441.19995117,0.00000000,0.00000000,0.00000000); //object(airfinfoa_las) (2)
	CreateObject(3497,1602.50000000,-1714.59997559,1444.40002441,0.00000000,0.00000000,90.00000000); //object(vgsxrefbballnet2) (1)
	CreateObject(2114,1602.00000000,-1718.09997559,1440.19995117,0.00000000,0.00000000,0.00000000); //object(basketball) (1)
	CreateObject(1421,1590.30004883,-1740.90002441,1441.00000000,0.00000000,0.00000000,0.00000000); //object(dyn_boxes) (1)
	CreateObject(1421,1590.19995117,-1739.69995117,1441.00000000,0.00000000,0.00000000,0.00000000); //object(dyn_boxes) (2)
	CreateObject(2200,1598.69995117,-1730.19995117,1440.19995117,0.00000000,0.00000000,0.00000000); //object(med_office5_unit_1) (1)
	CreateObject(2197,1595.59997559,-1752.90002441,1440.30004883,0.00000000,0.00000000,182.00000000); //object(filling_cabinet) (1)
	CreateObject(2197,1596.40002441,-1752.90002441,1440.30004883,0.00000000,0.00000000,181.99952698); //object(filling_cabinet) (2)
	CreateObject(2197,1597.19995117,-1752.90002441,1440.30004883,0.00000000,0.00000000,181.99952698); //object(filling_cabinet) (3)
	CreateObject(2197,1598.00000000,-1752.90002441,1440.30004883,0.00000000,0.00000000,181.99952698); //object(filling_cabinet) (4)
	CreateObject(2161,1614.64843750,-1732.89941406,1441.59997559,0.00000000,0.00000000,87.98950195); //object(med_office_unit_4) (3)
	CreateObject(8653,1615.30004883,-1714.69995117,1446.09997559,0.00000000,0.00000000,180.00000000); //object(shbbyhswall08_lvs) (1)
	CreateObject(8653,1615.30004883,-1685.00000000,1446.09997559,0.00000000,0.00000000,179.99450684); //object(shbbyhswall08_lvs) (1)
	CreateObject(1800,1606.90002441,-1699.40002441,1440.09997559,0.00000000,0.00000000,265.99548340); //object(low_bed_1) (2)
	

	//bank
	/*CreateDynamicObject(19380, 1662.48743, -971.75378, 706.51898,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 1656.65344, -971.62341, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1658.31506, -973.28998, 701.63879,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1656.65259, -974.96600, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1666.42468, -973.18341, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1668.09167, -971.52069, 701.63879,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1668.08789, -974.84570, 701.63879,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1667.57214, -974.94922, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1657.16797, -974.99103, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(1278, 1663.16296, -976.64099, 700.80029,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1278, 1663.16296, -976.64099, 703.67731,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1278, 1663.16296, -976.64099, 706.39130,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 1662.84253, -976.63281, 699.00177,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1660.28625, -976.63782, 699.00378,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1278, 1664.43274, -976.71887, 706.34930,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1666.65210, -976.65454, 702.11121,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1662.18835, -976.64697, 702.11121,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1657.94739, -976.62915, 702.11121,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1278, 1660.03259, -976.68048, 706.34930,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1662.18835, -976.64697, 705.37720,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1666.59045, -976.64697, 705.37720,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1657.94824, -976.64899, 705.37720,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1667.55725, -969.82300, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1657.22937, -969.77875, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1656.33521, -968.05743, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1668.52039, -968.11981, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1665.40320, -967.14172, 701.63678,   90.00000, 0.00000, 55.00000);
	CreateDynamicObject(19454, 1659.46021, -967.08081, 701.63678,   90.00000, 0.00000, -55.00000);
	CreateDynamicObject(19380, 1662.42456, -962.27173, 706.51703,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19391, 1662.37244, -966.14618, 701.82550,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1662.29138, -966.14740, 707.60278,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1662.37500, -971.72113, 700.00342,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19375, 1662.43970, -963.05243, 700.00140,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 1665.55212, -966.13098, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1667.22107, -964.33282, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1667.22095, -960.95282, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1660.89551, -964.39307, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19380, 1663.72046, -961.21100, 703.62903,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 1659.23047, -962.72852, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19370, 1664.28015, -971.68073, 707.10889,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19370, 1662.76160, -973.19739, 707.10687,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19370, 1661.23926, -971.67780, 707.10889,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19370, 1662.76013, -970.15582, 707.10687,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19443, 1663.48096, -971.70142, 706.37988,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19443, 1662.75806, -972.42108, 706.38190,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19443, 1662.04016, -971.69843, 706.37988,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19443, 1662.76147, -970.98419, 706.38190,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(18075, 1662.37048, -970.06836, 706.46777,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2207, 1663.03015, -971.79346, 700.09070,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1727, 1663.31348, -970.20789, 699.95898,   0.00000, 0.00000, -40.00000);
	CreateDynamicObject(1727, 1659.96106, -970.93146, 699.95898,   0.00000, 0.00000, 40.00000);
	CreateDynamicObject(1727, 1661.50989, -969.53607, 699.95898,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 1662.10669, -973.59125, 700.05157,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2811, 1661.05359, -973.11829, 699.97162,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1663.09033, -973.12018, 699.97162,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2200, 1657.44141, -970.53723, 700.08978,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1653.66931, -972.24451, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1653.64197, -974.36877, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1653.65918, -973.32990, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1671.06738, -972.08447, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1671.04700, -973.17102, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1671.07214, -974.26880, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2230, 1661.15503, -966.06073, 705.13647,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2230, 1664.17798, -966.06073, 705.12848,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19370, 1662.27222, -964.76300, 705.05292,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19370, 1662.46216, -964.76501, 705.05090,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19370, 1662.46216, -964.76501, 706.45093,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(1649, 1662.36194, -966.43878, 707.24719,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(2614, 1662.38245, -966.27612, 703.86688,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2200, 1667.24573, -969.26605, 700.08978,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2811, 1663.83496, -966.64502, 699.97162,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1660.88159, -966.68427, 699.97162,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1502, 1661.58777, -966.17401, 700.06921,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1662.35779, -966.45477, 707.24719,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1649, 1662.35779, -966.48077, 707.24719,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1734, 1662.79236, -971.69281, 706.42902,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1667.21094, -957.63080, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19375, 1662.45776, -953.80481, 700.00342,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19391, 1658.35205, -961.25458, 701.81750,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1502, 1658.35767, -962.00018, 700.06921,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1659.23047, -959.72552, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1660.90051, -958.06427, 701.63678,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1662.50964, -956.62701, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1665.89014, -956.62653, 701.63678,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(1726, 1666.37830, -962.08569, 700.08868,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1726, 1666.34082, -958.71960, 700.08868,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1727, 1664.09412, -957.83966, 700.08765,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1727, 1664.97131, -964.99353, 700.08759,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2811, 1666.50635, -965.32239, 699.97162,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1666.49377, -957.60059, 699.97162,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2126, 1665.15479, -960.55115, 700.08881,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2126, 1665.19629, -963.32709, 700.08881,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2614, 1667.07581, -961.43964, 702.49182,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19375, 1671.89587, -965.46210, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1671.90527, -964.59674, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1671.89502, -958.07025, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1671.90881, -957.41803, 701.72339,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19375, 1671.90002, -961.44330, 704.69342,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19375, 1671.90002, -961.44330, 705.48541,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(2200, 1661.01624, -959.01569, 700.08978,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(14596, 1652.60913, -957.46368, 693.38580,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19375, 1662.70935, -963.04932, 688.40442,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 1658.96338, -967.07098, 690.17383,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19375, 1662.71594, -970.60370, 688.41443,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 1658.95447, -955.35168, 690.21381,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1663.30591, -958.41248, 690.21381,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1665.79163, -962.90070, 690.17383,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1661.68274, -971.20868, 690.17383,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1665.79285, -967.26093, 690.17578,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2206, 1663.32397, -960.97894, 688.45349,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2206, 1661.45435, -961.97198, 688.45148,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2206, 1661.45630, -962.95599, 688.45349,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2206, 1661.45630, -963.92999, 688.45148,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2206, 1661.45630, -964.90399, 688.45349,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2206, 1661.45630, -965.87799, 688.45148,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 1664.47815, -964.20013, 688.49377,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1714, 1664.46436, -962.77960, 688.49377,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1714, 1664.43201, -961.27374, 688.49377,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1714, 1664.47046, -965.76575, 688.49377,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1714, 1660.37378, -961.13538, 688.49377,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, 1660.36292, -962.68683, 688.49377,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, 1660.31726, -964.14752, 688.49377,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, 1660.34314, -965.74756, 688.49377,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, 1662.39783, -959.87054, 688.49377,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1662.91016, -956.80499, 689.27472,   -0.05300, 90.00000, 90.00000);
	CreateDynamicObject(19448, 1662.68140, -956.75812, 690.17572,   -0.05300, 90.00000, 90.00000);
	CreateDynamicObject(19448, 1667.42212, -963.23273, 690.17572,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1667.40771, -963.19348, 689.27472,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1667.42908, -971.07928, 690.17572,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1667.40833, -968.83728, 689.27472,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1661.87451, -972.81970, 689.27472,   -0.05300, 90.00000, 90.00000);
	CreateDynamicObject(19448, 1657.31396, -969.12482, 690.17572,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1657.32751, -969.12482, 689.27472,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(2230, 1663.76355, -971.30103, 688.35822,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19448, 1659.08435, -975.93622, 690.17572,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1665.84216, -975.93213, 690.17572,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(2230, 1660.47583, -971.26636, 688.35822,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2811, 1661.30225, -970.88525, 688.45660,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1663.53259, -970.78687, 688.45660,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1664.15002, -975.86359, 690.17572,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1660.68494, -975.89722, 690.17572,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(1828, 1662.12476, -968.67163, 688.49323,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1662.24158, -967.92981, 691.94348,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1662.28015, -962.10773, 691.98151,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1502, 1657.56604, -961.96283, 688.48071,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19448, 1657.30774, -969.11176, 691.09570,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1659.04810, -975.93469, 691.09570,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1665.78918, -975.92078, 691.09570,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1662.42566, -975.91620, 691.89569,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1667.43506, -966.83893, 691.09570,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1667.44019, -957.22589, 691.09570,   -0.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1662.97778, -956.75787, 691.09570,   -0.05300, 90.00000, 90.00000);
	CreateDynamicObject(19380, 1663.13403, -961.99518, 691.84302,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1663.08032, -967.48743, 691.84497,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19174, 1659.05225, -967.67047, 690.17877,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19175, 1665.68555, -968.27643, 690.17792,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19172, 1665.68494, -961.49689, 690.19287,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2491, 1663.91870, -968.71417, 687.72620,   0.00000, 0.00000, -47.00000);
	CreateDynamicObject(1952, 1663.73193, -968.88348, 689.70990,   55.00000, 91.00000, -149.00000);
	CreateDynamicObject(3077, 1662.46704, -971.14868, 692.41919,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(2227, 1662.71179, -966.43073, 688.49408,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3077, 1662.48022, -958.49329, 692.41919,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19448, 1660.61646, -956.79962, 694.01569,   -90.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1664.19775, -956.79871, 694.01569,   -90.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1659.23938, -965.45404, 699.93073,   -90.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1659.23938, -964.85797, 699.93073,   -90.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1659.23938, -964.26202, 699.93073,   -90.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1659.23938, -963.66602, 699.93073,   -90.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1659.23938, -963.07001, 699.93073,   -90.05300, 90.00000, 0.00000);
	CreateDynamicObject(19448, 1657.34546, -964.39307, 691.09570,   -90.05300, 90.00000, 0.00000);
	CreateDynamicObject(1536, 1658.40564, -962.00049, 694.28979,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19391, 1658.35205, -961.25458, 696.00647,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1653.07410, -963.40411, 684.22479,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1650.81616, -964.45227, 684.22479,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1656.31763, -956.78729, 684.22479,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1661.04724, -961.51617, 684.22479,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1662.65161, -961.14771, 684.22479,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19375, 1657.63232, -961.26575, 682.60437,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19454, 1655.57104, -969.17828, 684.22479,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1655.57104, -965.98853, 684.23877,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19391, 1661.24683, -965.98999, 684.43079,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19172, 1658.17444, -965.90759, 684.55719,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1726, 1660.10291, -965.30756, 682.63391,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1727, 1656.93030, -965.29083, 682.63568,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2811, 1657.45129, -965.35327, 682.69244,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2126, 1657.67688, -964.35883, 682.58270,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2614, 1653.20264, -961.37762, 684.42200,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19174, 1659.57642, -961.59302, 684.41058,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19454, 1667.40674, -965.99768, 684.43280,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19391, 1673.69470, -966.00177, 684.43481,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19379, 1660.32056, -970.69043, 682.59747,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1670.82617, -970.70868, 682.59949,   -0.00400, 90.00000, 0.06000);
	CreateDynamicObject(19454, 1679.53491, -966.00079, 684.31482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19450, 1655.57483, -970.78229, 684.20892,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19450, 1662.68152, -967.01599, 681.80890,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19450, 1667.44470, -971.74622, 681.80890,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(19450, 1679.07483, -970.76233, 684.20892,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19450, 1667.44470, -971.24622, 681.80890,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(19450, 1667.44250, -971.36652, 681.81091,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(19450, 1667.41479, -971.46899, 681.80890,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(19450, 1667.44470, -971.45221, 681.80688,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(19450, 1667.41272, -971.63385, 681.80688,   0.00000, 180.00000, 90.00000);
	CreateDynamicObject(19450, 1662.78552, -966.65765, 681.81091,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19450, 1662.87305, -966.41022, 681.80890,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19450, 1663.04565, -966.99860, 681.81091,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19450, 1663.04565, -966.99860, 681.81091,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19450, 1663.14392, -966.97192, 681.81293,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19450, 1657.16846, -976.89392, 684.20892,   0.00000, 0.00000, 48.00000);
	CreateDynamicObject(19450, 1677.52844, -976.71588, 684.20892,   0.00000, 0.00000, -48.00000);
	CreateDynamicObject(19450, 1660.71936, -984.86407, 684.20892,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19450, 1673.97595, -984.69043, 684.20892,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19379, 1678.49524, -970.70831, 682.60150,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1673.69922, -978.93152, 682.59747,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1663.19775, -978.88202, 682.59747,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1659.90479, -978.85461, 682.59351,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1672.02271, -987.53003, 682.60748,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1662.30005, -987.55170, 682.60553,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(14413, 1660.40491, -980.61688, 680.50598,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19450, 1655.99084, -989.59222, 684.20892,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19450, 1678.70947, -989.42102, 684.20490,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19450, 1672.42834, -996.52631, 684.20490,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19450, 1665.20630, -996.52954, 684.20490,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19450, 1679.14075, -996.31305, 684.20490,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19450, 1680.95544, -992.56982, 684.20490,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19450, 1655.19873, -996.27271, 684.20490,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19450, 1653.71216, -993.49536, 684.20490,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19379, 1655.92603, -992.17084, 682.60150,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1678.53967, -993.41864, 682.60150,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1670.27588, -991.98706, 682.59949,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19379, 1663.10400, -991.85168, 682.60352,   -0.00400, 90.00000, 0.00000);
	CreateDynamicObject(19358, 1672.17358, -970.22870, 681.80890,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1672.03430, -970.23053, 681.81091,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1671.94434, -970.22852, 681.80688,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1671.86829, -970.22650, 681.80890,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1671.74036, -970.23053, 681.80292,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1672.17566, -967.54669, 681.80890,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1671.92444, -967.54138, 681.80688,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1672.03430, -967.54150, 681.81091,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1671.74036, -967.58447, 681.80292,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1671.86829, -967.54248, 681.80890,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1671.57642, -970.21252, 681.80090,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(19358, 1671.57642, -967.54248, 681.80090,   0.00000, 180.00000, 0.00000);
	CreateDynamicObject(1536, 1670.57324, -964.19226, 682.51721,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1536, 1666.59705, -966.03491, 682.51721,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19176, 1667.35913, -996.42566, 683.93018,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1665.52271, -1001.17371, 683.64270,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1669.21240, -1001.15674, 683.65869,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1668.90662, -998.10468, 685.32269,   -0.05300, 90.00000, 90.00000);
	CreateDynamicObject(19448, 1665.97058, -998.10272, 685.33069,   -0.05300, 90.00000, 90.00000);
	CreateDynamicObject(19448, 1673.25439, -998.16711, 682.72272,   33.00000, 90.00000, 90.00000);
	CreateDynamicObject(19448, 1661.49133, -998.13934, 682.72272,   -33.00000, 90.00000, 90.00000);
	CreateDynamicObject(19448, 1669.65576, -1001.24042, 683.33868,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1670.11609, -1001.24353, 683.02368,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1670.57666, -1001.25226, 682.69373,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1671.03662, -1001.24109, 682.36371,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1671.45862, -1001.24512, 682.18372,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1671.90051, -1001.25153, 681.89868,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1672.30273, -1001.25348, 681.62872,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1672.72717, -1001.24298, 681.35870,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1665.09607, -1001.22498, 683.33868,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1664.65222, -1001.23010, 683.06873,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1664.20837, -1001.23523, 682.76868,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1663.80115, -1001.22870, 682.51367,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1663.37744, -1001.22302, 682.24969,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1662.99268, -1001.23077, 681.99768,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1662.61279, -1001.22302, 681.75171,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19448, 1662.18933, -1001.24329, 681.47968,   -0.05300, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1670.59705, -975.74170, 684.39459,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1670.84668, -976.46210, 684.39661,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, 1670.84668, -975.02710, 684.39661,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, 1671.22705, -975.74170, 684.39459,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1663.99280, -976.46210, 684.39661,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, 1664.24304, -975.74170, 684.39459,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1663.64502, -975.74170, 684.39459,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1663.99268, -975.02710, 684.39661,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1216, 1664.60999, -975.73181, 683.34930,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1216, 1670.24316, -975.72345, 683.34930,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19435, 1663.99280, -990.46210, 684.39661,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, 1663.99268, -989.02710, 684.39661,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, 1664.24304, -989.74170, 684.39459,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1663.64502, -989.74170, 684.39459,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1670.84668, -990.46210, 684.39661,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, 1670.84668, -989.02710, 684.39661,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19435, 1670.59705, -989.74170, 684.39459,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19435, 1671.22705, -989.74170, 684.39459,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1662.80054, -971.60742, 683.55664,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1662.80249, -971.60938, 685.22662,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1671.95862, -971.66241, 683.55664,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1671.96082, -971.66351, 685.22662,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1668.88403, -971.64197, 683.55664,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1665.77905, -971.68475, 683.55664,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1668.88599, -971.64398, 685.42963,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1665.78113, -971.68683, 685.40161,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1671.99792, -966.36957, 683.55664,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1671.99988, -966.36761, 685.56262,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1662.74365, -966.35168, 683.55664,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1662.74573, -966.34967, 685.32458,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19381, 1667.31580, -982.70880, 682.61493,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1677.32422, -992.69708, 682.60938,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1673.82422, -992.69708, 682.60938,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1670.32422, -992.69708, 682.60938,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1666.82422, -992.69708, 682.60938,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1663.32422, -992.69708, 682.60742,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1659.82422, -992.69708, 682.60742,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1657.32422, -992.69708, 682.60938,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1667.32007, -989.64728, 682.61139,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1667.31274, -987.56097, 682.61340,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1667.44006, -976.51031, 682.59943,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1667.43689, -974.11902, 682.60138,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1675.15894, -968.47070, 682.60541,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1675.15552, -971.62988, 682.60339,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1675.14941, -974.82123, 682.60541,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1659.02771, -968.61041, 682.59943,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1659.02771, -971.61041, 682.60138,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1659.02771, -974.61041, 682.59943,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1667.31506, -994.88812, 682.60541,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1216, 1664.62183, -989.77948, 683.34930,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1216, 1670.23364, -989.68671, 683.34930,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19372, 1665.55750, -984.24152, 682.61731,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19372, 1669.06519, -981.03992, 682.61731,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1502, 1672.91052, -965.99878, 682.66650,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1502, 1660.46240, -966.02490, 682.66650,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19373, 1660.72278, -973.38147, 700.00690,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19373, 1664.19324, -970.30255, 700.00690,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19372, 1660.73840, -970.30151, 700.00629,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19372, 1664.19141, -973.38068, 700.00629,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1726, 1654.57568, -993.88953, 682.60760,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1726, 1656.18237, -990.42102, 682.60760,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1726, 1658.12073, -995.30109, 682.60760,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(2126, 1656.79932, -993.20648, 682.59167,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1654.74890, -990.55658, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1654.64624, -995.29932, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1660.18701, -991.68616, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1660.21997, -993.80585, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19174, 1653.83386, -992.88977, 684.66608,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2126, 1676.75720, -993.20923, 682.59167,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1726, 1678.39221, -995.32458, 682.60760,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(1726, 1676.31909, -990.28052, 682.60760,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1726, 1680.03442, -991.83075, 682.60760,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2811, 1679.71533, -995.15234, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1679.85291, -990.56287, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1674.32520, -991.69720, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1674.31262, -993.74756, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19175, 1680.88062, -992.88879, 684.73419,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1727, 1659.82190, -992.22430, 682.69482,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1727, 1674.90588, -993.20551, 682.69482,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2811, 1669.43213, -990.82062, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1665.22046, -990.83411, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1669.40662, -994.72894, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1665.17786, -994.67572, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1664.38135, -971.64264, 686.28632,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1649, 1667.46509, -971.67499, 686.28632,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(1649, 1670.43530, -971.72980, 686.28632,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(9131, 1671.99182, -968.97778, 683.55664,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1671.99268, -968.98340, 685.22662,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1672.07544, -970.30029, 686.36530,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(9131, 1671.99268, -968.98340, 685.22662,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1672.16272, -967.69873, 686.36530,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(1649, 1662.68506, -970.26831, 686.28632,   0.00000, 90.00000, -90.00000);
	CreateDynamicObject(9131, 1662.74438, -968.89624, 683.55664,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(9131, 1662.74194, -968.89771, 685.22662,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1649, 1662.74121, -967.32971, 686.28632,   0.00000, 90.00000, -90.00000);
	CreateDynamicObject(2200, 1669.07825, -966.22864, 682.68683,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2200, 1664.39514, -966.23621, 682.68683,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1828, 1667.77917, -968.79425, 682.66248,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 1670.26538, -970.00128, 682.68542,   0.00000, 0.00000, 62.00000);
	CreateDynamicObject(1714, 1664.33838, -970.21857, 682.68542,   0.00000, 0.00000, -62.00000);
	CreateDynamicObject(1714, 1667.39148, -970.04071, 682.68542,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1714, 1670.32922, -967.69934, 682.68542,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1714, 1664.26782, -967.65887, 682.68542,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2811, 1669.55005, -977.65448, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1665.26160, -977.63495, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1808, 1670.90918, -988.73779, 682.69318,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2606, 1669.72595, -966.20422, 685.30310,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2606, 1669.72595, -966.20422, 684.84308,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19380, 1677.75940, -993.34680, 685.94501,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1667.43481, -993.30182, 685.96503,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1657.26416, -993.34833, 685.94501,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1664.09070, -983.83752, 685.97498,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1672.86572, -983.84723, 685.97900,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1674.54370, -974.38708, 685.94501,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1674.64111, -970.71228, 685.96503,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1664.31567, -974.47052, 685.98499,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1657.26782, -974.66217, 685.96503,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1657.41858, -965.23651, 686.00500,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1665.27612, -968.87659, 686.02502,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19380, 1654.17944, -961.91632, 685.98499,   0.00000, 90.00000, 0.00000);
	CreateDynamicObject(19443, 1654.88867, -958.56860, 686.58557,   90.00000, 0.00000, 90.00000);
	CreateDynamicObject(4595, 1812.95972, -1071.76428, 686.49622,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(4702, 1825.28564, -990.24133, 686.35730,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(4650, 1662.22815, -976.74054, 710.07861,   0.00000, -90.00000, 90.00000);
	CreateDynamicObject(14576, 1677.25659, -980.76630, 678.18488,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2634, 1677.76440, -987.50836, 671.68329,   0.00000, 0.00000, -55.00000);
	CreateDynamicObject(1726, 1668.31262, -981.95514, 682.60760,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(1726, 1666.28406, -983.28662, 682.60760,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1665.64502, -982.69666, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1668.86804, -982.63745, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19443, 1665.71082, -987.56238, 686.06207,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19443, 1665.71082, -981.06238, 686.06207,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19443, 1665.71277, -984.27441, 686.06012,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19443, 1667.36914, -989.22498, 686.06012,   90.00000, 90.00000, 0.00000);
	CreateDynamicObject(19443, 1665.71277, -977.56238, 686.06409,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19443, 1669.03259, -987.56348, 686.06207,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19443, 1669.03223, -984.16211, 686.06012,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19443, 1669.03125, -980.87512, 686.05811,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19443, 1669.03784, -977.56500, 686.05609,   90.00000, 90.00000, 90.00000);
	CreateDynamicObject(19443, 1667.37561, -975.89868, 686.06012,   90.00000, 90.00000, 0.00000);
	CreateDynamicObject(2434, 1677.79968, -999.17450, 669.99207,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2434, 1676.67566, -999.00781, 669.99408,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2435, 1677.96814, -998.04462, 669.99261,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2435, 1676.67773, -998.07520, 669.99261,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2434, 1677.97009, -997.13013, 669.99408,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2434, 1676.84619, -996.95288, 669.99213,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1674.19604, -989.16309, 669.99103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, 1674.69397, -989.16107, 669.99103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, 1675.19397, -989.16107, 669.99103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, 1675.69397, -989.16107, 669.99103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, 1678.69397, -989.16107, 669.99103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, 1679.19397, -989.16107, 669.99103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, 1679.69397, -989.16107, 669.99103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, 1680.19397, -989.16107, 669.99103,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2000, 1680.32227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1679.82227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1679.32227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1678.82227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1678.32227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1677.82227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1677.32227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1676.82227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1676.32227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1675.82227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1675.32227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1674.82227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2000, 1674.32227, -1003.89697, 669.99237,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1550, 1674.38489, -1003.73480, 670.24860,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1550, 1674.75854, -1003.40149, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1674.24988, -1003.33649, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1674.41284, -1002.94733, 670.12360,   69.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1674.23401, -1002.45795, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1675.05933, -1002.70532, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1678.09033, -999.48700, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1678.35583, -999.07501, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1678.58569, -999.58228, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1674.20776, -989.49445, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1674.75024, -989.43054, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1674.48401, -989.88702, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1674.98157, -989.83002, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1674.27588, -990.34778, 670.05060,   -105.00000, 0.00000, 287.00000);
	CreateDynamicObject(1550, 1675.00476, -1001.74683, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1676.12549, -998.38446, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1675.97021, -997.99341, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1675.61206, -998.46313, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1678.05933, -996.55249, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1677.51147, -996.45801, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1677.94556, -996.01849, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1677.39294, -995.96844, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1676.98633, -996.65375, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1680.32813, -992.60712, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1680.28064, -993.05798, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1679.88989, -992.82013, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1679.92578, -993.28516, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(1550, 1680.38379, -993.54877, 670.24860,   0.00000, 0.00000, 33.00000);
	CreateDynamicObject(19358, 1671.52832, -964.88507, 680.12793,   0.00000, 180.00000, -0.10000);
	CreateDynamicObject(19358, 1672.83105, -966.02869, 680.12793,   0.00000, 180.00000, -90.10000);
	CreateDynamicObject(18757, 1662.66113, -986.51813, 684.55219,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18757, 1662.66309, -984.56311, 684.55219,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1661.19666, -982.16919, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1661.23230, -987.33252, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18757, 1675.89514, -984.62836, 684.55219,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18757, 1675.89709, -986.50043, 684.55219,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1673.35864, -981.99762, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2811, 1673.48254, -987.14429, 682.68890,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1557, 1655.64185, -972.38470, 682.58893,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1557, 1679.05115, -972.45654, 682.58893,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19464, 1685.72986, -987.53156, 672.48907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1685.71204, -981.58417, 672.48907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1685.73914, -976.21100, 672.48907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1685.75281, -970.91187, 672.48907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1670.69458, -971.08954, 672.48907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1670.62061, -976.40570, 672.48907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1670.48389, -981.24969, 672.48907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19464, 1670.47412, -986.92102, 672.48907,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1684.81921, -973.82593, 675.49249,   0.00000, 30.00000, 30.00000);
	CreateDynamicObject(1734, 1684.89453, -978.63745, 675.49249,   0.00000, 30.00000, 30.00000);
	CreateDynamicObject(1734, 1684.82043, -983.63324, 675.49249,   0.00000, 30.00000, 30.00000);
	CreateDynamicObject(1734, 1671.46765, -974.24066, 675.49249,   0.00000, -30.00000, 30.00000);
	CreateDynamicObject(1734, 1671.31140, -978.95215, 675.49249,   0.00000, -30.00000, 30.00000);
	CreateDynamicObject(1734, 1671.28943, -984.09473, 675.49249,   0.00000, -30.00000, 30.00000);
	CreateDynamicObject(1808, 1663.93970, -988.78314, 682.69318,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1734, 1667.30676, -977.16321, 686.48077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1667.30676, -980.16321, 686.48077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1667.30676, -982.66321, 686.48077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1667.30676, -984.66321, 686.48077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1667.30676, -987.16321, 686.48077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2108, 1670.81714, -976.99768, 682.66882,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2108, 1663.92041, -976.95392, 682.66882,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18075, 1667.43665, -982.60559, 685.90179,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 1664.73279, -976.47131, 683.17090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1664.72839, -975.08966, 683.17090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1670.14978, -975.04382, 683.17090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1670.14978, -976.44196, 683.17090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1670.02148, -989.06970, 683.17090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1670.00928, -990.43817, 683.17090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1664.61499, -990.44031, 683.17090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1664.63940, -989.05945, 683.17090,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2773, 1660.72534, -992.72321, 683.17090,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2773, 1673.82996, -992.72601, 683.17090,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1677.05408, -992.97064, 686.48077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1734, 1656.62134, -992.63593, 686.48077,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19458, 1676.31287, -958.97858, 680.32001,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19458, 1676.38159, -964.48083, 682.59680,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19458, 1676.21570, -964.50897, 678.32642,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19458, 1674.84692, -958.82312, 676.11920,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19458, 1676.46021, -964.52179, 674.11139,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(19458, 1675.06433, -958.81409, 671.91522,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(1886, 1662.88867, -972.32507, 685.98969,   0.00000, 0.00000, 40.00000);
	CreateDynamicObject(1886, 1671.76123, -972.41028, 685.98969,   0.00000, 0.00000, -33.00000);*/

    /* (ongamemodeinit) - LSPD stuff */
	eastlobby1 = CreateDynamicObject(1536,253.14941406,110.59960938,1002.21502686,0.00000000,0.00000000,270.00000000,-1,10,-1,100.0); // East lobby door (moves north)
	eastlobby2 = CreateDynamicObject(1536,253.18457031,107.59960938,1002.21502686,0.00000000,0.00000000,90.00000000,-1,10,-1,100.0); // East lobby door (moves south)
	westlobby1 = CreateDynamicObject(1536,239.71582031,116.09179688,1002.21502686,0.00000000,0.00000000,90.00000000,-1,10,-1,100.0); // West lobby door (moves north)
	westlobby2 = CreateDynamicObject(1536,239.67968750,119.09960938,1002.21502686,0.00000000,0.00000000,269.98901367,-1,10,-1,100.0); // West lobby door (moves south)
	locker1 = CreateDynamicObject(1536,267.29980469,112.56640625,1003.61718750,0.00000000,0.00000000,179.99450684,-1,10,-1,100.0); // Locker door (moves east)
	locker2 = CreateDynamicObject(1536,264.29980469,112.52929688,1003.61718750,0.00000000,0.00000000,0.00000000,-1,10,-1,100.0); // Locker door (moves west)
	cctv1 = CreateDynamicObject(1536,264.44921875,115.79980469,1003.61718750,0.00000000,0.00000000,0.00000000,-1,10,-1,100.0); // CCTV door (moves west)
	cctv2 = CreateDynamicObject(1536,267.46875000,115.83691406,1003.61718750,0.00000000,0.00000000,179.99450684,-1,10,-1,100.0); // CCTV door (moves east)
	chief1 = CreateDynamicObject(1536,229.59960938,119.50000000,1009.21875000,0.00000000,0.00000000,0.00000000,-1,10,-1,100.0); // innermost chief's door
	chief2 = CreateDynamicObject(1536,232.59960938,119.53515625,1009.21875000,0.00000000,0.00000000,179.99450684,-1,10,-1,100.0); // outermost chief's door (both move west)

	// New LSPD Interior Doors & Cells
	AkaDoor[0] = CreateDynamicObject(1495,1487.00000000,-1762.42504883,3284.23608398,0.00000000,0.00000000,270.00000000); //object(gen_doorext01) (1)
	AkaDoor[1] = CreateDynamicObject(1495,1483.79003906,-1762.42504883,3284.23608398,0.00000000,0.00000000,270.00000000); //object(gen_doorext01) (2)
	AkaDoor[2] = CreateDynamicObject(1495,1479.85998535,-1758.31994629,3284.23388672,0.00000000,0.00000000,0.00000000); //object(gen_doorext01) (2)
	AkaDoor[3] = CreateDynamicObject(1495,1467.06701660,-1758.31994629,3284.23388672,0.00000000,0.00000000,0.00000000); //object(gen_doorext01) (2)
	AkaCell[0] = CreateDynamicObject(1567,1491.21484375,-1764.90002441,3284.25048828,0.00000000,0.00000000,0.00000000); //object(gen_wardrobe) (2)
	AkaCell[1] = CreateDynamicObject(1567,1494.41210938,-1764.90002441,3284.25048828,0.00000000,0.00000000,0.00000000); //object(gen_wardrobe) (3)
	AkaCell[2] = CreateDynamicObject(1567,1497.61132812,-1764.90002441,3284.25048828,0.00000000,0.00000000,0.00000000); //object(gen_wardrobe) (4)
	AkaCell[3] = CreateDynamicObject(1567,1500.81445312,-1764.90002441,3284.25048828,0.00000000,0.00000000,0.00000000); //object(gen_wardrobe) (6)
	AkaCell[4] = CreateDynamicObject(1567,1500.81994629,-1761.51000977,3284.25048828,0.00000000,0.00000000,0.00000000); //object(gen_wardrobe) (7)
	AkaCell[5] = CreateDynamicObject(1567,1491.22094727,-1761.50000000,3284.25048828,0.00000000,0.00000000,0.00000000); //object(gen_wardrobe) (8)
	AkaCell[6] = CreateDynamicObject(1567,1494.41894531,-1761.51000977,3284.25048828,0.00000000,0.00000000,0.00000000); //object(gen_wardrobe) (9)
	AkaCell[7] = CreateDynamicObject(1567,1497.61999512,-1761.51000977,3284.25048828,0.00000000,0.00000000,0.00000000); //object(gen_wardrobe) (10)

	/* Noose Int Buttons End */
	sasd1A = CreateDynamicObject(1536,2511.65332031,-1697.00976562,561.79223633,0.00000000,0.00000000,0.00000000); //R6
	sasd1B = CreateDynamicObject(1536,2514.67211914,-1696.97485352,561.79223633,0.00000000,0.00000000,180.00000000); //object(gen_doorext15) (2)
 	sasd2A = CreateDynamicObject(1536,2516.87548828,-1697.01525879,561.79223633,0.00000000,0.00000000,0.00000000); //R5
	sasd2B = CreateDynamicObject(1536,2519.89257812,-1696.97509766,561.79223633,0.00000000,0.00000000,179.99450684); //object(gen_doorext15) (4)
	sasd3A = CreateDynamicObject(1536,2522.15600586,-1697.01550293,561.79223633,0.00000000,0.00000000,0.00000000); //R4
	sasd3B = CreateDynamicObject(1536,2525.15893555,-1696.98010254,561.79223633,0.00000000,0.00000000,179.99450684); //object(gen_doorext15) (6)
	sasd4A = CreateDynamicObject(1536,2511.84130859,-1660.08081055,561.79528809,0.00000000,0.00000000,0.00000000); //West
	sasd4B = CreateDynamicObject(1536,2514.81982422,-1660.04650879,561.80004883,0.00000000,0.00000000,180.00000000); //object(gen_doorext15) (1)
	sasd5A = CreateDynamicObject(1536,2522.86059570,-1660.07177734,561.80206299,0.00000000,0.00000000,179.99450684); //East
	sasd5B = CreateDynamicObject(1536,2519.84228516,-1660.10888672,561.80004883,0.00000000,0.00000000,0.00000000); //object(gen_doorext15) (1)

	lspddoor1 = CreateDynamicObject(1569, 246.35150146484, 72.547714233398, 1002.640625, 0.000000, 0.000000, 0.000000); //
	lspddoor2 = CreateDynamicObject(1569, 245.03300476074, 72.568511962891, 1002.640625, 0.000000, 0.000000, 0.000000); //

	FBIPrivate[0] = CreateDynamicObject(1536,299.29986572,-1492.82666016,-28.73300552,0.00000000,0.00000000,270.00000000,1324123, .interiorid = 1); //Private Office Door Left
	FBIPrivate[1] = CreateDynamicObject(1536,299.33737183,-1495.83911133,-28.73300552,0.00000000,0.00000000,90.00000000,1324123, .interiorid = 1); //Private Office Door Right
	FBILobbyLeft = CreateDynamicObject(1536,295.40136719,-1498.43457031,-46.13965225,0.00000000,0.00000000,0.00000000,1324123, .interiorid = 1); //Lobby Door Left
	FBILobbyRight = CreateDynamicObject(1536,302.39355469,-1521.62988281,-46.13965225,0.00000000,0.00000000,179.99450684,1324123, .interiorid = 1); //Lobby Door Right


	//SANews Custom Interior
	SANewsStudioA = CreateDynamicObject(1536,625.60937500,-10.80000019,1106.96081543,0.00000000,0.00000000,270.00000000, .interiorid = 1); //object(gen_doorext15) (1)
	SANewsStudioB = CreateDynamicObject(1536,625.64941406,-13.77000046,1106.96081543,0.00000000,0.00000000,89.99450684, .interiorid = 1); //object(gen_doorext15) (2)

    SANewsPrivateA = CreateDynamicObject(1536,625.60937500,-0.55000001,1106.96081543,0.00000000,0.00000000,269.98901367, .interiorid = 1); //object(gen_doorext15) (4)
	SANewsPrivateB = CreateDynamicObject(1536,625.65002441,-3.54999995,1106.96081543,0.00000000,0.00000000,89.99450684, .interiorid = 1); //object(gen_doorext15) (4)

	SANewsOfficeA = CreateDynamicObject(1536,614.66998291,17.82812500,1106.98425293,0.00000000,0.00000000,0.00000000, .interiorid = 1); //object(gen_doorext15) (3)
	SANewsOfficeB = CreateDynamicObject(1536,617.69000244,17.86899948,1106.98425293,0.00000000,0.00000000,179.99450684, .interiorid = 1); //object(gen_doorext15) (5)

	entrancedoor = CreateDynamicObject(2951,-766.27539062,2536.58691406,10019.5,0.98876953,0.00000000,85.49011230); //object(a51_labdoor) (1)

	blastdoor[0] = CreateDynamicObject(2927,-764.11816406,2568.81445312,10021.5,0.70861816,0.49438477,86.46789551); //object(a51_blastdoorr) (5)
	blastdoor[1] = CreateDynamicObject(2927,-746.02636719,2535.19433594,10021.5,359.74731445,0.00000000,265.24291992); //object(a51_blastdoorr) (1)
	cage = CreateDynamicObject(2930,-773.52050781,2545.62109375,10022.29492188,359.73632812,359.23095703,354.73205566); //object(chinatgate) (1)
	blastdoor[2] = CreateDynamicObject(2927,-765.26171875,2552.31347656,10021.5,0.00000000,0.00000000,87.44567871); //object(a51_blastdoorr) (5)

	ncontrolroomobjects[0] = CreateDynamicObject(3037,-760.61718750,2544.21679688,10024.92480469,0.00000000,0.00000000,355.98999023); //object(warehouse_door2b) (1)
	ncontrolroomobjects[1] = CreateDynamicObject(3037,-759.52246094,2560.88574219,10024.79785156,0.00000000,0.00000000,355.98999023); //object(warehouse_door2b) (2)
	ncontrolroomobjects[2] = CreateDynamicObject(3037,-755.53906250,2538.61035156,10025.02636719,0.00000000,0.00000000,85.99548340); //object(warehouse_door2b) (3)

	CellGates[1] = CreateDynamicObject(10252,-2075.55273438,-191.64550781,992.19836426,0.00000000,0.00000000,0.00000000, .interiorid = 10); //object(china_town_gateb)(3)
 	CellGates[0] = CreateDynamicObject(10252,-2080.28613281,-193.01757812,992.19836426,0.00000000,0.00000000,179.99450684, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[2] = CreateDynamicObject(10252,-2068.00195312,-193.01757812,992.19836426,0.00000000,0.00000000,179.99450684, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[3] = CreateDynamicObject(10252,-2063.56738281,-191.64550781,992.19836426,0.00000000,0.00000000,0.00000000, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[4] = CreateDynamicObject(10252,-2055.99511719,-193.01757812,992.19836426,0.00000000,0.00000000,179.99450684, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[5] = CreateDynamicObject(10252,-2052.22460938,-191.64550781,992.19836426,0.00000000,0.00000000,0.00000000, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[11] = CreateDynamicObject(10252,-2084.99902344,-207.03710938,992.19836426,0.00000000,0.00000000,179.99450684, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[10] = CreateDynamicObject(10252,-2081.52539062,-205.66894531,992.19836426,0.00000000,0.00000000,0.00000000, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[8] = CreateDynamicObject(10252,-2069.53710938,-205.66894531,992.19836426,0.00000000,0.00000000,0.00000000, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[9] = CreateDynamicObject(10252,-2074.00585938,-207.03710938,992.19836426,0.00000000,0.00000000,179.99450684, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[6] = CreateDynamicObject(10252,-2057.59765625,-205.66894531,992.19836426,0.00000000,0.00000000,0.00000000, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[7] = CreateDynamicObject(10252,-2061.96289062,-207.03710938,992.19836426,0.00000000,0.00000000,179.99450684, .interiorid = 10); //object(china_town_gateb)(3)
    BlastDoors[1] = CreateDynamicObject(2952,-2088.76562500,-211.33984375,994.66918945,0.00000000,0.00000000,0.00000000); //object(kmb_gimpdoor)(1)
    BlastDoors[6] = CreateDynamicObject(2952,-2088.76562500,-209.21093750,994.66918945,0.00000000,0.00000000,0.00000000); //object(kmb_gimpdoor)(2)
    BlastDoors[0] = CreateDynamicObject(2952,-2095.10156250,-203.91210938,994.66918945,0.00000000,0.00000000,90.00000000); //prisongate1
    BlastDoors[2] = CreateDynamicObject(2952,-2048.29296875,-205.54394531,990.45825195,0.00000000,0.00000000,0.00000000); //object(kmb_gimpdoor)(1)
    BlastDoors[7] = CreateDynamicObject(2952,-2048.29296875,-207.67382812,990.45825195,0.00000000,0.00000000,0.00000000); //object(kmb_gimpdoor)(1)
    BlastDoors[3] = CreateDynamicObject(2952,-2041.79785156,-195.64550781,990.45825195,0.00000000,0.00000000,179.99450684); //object(kmb_gimpdoor)(1)
    BlastDoors[8] = CreateDynamicObject(2952,-2041.79687500,-197.77246094,990.45825195,0.00000000,0.00000000,179.99450684); //object(kmb_gimpdoor)(1)
    BlastDoors[4] = CreateDynamicObject(2952,-2041.78613281,-211.28515625,984.02539062,0.00000000,0.00000000,0.00000000); //object(kmb_gimpdoor)(1)
    BlastDoors[9] = CreateDynamicObject(2952,-2041.78808594,-209.15917969,984.02539062,0.00000000,0.00000000,0.00000000); //object(kmb_gimpdoor)(1)
    BlastDoors[5] = CreateDynamicObject(2952,-2053.92187500,-205.46679688,977.75732422,0.00000000,0.00000000,0.00000000); //object(kmb_gimpdoor)(1)
    BlastDoors[10] = CreateDynamicObject(2952,-2053.92187500,-207.59570312,977.75732422,0.00000000,0.00000000,0.00000000); //object(kmb_gimpdoor)(1)
    BlastDoors[11] = CreateDynamicObject(2952,-2050.50097656,-205.82617188,984.02539062,0.00000000,0.00000000,90.00000000); //object(kmb_gimpdoor)(1)
    BlastDoors[16] = CreateDynamicObject(1569, -2057.9, -144.905, 987.24 ,0, 0.00000000, 270.0);

	SFPDObject[0] =	CreateDynamicObject(976,-1636.02539062,701.49707031,19994.54101562,0.00000000,0.00000000,90.00000000, .interiorid = 3); //object(phils_compnd_gate) (1)
	SFPDObject[1] =	CreateDynamicObject(976,-1635.99414062,696.53320312,19994.55078125,0.00000000,0.00000000,270.00000000, .interiorid = 3); //object(phils_compnd_gate) (2)
	SFPDObject[2] =	CreateDynamicObject(1569,-1625.28808594,712.56250000,19994.85937500,0.00000000,0.00000000,179.99450684, .interiorid = 3); //object(adam_v_door) (2)
	SFPDObject[3] =	CreateDynamicObject(1569,-1613.92871094,681.78125000,19989.05468750,0.00000000,0.00000000,90.00000000, .interiorid = 3); //object(adam_v_door) (4)
	SFPDObject[4] =	CreateDynamicObject(1569,-1634.79492188,712.56250000,19994.85937500,0.00000000,0.00000000,0.00000000, .interiorid = 3); //object(adam_v_door) (7)

	// Gym dynamic objects (bmx parkour)
	BikeParkourObjects[0] = CreateDynamicObject(2669,2848.1015625,-2243.1552734,99.0883789,0.0000000,0.0000000,90.0000000, .worldid = 5, .streamdistance = 300); //object(cj_chris_crate) (1)
	//BikeParkourObjects[1] = CreateDynamicObject(1381,2847.4970703,-2243.1191406,4901.4877930,0.0000000,0.0000000,69.7851562, .worldid = -1, .streamdistance = 300); //object(magnocrane_04) (1)

    MoveDynamicObject(BikeParkourObjects[0], 2848.1015625, -2238.1552734, 99.0883789, 0.5, 0.0, 0.0, 90.0);
	//MoveDynamicObject(BikeParkourObjects[1], 2847.4970703, -2243.1191406, 4901.4877930, 0.5, 0.0, 0.0, 69.7851562);

	gFerrisWheel = CreateObject( 18877, gFerrisOrigin[0], gFerrisOrigin[1], gFerrisOrigin[2],
	  							 0.0, 0.0, -270.0, 300.0 );
	CreateObject( 18878, gFerrisOrigin[0], gFerrisOrigin[1], gFerrisOrigin[2],
	  							 0.0, 0.0, -270.0, 300.0 );
 	for(new x;x<10;x++)
    {
        gFerrisCages[x] = CreateObject( 19316, gFerrisOrigin[0], gFerrisOrigin[1], gFerrisOrigin[2],
	  							 0.0, 0.0, -270.0, 300.0 );

        AttachObjectToObject( gFerrisCages[x], gFerrisWheel,
							  gFerrisCageOffsets[x][0],
							  gFerrisCageOffsets[x][1],
	  						  gFerrisCageOffsets[x][2],
							  0.0, 0.0, -270.0, 0 );
	}

	print("[Streamer] Dynamic Objects has been loaded.");

	return 1;
}
