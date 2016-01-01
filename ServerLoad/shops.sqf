if(isServer)then
{
INV_itemstocks =
[
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1
];
 
publicvariable "INV_itemstocks";
};
 
INV_itemmaxstocks =
[
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1
];

//1. Shop items
_emptyshop = [];
//2. Fuel Shop
_fs = ["kanister","Fuelline","reparaturkit","tcgmp","doshd","gdar","bjerk","wulf"];
//3. Fuel Shop 2
//_fs2 =["fishingpole","tcgmp","rawcow","boar","doshd","gdar","bjerk","wulf","Huntingrifle","5x_22_LR_17_HMR","MBG_Compound_Bow","MBG_Arrow_N","tcg_mossberg","tcg_combat","Saiga12K","8Rnd_B_Saiga12_Pellets","8Rnd_B_Beneli_Pellets","KPFS_KarS","KPFS_10Rnd_762x39_SKS"];
//4. Item Shop
_is = ["apple","straw","getreide","blowfish","mackerel","herring","perch","trout","walleye","bass","boar","lighter"];
//5. Copbasefood
_cf = ["wulf","bjerk","tcgmp","doshd"];
//6. Alcohol shop
_pub = ["beer","beer2","vodka","smirnoff","wiskey","wine","wine2"];
//7.Pistol Shop
//_gss = ["GunrackUS_EP1","RH_g19t","RH_17Rnd_9x19_g17","RH_p38","RH_8Rnd_9x19_p38","RH_tt33","RH_8Rnd_762_tt33","RH_browninghp","RH_13Rnd_9x19_bhp","RH_uspm","RH_12Rnd_45cal_usp","RH_usp","RH_15Rnd_9x19_usp","RH_mk2","RH_10Rnd_22LR_mk2","RH_m93r","RH_20Rnd_9x19_M93","RH_m9c","Rnd_9x19_M9","RH_anacg","RH_6Rnd_44_Mag","RH_python","RH_6Rnd_357_Mag","RH_g17","RH_19Rnd_9x19_g18","RH_m1911old","RH_8Rnd_45cal_m1911","RH_bull","RH_6Rnd_44_Mag","C1987_P99_black","15Rnd_9x19_p99"];
//8
_ass = ["RH_m9sd","15Rnd_9x19_M9SD","RH_g17sd","RH_17Rnd_9x19_g17SD","RH_m1911sd","RH_8Rnd_45cal_m1911","RH_mk22sd","RH_8Rnd_9x19_Mksd","RH_uzisd","RH_9mm_32RND_SD_Mag","RH_mp5sd6eot_ass","30rnd_9x19_MP5SD","RH_mk12mod1sd_ass","20Rnd_556x45_Stanag","C1987_P99_black_sd","15Rnd_9x19_p99_sd","VSS_vintorez_ASS","20Rnd_9x39_SP5_VSS"];
//9
_mgs = ["RH_mk22","RH_8Rnd_9x19_Mk","KPFS_MP2","KPFS_32Rnd_MP2","RH_muzi","RH_32rnd_9x19_Muzi","RH_uzi","RH_9mm_32RND_Mag","RH_tmpeot","30Rnd_9x19_MP5","RH_fmg9","RH_9mm_32RND_Mag","GPS","NVGoggles","CHRYSLER_B_limmo","tcg_taurus_security", "ilpd_ags_cvpi"];
//10. Equiptment shop
_es = ["Binocular","GPS","NVGoggles","hideout","fishingpole"];
//gocart
//_gc = ["Da_kart"];
//11. Car Upgrades
_cu = ["supgrade1","supgrade2"];
//12. Car Shop
_cs1 = ["MMT_USMC","Volha_1_TK_CIV_EP1","S1203_TK_CIV_EP1","civic","Car_hatchback","VWGolf","Car_Sedan","SkodaBlue","Skodared","lada1","lada2","LandRover_TK_CIV_EP1","datsun1_civil_3_open","UAZ_Unarmed_TK_CIV_EP1","oldtruck","oltruc3","Tractor"];
//13
_cs2 = ["MMT_USMC","tractor","oldtruc2","oldtruc2a"];
//14. Sports Car Shop
_sc1 = ["440cuda","roadrunner","roadrunner2","CHEVROLET_CAMARO_SS_396","chevrolet_chevelle","cuda","hemicuda","cd71hm","barcuda","fury","FORD_MUSTANG_SHELBY_COBRA","FORD_MUSTANG_SHELBY_COBRA1","FORD_MUSTANG_SHELBY_COBRA2","FORD_MUSTANG_SHELBY_COBRA3","FORD_GT","monaco_grey","monaco_blue","monaco_white","monaco_green","monaco_red","challenger_grey","challenger_blue","challenger_yellow","challenger_pink","challenger_white","challenger_green","challenger_red","challenger_orange"];
//15
_sc2 = ["cl_charger","cl_charger_black","il_charger_blue","il_charger_black","il_charger_red","il_charger_orange","MAZDA_RX_7","MAZDA_RX_71","MAZDA_RX_72","MAZDA_RX_73","MAZDA_RX_75","MAZDA_RX_74","MAZDA_MAZDASPEED_3"];
//16
_sc3 = ["CHRYSLER_300","RENAULT_CLIO_SPORT_V6","SUBARU_IMPREZA_WRX_STI_AWD","SUBARU_IMPREZA_STI_AWD","FIAT_PUNTO","ALFA_ROMEO_BRERA","NISSAN_240SX_SE","PONTIAC_GTO_6"];
//17
_sc4 = ["MustangGTRyellow_MLOD","Convertible_MLOD","FORD_SHELBY_GT","CORVETTE_Z06","INFINITI_G35","MERCEDES_BENZ_CLK_500","MERCEDES_BENZ_SL_65_AMG","JAGUAR_XK","CADILLAC_CTS"];
//18
_sc5 = ["CL_PORSCHE_997","CL_LAMBORGHINI_GT3","KOENIGSEGG_CCX","KOENIGSEGG_CCX1","KOENIGSEGG_CCX2","KOENIGSEGG_CCX3","MCLAREN_F1","MERCEDES_BENZ_SLR","PORSCHE_997_GT3_RSR","PORSCHE_911_TURBO","PORSCHE_911_GT3_RS","LAMBORGHINI_MURCIELAGO","LAMBORGHINI_REVENTON","LAMBORGHINI_GALLARDO","MASERATI_MC12","JAGUAR_XK","BUGATTI_VEYRON","AUDI_TT_QUATTRO_S_LINE","AUDI_FSI_LE_MANS","PAGANI_ZONDA_F","ASTON_MARTIN_DB9"];
//19
_sc6 = ["NISSAN_GTR_SPECV","NISSAN_GTR_SPECV1","NISSAN_GTR_SPECV2","NISSAN_GTR_SPECV3","NISSAN_350Z","NISSAN_370Z","NISSAN_370Z1","NISSAN_370Z2","NISSAN_370Z3","NISSAN_370Z4","NISSAN_SKYLINE_GT_R_Z","NISSAN_SKYLINE_GT_R_Z1","NISSAN_SKYLINE_GT_R_Z2","NISSAN_SKYLINE_GT_R_Z3"];
//20
_sc7 = ["350z_red","350z_kiwi","350z_black","350z_silver","350z_green","350z_blue","350z_gold","350z_white","350z_pink","350z_mod","350z_ruben","350z_v","350z_yellow"];
//21
_sc8 = ["tcg_taurus_civ1","tcg_taurus_civ2","tcg_taurus_civ3","tcg_taurus_civ4","tcg_taurus_civ5","tcg_taurus_civ6","il_fordcv_white","il_fordcv_grey","il_fordcv_black","il_fordcv_darkblue","il_fordcv_maroon","il_fordcv_sandstone"];
//22
_sc9 = ["m5_red","m5_grey","m5_blue","m5_c_green","m5_c_black","m5_c_white","BMW_M6","BMW_M3_GTR","BMW_M3","BMW_M3_RALLY","BMW_135I","tcg_bmw_m3","tcg_bmw_m3_hamwhite","tcg_bmw_m3_c1","tcg_bmw_m3_c3","tcg_bmw_m3_c4","tcg_bmw_m3_c5","tcg_bmw_m3_c6","tcg_bmw_m3_c7","tcg_bmw_m3_c8","tcg_bmw_m3_c9"];
//23. Tahoe shop
_tahoe = ["tahoe_grey","tahoe_darkblue","tahoe_blue","tahoe_yellow","tahoe_white","tahoe_green","tahoe_black","tahoe_orange","tahoe_pink","tahoe_darkblue_cb","tahoe_grey_cb","tahoe_blue_cb","tahoe_yellow_cb","tahoe_pink_cb","tahoe_white_cb","tahoe_green_cb","tahoe_black_cb","tahoe_orange_cb"];
//24. Pickup Shop - 
_ps = ["il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_white","tcg_suburban_red","tcg_suburban_yellow","tcg_suburban_grey","tcg_suburban_white","tcg_suburban_green","suburban_blue","suburban_black","suburban_maroon","suburban_sandstone","suburban_grey","suburban_white"];
//25. taxi shop
_tx = ["GLT_M300_LT","GLT_M300_ST","il_fordcv_taxi","tcg_taurus_taxi"];
//26. motorcycle shop
_mbs = ["tcg_hrly","tcg_hrly_coco","tcg_hrly_demon","tcg_hrly_limited","tcg_hrly_orig1","tcg_hrly_gay","tcg_hrly_metal","tcg_hrly_orig2","tcg_hrly_white","tcg_hrly_blue","tcg_hrly_red","Old_moto_TK_Civ_EP1","TT650_TK_CIV_EP1","TT650_Ins","TT650_Civ","ATV_CZ_EP1"];
//27
_qbs = ["cl_quaddescammo","cl_green","cl_quadred","cl_quadsaftysteel","cl_quadyellow","cl_blue2","cl_chark","cl_dirtyred"];
//28
_qbss = ["tcg_aprilia_blue","tcg_aprilia_yellow","tcg_aprilia_white","tcg_aprilia_green","tcg_aprilia_red","tcg_aprilia_black","tcg_aprilia_black_2","tcg_aprilia_blue_2","tcg_aprilia_blue_4","tcg_aprilia_blue_5","tcg_aprilia_cyan","tcg_aprilia_green_3","tcg_aprilia_orange","tcg_aprilia_red_1","tcg_aprilia_red_2","tcg_aprilia_white_2","tcg_aprilia_yellow_2"];
//29. Truck Shop
_ts = ["cl_del_mackr","cl_trucktest_mackr","cl_flatbed_mackr","Ural_TK_CIV_EP1","V3S_Open_TK_CIV_EP1","V3S_TK_EP1","UralOpen_CDF","KamazOpen","Ural_CDF","schoolbus","Ikarus_TK_CIV_EP1","Ikarus","cooter","il_towtruck","lockpick","roadcone"];
//30. Sport Truck Shops
_sts = [
"raptor_black",
"raptor_grey",
"raptor_blue",
"raptor_yellow",
"raptor_pink",
"raptor_white",
"raptor_green",
"raptor_red",
"raptor_orange",
"Cherokee_black",
"Cherokee_grey",
"Cherokee_blue",
"Cherokee_yellow",
"Cherokee_pink",
"Cherokee_white",
"Cherokee_green",
"Cherokee_red",
"Cherokee_orange",
"rangerover_black",
"rangerover_blue",
"rangerover_yellow",
"rangerover_pink",
"rangerover_white", 
"rangerover_green",
"rangerover_red",
"rangerover_orange",
"s331_black",
"s331_grey",
"s331_blue",
"s331_yellow",
"s331_pink",
"s331_white",
"s331_green",
"s331_red",
"s331_orange",
"h1_black",
"h1_grey",
"h1_blue",
"h1_yellow",
"h1_pink",
"h1_white",
"h1_green",
"h1_red",
"transit_pink"
];

//31. Air Shop
_as = ["V3S_Refuel_TK_GUE_EP1","V3S_Repair_TK_GUE_EP1","An2_1_TK_CIV_EP1","An2_2_TK_CIV_EP1","USEC_MAULE_M7_STD","gnt_piperwii","GNT_C185F","GNT_C185E","GNT_C185R","GNT_C185C","GNT_C185"];
//32
_assa = ["kyo_ultralight","AH6X_EP1","KA137_PMC","CSJ_Gyroc","Mi17_Civilian","bd5j_civil_3","bd5j_civil_2","bd5j","GazelleUN","Gazelle","Gazelle1","Gazelle3","tcg_bell206_3","tcg_bell206_4","tcg_bell206_1","tcg_bell206_2","tcg_bell206_5","tcg_bell206", "MH6J_EP1"];
//33
_asc = ["can_c130","airnz_C130","luf_c130","qantas_C130","A320MPA"];
//34. Scuba Shop
_sb = ["fishingpole","tcg_wrun","tcg_wave_red","tcg_wave_black","tcg_wave_red2","tcg_wave_sky","tcg_wave_red3"];
//35. Boat Shop
_bs = ["fishingpole","tcg_wrun","tcg_wave_red","tcg_wave_black","tcg_wave_red2","tcg_wave_sky","tcg_wave_red3","cl_trawler_fishing_boat","cl_sport_fishing_boat","Fishing_boat","cl_container_boat","cl_inflatable","PBX","Zodiac","Smallboat_1","Smallboat_2","lcu"];
//36
_bsp = ["fishingpole","GNT_C185F","GNT_C185E","PBX","Zodiac","tcg_wrun","tcg_wave_red","tcg_wave_black","tcg_wave_red2","tcg_wave_sky","tcg_wave_red3"];
//37. Terror Boat Shop
_bt = ["fishingpole","PBX", "Zodiac","cl_trawler_fishing_boat","cl_container_boat","cl_sport_fishing_boat","Fishing_boat","cl_inflatable","lcu","JMSDF_US2","JMSDF_US1"];
//38. Jewelry shop
_js = ["Diamond"];
//39. insurance
_ins = ["bankversicherung"];
//41. Resource Shop
_rs = ["gold","iron","copper","diamond rock","Sand"];
//42. Jackos Cheesburgers
_gds = ["bread","straw"];
//43
_gds1 = ["supgrade1","supgrade2","reparaturkit"];
//44
_gds3 = ["roadblock","glt_roadsign_octagon","bargate","SearchLight_UN_EP1","roadcone","bunkersmall","FlagCarrierUSA","FlagCarrierRU","FlagCarrierTakistanKingdom_EP1","FlagCarrierCzechRepublic_EP1","FlagCarrierGermany_EP1","FlagCarrierBAF"];
//45. Oil Trader/Seller
_os = ["OilBarrel","Oil"];
//46. Whale Sale
_ws = ["Whale"];
//47. Cocaine Sell
_dsc = ["cocaine","cocaineseed"];
//48. Marijuana Sell
_dsm = ["marijuana","marijuanaseed"];
//49. LSD Sell
_dsl = ["lsd"];
//50. Heroin Sell
_dsh = ["heroin","heroinseed"];
//51
_psc = ["medikit","pharm","GymMem1","GymMem2","cl_wheelchair"];
//52
_hsc = ["eyes","brain","liver","heart","kidney","bones","teeth"];
//53
_msc = ["meth","GymMem3","GymMem4"];

//54
_copbasic = 
[
"x26",
"x26_Mag",
"tcg_remington",
"8Rnd_B_Beneli_74Slug",
"spikestrip",
"Itembag",
"Donut",
"medikit",
"handy",
"Binocular",
"NVGoggles",
"GPS",
"supgrade1",
"supgrade2",
"reparaturkit"
];

//55
_coptraffic =
[
"roadblock",
"glt_roadsign_octagon",
"bargate",
"SearchLight_UN_EP1",
"roadcone",
"bunkersmall",
"il_barrier",
"roadbarrierlong",
"roadbarriersmall",
"bigbagfence",
"bigbagfenceRound"
];

//56
_copuntrained =
[
"x26",
"x26_Mag",
"tcg_remington",
"8Rnd_B_Beneli_74Slug",
"ilpd_beat_f101"
];

//57
_coppo1 =
[
"x26",
"x26_Mag",
"tcg_remington",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_Pellets",
"ilpd_beat_f101"
];

//58
_coppo2 = 
[
"x26",
"x26_Mag",
"tcg_remington",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_Pellets",
"ilpd_beat_f101",
"tcg_taurus"
];

//59
_coppo3 =
[
"x26",
"x26_Mag",
"RH_hk416aim",
"30Rnd_556x45_Stanag",
"ilpd_beat_f101",
"il_charger_pd"
];

//60
_copcpl = 
[
"RH_hk416aim",
"30Rnd_556x45_Stanag",
"ilpd_beat_f101",
"ilpd_slick_b40_pb",
"ilpd_charger_white"
];

//61
_copsgt =
[
"RH_hk416aim",
"RH_m16a4eotech",
"30Rnd_556x45_Stanag",
"ilpd_beat_f101",
"ilpd_slick_b40_PBG",
"tahoe_pd"
];

//62
_copdeputy =
[
"supgrade3",
"supgrade4",
"supgrade5",
"M1014",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_Pellets",
"RH_m16a4eotech",
"30Rnd_556x45_Stanag",
"100Rnd_556x45_BetaCMag",
"M24",
"5Rnd_762x51_M24",
"ilpd_beat_f101_sh",
"tcg_taurus_shpb",
"tahoe_sh",
"suburban_pd_sheriff",
"RH_acrbaim_pmc",
"pd_cvpi"
];

//63
_copsheriff =
[
"supgrade3",
"supgrade4",
"supgrade5",
"Bait_Kit",
"M16A2",
"RH_M16a1",
"M24",
"5Rnd_762x51_M24",
"RH_m16a4eotech",
"ilpd_Traffic_sandstone",
"30Rnd_556x45_Stanag",
"100Rnd_556x45_BetaCMag",
"ilpd_beat_f101_sh",
"ilpd_slick_f220_PBG",
"tcg_taurus_shpb",
"tahoe_sh",
"suburban_pd_sheriff",
"il_f350sheriff",
"ilpd_unmarked_white",
"ilpd_unmarked_black",
"ilpd_unmarked_sandstone",
"ilpd_unmarked_maroon",
"ilpd_unmarked_darkblue",
"ilpd_unmarked_grey",
"pd_cvpi"
];

//64
_coplt = 
[
"supgrade3",
"supgrade4",
"supgrade5",
"Bait_Kit",
"RH_hk416aim",
"RH_m16a4eotech",
"RH_m16a4aim",
"RH_M4a1eotech_lt",
"RH_m4macog",
"30Rnd_556x45_Stanag",
"100Rnd_556x45_BetaCMag",
"ilpd_beat_f101",
"ilpd_slick_b40_PBG",
"tahoe_pd",
"tahoe_uc_white",
"tahoe_uc_1_grey",
"ilpd_scu_white",
"blackuc",
"ilpd_unmarked_white",
"ilpd_unmarked_black",
"ilpd_unmarked_sandstone",
"ilpd_unmarked_maroon",
"ilpd_unmarked_darkblue",
"ilpd_unmarked_grey"
];

//65
_copcpt = 
[
"supgrade3",
"supgrade4",
"supgrade5",
"Bait_Kit",
"RH_hk416aim",
"RH_m16a4eotech",
"RH_m4eotech",
"RH_m4aim",
"SCAR_L_CQC_Holo",
"30Rnd_556x45_Stanag",
"100Rnd_556x45_BetaCMag",
"ilpd_scu_white",
"ilpd_charger_black",
"ilpd_scu_maroon",
"tahoe_uc_1_maroon",
"ilpd_beat_f101",
"ilpd_slick_b40_PBG",
"tahoe_pd",
"tahoe_white_cb",
"tahoe_uc_1_blue",
"tcg_taurus_uc"
];

//66
_copchief =
[
"supgrade3",
"supgrade4",
"supgrade5",
"Bait_Kit",
"RH_hk416aim",
"RH_M16a1",
"RH_m16a4eotech",
"RH_m4eotech",
"SCAR_L_CQC_Holo",
"30Rnd_556x45_Stanag",
"100Rnd_556x45_BetaCMag",
"tcg_taurus_uc",
"ilpd_charger_black",
"ilpd_traffic_t101",
"ilpd_Traffic_black",
"ilpd_Traffic_white",
"ilpd_unmarked_black",
"ilpd_scu_black",
"ilpd_scu_grey",
"ilpd_scu_darkblue",
"ilpd_scu_maroon",
"tahoe_uc_1_black",
"tahoe_uc_1_grey",
"tahoe_uc_1_blue",
"tahoe_uc_maroon",
"tahoe_uc_1_maroon",
"tahoe_uc_1_green",
"suburban_pd_black",
"ilpd_beat_f101",
"ilpd_slick_b40_PBG",
"tahoe_pd"
];

//67
//_devcop = 
[
"M1030_US_DES_EP1",
"tcg_hrlycop",
"ilpd_beat_f101_sh",
"pd_cvpi",
"pd_cvpi_hub",
"ilpd_slick_f220_npb",
"ilpd_slick_f220_PBG",
"tcg_taurus_shpb",
"tcg_taurus_sh",
"suburban_pd_sheriff",
"tahoe_sh",
"il_f350sheriff",
"RH_M16a1",
"20Rnd_556x45_Stanag",
"RH_m14",
"20Rnd_762x51_DMR",
"M1030_US_DES_EP1",
"ilpd_beat_f101",
"ilpd_slick_b40_npb",
"ilpd_slick_b40_PBG",
"ilpd_slick_b40_pb",
"il_charger_pd",
"ilpd_charger_white",
"tcg_taurus_pb_2",
"tcg_taurus",
"tcg_taurus_wopb",
"suburban_pd",
"tahoe_pd",
"vil_lublin_AMBU",
"jailbus",
"Volha_1_TK_CIV_EP1",
"Volha_2_TK_CIV_EP1",
"Car_hatchback",
"LandRover_TK_CIV_EP1",
"civic",
"il_fordcv_taxi",
"tcg_taurus_taxi",
"tcg_taurus_uc",
"tahoe_uc_1_black",
"tahoe_uc_1_grey",
"tahoe_uc_1_blue",
"tahoe_uc_1_green",
"tahoe_uc_1_white",
"tahoe_uc_1_maroon",
"ilpd_unmarked_black",
"ilpd_unmarked_sandstone",
"ilpd_unmarked_maroon",
"ilpd_unmarked_darkblue",
"ilpd_unmarked_grey",
"ArmoredSUV_PMC",
"SCAR_L_CQC_Holo",
"100Rnd_556x45_BetaCMag"
];

//68
_copk9 = 
[
"RH_m4aim",
"RH_m16a4acog",
"RH_hk416aim",
"30Rnd_556x45_Stanag",
"suburban_pd_k9",
"suburban_pd_stealth"
];

//69
_copair = 
[
"MH6J_EP1",
"HH65C",
"OH58g",
"tcg_police_bell206",
"UH60M_EP1"
];

//70
_copairweapon = 
[
"RH_m9",
"Rnd_9x19_M9"
];

//71
_copswat =
[
"SCAR_L_CQC_Holo",
"M4A3_CCO_EP1",
"RH_m4maim",
"RH_M4meotech",
"RH_m4macog",
"100Rnd_556x45_BetaCMag",
"30Rnd_556x45_Stanag",
"M1014",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_Pellets",
"RH_kriss",
"RH_45ACP_30Rnd_Mag",
"DMR",
"20Rnd_762x51_DMR",
"SWAT",
"RH_m9",
"Rnd_9x19_M9",
"Stinger",
"Stinger_mag",
"M32_EP1",
"6Rnd_Smoke_M203",
"BAF_LRR_scoped",
"5Rnd_86x70_L115A1"
];

//72
_copswatvehicle =
[
"ilpd_scu_black",
"ilf350swat",
"tahoe_uc_1_black",
"il_bearcat",
"suburban_pd_black"
];

//73
_copcoastguard =
[
"fishingpole",
"PRACS_RB90",
"JFH_USCG_ZODIAC",
"JFH_USCG_RHIB",
"RHIB2Turret",
"tcg_wrun",
"GNTFSF"
];

//74
_copvip = 
[
"supgrade3",
"supgrade4",
"supgrade5",
"RH_p90sdeot",
"RH_p90sdaim",
"RH_57x28mm_50RND_SD_Mag",
"RH_57x28mm_50RND_Mag",
"MakarovSD",
"8Rnd_9x18_MakarovSD",
"RH_masbaim",
"100Rnd_556x45_BetaCMag",
"m5_pd_traffic"
];

//75
_undercover = 
[
"tahoe_uc_black",
"ilpd_unmarked_darkblue",
"ilpd_unmarked_sandstone",
"tahoe_uc_1_black",
"tahoe_uc_1_white",
"tahoe_uc_1_maroon",
"tahoe_uc_1_blue",
"tahoe_uc_black",
"ilpd_unmarked_black",
"ilpd_unmarked_sandstone",
"ilpd_unmarked_maroon",
"ilpd_unmarked_darkblue",
"ilpd_unmarked_grey",
"tcg_taurus_pb_2",
"tcg_taurus",
"tcg_taurus_wopb",
"tcg_taurus_taxi",
"tcg_taurus_uc",
"Cherokee_black",
"f350_black",
"f350_blue",
"f350_pink",
"f350_white",
"f350_red",
"tcg_suburban_red",
"tcg_suburban_yellow",
"tcg_suburban_grey",
"tcg_suburban_white",
"tcg_suburban_green",
"RH_m4aim",
"RH_m16a4acog",
"RH_hk416aim",
"30Rnd_556x45_Stanag",
"100Rnd_556x45_BetaCMag",
"RH_g19t",
"RH_17Rnd_9x19_g17",
"RH_p38","RH_8Rnd_9x19_p38",
"RH_tt33","RH_8Rnd_762_tt33",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_uspm",
"RH_12Rnd_45cal_usp",
"RH_usp",
"RH_15Rnd_9x19_usp",    
"lockpick",
"ziptie",
"reparaturkit",
"spikestrip",
"Itembag",
"Donut",
"medikit",
"handy",
"Binocular",
"NVGoggles",
"GPS",
"supgrade1",
"supgrade2",
"supgrade3",
"supgrade4",
"supgrade5"
];

//76
_terrorshop = 
[ 
"NVGoggles",
"codeb",
"safehack",
"RH_oc14",
"RH_20Rnd_9x39_SP6_mag",
"RH_rk95",
"RH_aks47",
"RH_aks47b",
"AK_47_S",
"RH_akm",
"30Rnd_762x39_AK47",
"RH_m14maf",
"20Rnd_762x51_DMR",
"RPG18",
"RPG18_mag",
"V3S_Reammo_TK_GUE_EP1"
];

//77
_shady =
[
"lockpick",
"ziptie",
"burgl",
"lighter"
];

//82
_Donate = ["reparaturkit","medikit","supgrade1","LeeEnfieldmaf","x_303","donateRH_deagle","donateRH_browninghp","donateRH_mk22","donateRH_usp","donateRH_m1911","donateRH_m9","donateRH_g17","donateRH_g18","donateRH_g19","donateRH_mk2","donateRH_tt33","donateRH_vz61","donateRH_tec9","donateRH_muzi","donateRH_ppk","donateRH_p38","donateRH_p226","donateRH_anac","donateRH_bull","donateRH_python","donateRH_7Rnd_50_AE","donateRH_13Rnd_9x19_bhp","donateRH_8Rnd_9x19_Mk","donateRH_15Rnd_9x19_usp","donateRH_8Rnd_45cal_m1911","donate15Rnd_9x19_M9","donateRH_17Rnd_9x19_g17","donateRH_33Rnd_9x19_g18","donateRH_17Rnd_9x19_g19","donateRH_10Rnd_22LR_mk2","donateRH_8Rnd_762_tt33","donateRH_20Rnd_32cal_vz61","donateRH_30Rnd_9x19_tec","donateRH_32Rnd_9x19_Muzi","donateRH_7Rnd_32cal_ppk","donateRH_8Rnd_9x19_p38","donateRH_15Rnd_9x19_uspp","donateRH_6Rnd_43_Mag","donateRH_6Rnd_44_Mag","donateRH_6Rnd_357_Mag"];

//83
_Donate2 = ["supgrade2","donateRH_ak47","donateRH_aks74u","donateRH_ak74","donateRH_ak103","donateRH_m4","donateRH_m4m","donateRH_m16a1","donateRH_mp5a4","donateRH_mp5k","donateRH_uzi","donate30Rnd_762x39_AK47","donate30Rnd_545x39_AK","donate30Rnd_9x19_MP5","donateRH_9mm_32RND_Mag","donate30Rnd_556x45_Stanag","DODGE_VIPER_SRT10","CORVETTE_Z06"];

//84
_Donate3 = ["supgrade3","IRAfal","20Rnd_762x51_FNFAL","donateRH_mk22vsd","donateRH_uspsd","donateRH_m1911sd","donateRH_m9sd","donateRH_m9csd","donateRH_g19t","donateRH_m1911old","donateRH_m93r","donateRH_anacg","donateRH_p226s","donateRH_Deaglemzb","donateRH_8Rnd_9x19_Mksd","donateRH_8Rnd_45cal_m1911sd","donate15Rnd_9x19_M9SD","donateRH_15Rnd_9x19_uspsd","donateRH_17Rnd_9x19_g19","donateRH_15Rnd_9x19_uspp","donateRH_8Rnd_45cal_m1911","donateRH_6Rnd_43_Mag","donateRH_7Rnd_50_AE","m5_c_bgreen","m5_c_dblue","m5_c_lblue","m5_c_orange","m5_c_yellow"];

//85
_Donate4 = ["supgrade4","donateRH_mp5a4aim","donateRH_mp5a4eot","donateRH_mp5a4rfx","donateRH_mp5sd6","donateRH_mp5sd6aim","donateRH_mp5sd6eot","donateRH_mp5sd6RFX","donateRH_kriss","donateRH_krissaim","donateRH_krisseot","donateRH_krissRFX","donateRH_krisssd","donateRH_krisssdaim","donateRH_krisssdeot","donateRH_krisssdRFX","donateRH_uzisd","donateRH_tmp","donateRH_tmpaim","donateRH_tmpeot","donateRH_tmpsd","donateRH_tmpsdaim","donateRH_tmpsdeot","donateRH_mp7","donateRH_mp7aim","donateRH_mp7eot","donateRH_mp7RFX","donateRH_mp7sd","donateRH_mp7sdaim","donateRH_mp7sdeot","donate30Rnd_9x19_MP54","donate30Rnd_9x19_MP5SD4","donateRH_45ACP_30RND_Mag","donateRH_45ACP_30RND_SD_Mag","donateRH_9mm_32RND_SD_Mag","donate30Rnd_9x19_TMP","donate30Rnd_9x19_TMPSD","donateRH_46x30mm_40RND_Mag","donateRH_46x30mm_40RND_SD_Mag","clbuggy"];

//86
_Donate5 = ["supgrade5","donateRH_m4aim","donateRH_m4eotech","donateRH_m4acog","donateRH_m4maim","donateRH_m4meotech","donateRH_m4macog","donateRH_hk416aim","donateRH_hk416acog","donateRH_hk416eotech","donateRH_hk417aim","donateRH_hk417acog","donateRH_hk417eotech","donateRH_acracog","donateRH_acraim","donateRH_acreotech","MBG_Compound_Bow","donateRH_20Rnd_762x51_hk417","MBG_Arrow_HE","100Rnd_556x45_BetaCMag","donate30Rnd_556x45_Stanag"];

//87
_Donate6 = ["donateRH_m4sd","donateRH_m4sdaim","donateRH_m4sdacog","donateRH_m4sdeotech","donateRH_hk416sd","donateRH_hk416sdaim","donateRH_hk416sdeotech","donateRH_hk417sd","donateRH_hk417sdaim","donateRH_hk417sdacog","donateRH_hk417sdeotech","donateRH_massd","donateRH_massdacog","donateRH_massdaim","donateRH_massdeotech","donate30Rnd_556x45_StanagSD","donateRH_20Rnd_762x51_SD_hk417","100Rnd_556x45_BetaCMag","donate30Rnd_556x45_Stanag"];

//89
/*_cia = 
[
"medikit",
"reparaturkit",
"bjerk",
"Binocular", 
"RH_HK53aim_pmc",
"RH_m4_CIA",
"M1014_CIA",
"GLT_Falcon_MR",
"can_c130",
"tcg_taurus_security",
"30Rnd_556x45_Stanag",
"8Rnd_B_Beneli_74Slug",
"ArmoredSUV_PMC"
];
*/
//90
/*
_bountyshop =
[
"revolver_BH",
"Rnd_45ACP",
"Sa61_BH",
"Rnd_B_765x17_Ball",
"LeeEnfield_BH",
"x_303",
"Huntingrifle_BH",
"x_22_LR_17_HMR",
"M16A2_BH",
"30Rnd_556x45_Stanag",
"Sa58V_BH",
"30Rnd_762x39_SA58",
"M1014_BH",
"8Rnd_B_Beneli_Pellets",
"8Rnd_B_Beneli_74Slug",
"ziptie_bh",
"medikit",
"SUV_PMC"
];
*/

//91
_VIPterror = 
[
"RH_ar10s",
"safehack",
"RH_20Rnd_762x51_AR10",
"RH_aks47g",
"AK_107_GL_kobra",
"30Rnd_762x39_AK47",
"RH_bizonk",
"64Rnd_9x19_Bizon",
"RH_m14aim",
"20Rnd_762x51_DMR",
"RH_svdg",
"10Rnd_762x54_SVD",
"AKS_74_GOSHAWK",
"30Rnd_545x39_AK",
"FN_FAL_ANPVS4",
"donate20Rnd_762x51_FNFAL"
];

//92
/*
_vip4shoplist = 
[
"supgrade1",
"supgrade2",
"supgrade3",
"NVGoggles",
"ziptie",
"tcgmp",
"SUV_TK_EP1",
"suburban_black",
"PAGANI_ZONDA_F",
"m5_c_black",
"cl_del_mackr",
"ASTON_MARTIN_DBR9",
"CORVETTE_Z06",
"MustangGTRyellow_MLOD",
"FORD_SHELBY_GT",
"FORD_MUSTANG_SHELBY_COBRA",
"FORD_MUSTANG_SHELBY_COBRA1",
"FORD_MUSTANG_SHELBY_COBRA2",
"FORD_MUSTANG_SHELBY_COBRA3",
"h1c_black",
"h1c_red",
"h1c_white",
"h1c_grey",
"s331c_black",
"s331c_white",
"s331c_red",
"s331c_grey",
"rangeroverc_black",
"rangeroverc_white",
"rangeroverc_grey",
"rangeroverc_red",
"MH6J_EP1",
"ibr_as350_jungle",
"GazelleD"
];
*/

//93
_vipterrorairlist = 
[
//"kyo_microlight_terror",
//"An2_TK_EP1",
"UH1H_TK_EP1"
];

/*
_txvipguns = 
[
"RH_aks47g_tx",
"RH_aks47s_tx",
"kpfs_hk32_tx",
"30Rnd_762x39_AK47",
"KPFS_MP44_tx",
"KPFS_30Rnd_762x43_STG44",
"RH_bizonk_tx",
"64Rnd_9x19_Bizon",
"KPFS_MP2_tx",
"KPFS_32Rnd_MP2",
"RH_mp5a4eot_tx",
"30rnd_9x19_MP5",
"RH_umpeot_tx",
"RH_umpaim_tx",
"RH_45ACP_25RND_Mag",
"RH_hk416aim_tx",
"RH_hk416eotech_tx",
"RH_hk416acog_tx",
"RH_hk416seotech_tx",
"RH_hk416saim_tx",
"RH_ctar21m_tx",
"RH_m16a4eotech_tx",
"RH_m16a4aim_tx",
"RH_m16a4acog_tx",
"RH_m4aim_tx",
"RH_M4a1eotech_tx",
"RH_m4sbreotech_tx",
"Rnd_556x45_Stanag",
"RH_hk417aim_tx",
"RH_hk417eotech_tx",
"RH_hk417acog_tx",
"RH_hk417saim_tx",
"RH_20Rnd_762x51_hk417",
"KPFS_G3SG1_tx",
"20Rnd_762x51_DMR"
];

_pirategearshop =
[
"fishgun",
"boatammo",
"big_boat",
"smallboat_1",
"smallboat_2",
"tcg_wave_red"
];

_IRAvehicles =
[
"cl_fuel_mackr"
];

_IRAweapons = 
[
"IRAfal",
"IRAar15",
"IRAm16",
"IRAak47",
"IRAlee",
"IRAHuntingRifle",
"IRAG3A2",
"IRAMP2",
"HandGrenade",
"30Rnd_556x45_Stanag",
"30Rnd_762x39_AK47",
"20Rnd_762x51_FNFAL",
"20Rnd_762x51_DMR",
"30Rnd_9x19_UZI",
"x_303",
"IRAIgla",
"Igla_mag",
"IRARPG7",
"PG7V",
"PG7VR",
"PG7VL",
"OG7",
"BAF_ied_v1",
"BAF_ied_v2",
"BAF_ied_v3",
"BAF_ied_v4"
];
*/
_weaponx = 
[
"xRH_m93r",
"15Rnd_9x19_M9SD",
"donateRH_Deaglemzb",
"donateRH_7Rnd_50_AE",
"xRH_acraim",
"xRH_acreotech",
"xRH_acr",
"xRH_ctar21",
"xRH_ctar21m",
"xRH_star21",
"xRH_MK12sd",
"100Rnd_556x45_BetaCMag",
"xG36_C_SD_eotech",
"30Rnd_556x45_G36SD",
"RH_ak103",
"RH_aks47g",
"RH_ak47",
"x30Rnd_762x39_AK47",
"xDMR",
"20Rnd_762x51_DMR",
"xBAF_LRR_scoped",
"5Rnd_86x70_L115A1",
"RPG18",
"RPG18_mag",
"MBG_Compound_Bow",
"xMBG_Arrow_HE"
];

_itemx =
[
"supgrade1",
"supgrade2",
"supgrade3",
"supgrade4",
"supgrade5",
"speedx",
"reparaturkit",
"medikit",
"ziptie",
"GNT_ScubaW",
"vclammo"
];

_carx = 
[
"f350_black",
"f350_blue",
"f350_pink",
"f350_white",
"f350_red",
"transit_black",
"transit_grey",
"transit_blue",
"transit_yellow",
"transit_pink",
"transit_white",
"transit_green",
"transit_red",
"transit_orange",
"suburban_black",
"PAGANI_ZONDA_F",
"m5_c_black",
"cl_del_mackr",
"ASTON_MARTIN_DBR9",
"CORVETTE_Z06",
"MustangGTRyellow_MLOD",
"FORD_SHELBY_GT",
"FORD_MUSTANG_SHELBY_COBRA",
"FORD_MUSTANG_SHELBY_COBRA1",
"FORD_MUSTANG_SHELBY_COBRA2",
"FORD_MUSTANG_SHELBY_COBRA3",
"DODGE_VIPER_SRT10",
"CORVETTE_C6R",
"ibr_van_BNK",
"240GD",
"Da_kart",
"CHRYSLER_W_limmo",
"UAZ_MG_TK_EP1",
"Offroad_DSHKM_TK_GUE_EP1",
"Pickup_PK_TK_GUE_EP1",
"SUV_TK_EP1"
];

_boatx =
[
"RHIB",
"fishingpole",
"PBX",
"Zodiac",
"cl_trawler_fishing_boat",
"cl_container_boat",
"cl_sport_fishing_boat",
"Fishing_boat",
"cl_inflatable",
"lcu",
"JMSDF_US2",
"JMSDF_US1"
];

_helix =
[
"UH1H_TK_EP1",
"Gazelle",
"Gazelle3",
"GazelleUN",
"MV22"
];

_pistol = 
[
"RH_g19t",
"RH_17Rnd_9x19_g17",
"RH_p38","RH_8Rnd_9x19_p38",
"RH_tt33","RH_8Rnd_762_tt33",
//"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_uspm",
"RH_12Rnd_45cal_usp",
"RH_usp",
"RH_15Rnd_9x19_usp",
"RH_mk2",
"RH_10Rnd_22LR_mk2",
"RH_m93r",
"RH_20Rnd_9x19_M93",
"RH_m9c",
"Rnd_9x19_M9",
"RH_anac",
"RH_6Rnd_44_Mag",
"RH_python",
"RH_6Rnd_357_Mag",
"RH_g17",
"RH_19Rnd_9x19_g18",
"RH_m1911old",
"RH_8Rnd_45cal_m1911",
"RH_bull",
"RH_6Rnd_44_Mag",
"C1987_P99_black",
"15Rnd_9x19_p99"
];

_sub = 
[
"RH_muzi",
"RH_32rnd_9x19_Muzi",
"RH_uzi",
"RH_9mm_32RND_Mag",
"RH_tmpeot",
"30Rnd_9x19_MP5",
"RH_fmg9",
"RH_9mm_32RND_Mag"
];

_rifle =
[
"Huntingrifle",
"5x_22_LR_17_HMR",
"MBG_Compound_Bow",
"MBG_Arrow_N",
"tcg_mossberg",
"LeeEnfieldmaf",
"x_303",
"tcg_combat",
"Saiga12K",
"8Rnd_B_Saiga12_Pellets",
"8Rnd_B_Beneli_Pellets",
"KPFS_KarS",
"KPFS_10Rnd_762x39_SKS"
];

_gangshop_buy =
[
"RH_g19t",
"RH_17Rnd_9x19_g17",
"RH_p38","RH_8Rnd_9x19_p38",
"RH_tt33","RH_8Rnd_762_tt33",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_muzi",
"RH_32rnd_9x19_Muzi",
"RH_uzi",
"RH_9mm_32RND_Mag",
"RH_tmpeot",
"30Rnd_9x19_MP5",
"RH_fmg9",
"RH_9mm_32RND_Mag"
];

_gangshop_buy2 =
[
"RH_g19t",
"RH_17Rnd_9x19_g17",
"RH_p38","RH_8Rnd_9x19_p38",
"RH_tt33","RH_8Rnd_762_tt33",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_muzi",
"RH_32rnd_9x19_Muzi",
"RH_uzi",
"RH_9mm_32RND_Mag",
"RH_tmpeot",
"30Rnd_9x19_MP5",
"RH_fmg9",
"RH_9mm_32RND_Mag"
];

_gangshop_buy3 =
[
"RH_g19t",
"RH_17Rnd_9x19_g17",
"RH_p38","RH_8Rnd_9x19_p38",
"RH_tt33","RH_8Rnd_762_tt33",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_muzi",
"RH_32rnd_9x19_Muzi",
"RH_uzi",
"RH_9mm_32RND_Mag",
"RH_tmpeot",
"30Rnd_9x19_MP5",
"RH_fmg9",
"RH_9mm_32RND_Mag"
];

_gangshop_buy4 =
[
"RH_g19t",
"RH_17Rnd_9x19_g17",
"RH_p38","RH_8Rnd_9x19_p38",
"RH_tt33","RH_8Rnd_762_tt33",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_muzi",
"RH_32rnd_9x19_Muzi",
"RH_uzi",
"RH_9mm_32RND_Mag",
"RH_tmpeot",
"30Rnd_9x19_MP5",
"RH_fmg9",
"RH_9mm_32RND_Mag"
];
//Civilian Clothing
M_rlrpgclothing =
[
"Functionary1",
"Functionary2",
"Worker2",
"Woodlander3",
"Doctor",
"Rocker2",
"TK_CIV_Takistani01_EP1",
"TK_CIV_Takistani02_EP1",
"TK_CIV_Takistani03_EP1",
"TK_CIV_Worker01_EP1",
"TK_CIV_Worker02_EP1"
];
//Tactical Military Clothing
M_rlrpgclothing_1 =
[
"Soldier_TL_PMC",
"Soldier_Pilot_PMC",
"Reynolds_PMC",
"Dixon_PMC",
"Ry_PMC"
];
//Military Surplus
M_rlrpgclothing_2 =
[
"GUE_Soldier_Sniper",
"TK_Special_Forces_EP1",
"TK_Soldier_Officer_EP1",
"TK_Soldier_EP1",
"TK_Aziz_EP1",
"TK_GUE_Soldier_5_EP1",
"TK_GUE_Soldier_AAT_EP1",
"TK_GUE_Soldier_EP1",
"TK_GUE_Soldier_Warlord_EP1",
"TK_INS_Soldier_Warlord_EP1",
"TK_INS_Soldier_TL_EP1",
"TK_INS_Soldier_AA_EP1"
];
//_devcivvehs =
[
"f350_black",
"f350_blue",
"f350_pink",
"f350_white",
"f350_red",
"transit_black",
"transit_grey",
"transit_blue",
"transit_yellow",
"transit_pink",
"transit_white",
"transit_green",
"transit_red",
"transit_orange",
"suburban_black",
"PAGANI_ZONDA_F",
"m5_c_black",
"cl_del_mackr",
"ASTON_MARTIN_DBR9",
"CORVETTE_Z06",
"MustangGTRyellow_MLOD",
"FORD_SHELBY_GT",
"FORD_MUSTANG_SHELBY_COBRA",
"FORD_MUSTANG_SHELBY_COBRA1",
"FORD_MUSTANG_SHELBY_COBRA2",
"FORD_MUSTANG_SHELBY_COBRA3",
"DODGE_VIPER_SRT10",
"CORVETTE_C6R",
"ibr_van_BNK",
"240GD",
"Da_kart",
"CHRYSLER_W_limmo",
"UAZ_MG_TK_EP1",
"Offroad_DSHKM_TK_GUE_EP1",
"Pickup_PK_TK_GUE_EP1",
"SUV_TK_EP1"
];

//_devair =
[
"UH1H_TK_EP1",
"Gazelle",
"Gazelle3",
"GazelleUN"
];

//_devweps =
[
"SCAR_L_CQC_Holo",
"xRH_acraim",
"xRH_acreotech",
"xRH_acr",
"xRH_ctar21",
"xRH_ctar21m",
"xBAF_LRR_scoped",
"xRH_star21",
"xRH_m93r",
"xC1987_P99_silver_sd",
"xRH_MK12sd",
"xC1987_P99_black_laser_sd",
"xDMR",
"xG36_C_SD_eotech",
"RH_ak103",
"RH_aks47g",
"RH_ak47",
"RPG18",
"RPG18_mag",
"30Rnd_556x45_G36SD",
"MBG_Compound_Bow",
"xMBG_Arrow_HE",
"30Rnd_556x45_Stanag",
"RH_45ACP_25RND_Mag",
"30rnd_9x19_MP5",
"x30Rnd_762x39_AK47",
"20Rnd_762x51_DMR",
"20Rnd_556x45_Stanag",
"100Rnd_556x45_BetaCMag",
"5Rnd_86x70_L115A1",
"RH_6rnd_44_Mag",
"15Rnd_9x19_M9SD",
"15Rnd_9x19_M9",
"RH_8Rnd_9x19_Mksd",
"15Rnd_9x19_p99_sd"
];

//_devitems =
[
"supgrade1",
"supgrade2",
"supgrade3",
"supgrade4",
"supgrade5",
"speedx",
"reparaturkit",
"medikit",
"ziptie"
];

_appstore =
[
"Bankingapp"
];

_td = 
[
"il_ambulance",
"gmc_ambulance",
"roadcone",
"bunkersmall",
"bigbagfenceCorner",
"bigbagfenceRound",
"danger",
"bargate",
"roadblock",
"roadbarrierlong",
"roadbarriersmall",
"supgrade1",
"supgrade2",
"bjerk",
"NVGoggles"
];
_td2 = 
[
"il_silverado_pd",
"il_ambulance",
"gmc_ambulance",
"roadcone",
"bunkersmall",
"bigbagfenceCorner",
"bigbagfenceRound",
"danger",
"bargate",
"roadblock",
"roadbarrierlong",
"roadbarriersmall",
"supgrade1",
"supgrade2",
"bjerk"
];
_td3 = 
[
"il_silverado_pd",
"il_ambulance",
"gmc_ambulance",
"tcg_suburban_FD",
"suburban_fd",
"roadcone",
"bunkersmall",
"bigbagfenceCorner",
"bigbagfenceRound",
"danger",
"bargate",
"roadblock",
"roadbarrierlong",
"roadbarriersmall",
"supgrade1",
"supgrade2",
"bjerk"
];
_td4 = 
[
"firetruck",
"rescue",
"Laddertruck",
"il_kw_tanker",
"roadcone",
"bunkersmall",
"bigbagfenceCorner",
"bigbagfenceRound",
"danger",
"bargate",
"roadblock",
"roadbarrierlong",
"roadbarriersmall",
"supgrade1",
"supgrade2",
"bjerk",
"supgrade5"
];
_td5 = 
[
"ibr_as350",
"HH65C",
"UH60M_MEV_EP1",
"roadcone",
"bunkersmall",
"bigbagfenceCorner",
"bigbagfenceRound",
"danger",
"bargate",
"roadblock",
"roadbarrierlong",
"roadbarriersmall",
"supgrade1",
"supgrade2",
"bjerk"
];
_td6 = 
[
"fireilpd_beat_f101", 
"firetahoe_sh",
"ibr_as350",
"HH65C",
"firetruck",
"rescue",
"Laddertruck",
"il_kw_tanker",
"il_silverado_pd",
"il_ambulance",
"gmc_ambulance",
"tcg_suburban_FD",
"suburban_fd",
"roadcone",
"bunkersmall",
"bigbagfenceCorner",
"bigbagfenceRound",
"danger",
"bargate",
"roadblock",
"roadbarrierlong",
"roadbarriersmall",
"supgrade1",
"supgrade2",
"bjerk"
];
_rm = 
[
"supgrade1", 
"supgrade2",
"reparaturkit",
"kanister"
];

INV_ItemShops = [
/*
[swagdevboxweps,"Developer Civ Weapons",swagdevboxweps,swagdevveh,_devweps,_devweps,true],
[swagdevboxcars,"Developer Civ Cars",swagdevboxweps,swagdevveh,_devcivvehs,_devcivvehs,true],
[swagdevboxitems,"Developer Civ Items",swagdevboxitems,swagdevveh,_devitems,_devitems,true],
[swagdevboxcop,"Developer Cop Box",swagdevboxcop,swagdevveh,_devcop,_devcop,true],
*/
[appstore,"App-Store",dummyobj,dummyobj,_appstore,_appstore,true],
[appstore_1,"App-Store",dummyobj,dummyobj,_appstore,_appstore,true],
[appstore_2,"App-Store",dummyobj,dummyobj,_appstore,_appstore,true],
[appstore_3,"App-Store",dummyobj,dummyobj,_appstore,_appstore,true],
[appstore_4,"App-Store",dummyobj,dummyobj,_appstore,_appstore,true],
[swagdevboxair,"Developer Civ Air",swagdevboxair,swagdevveh,_devair,_devair,true],
[specbox,"Undercover Police Equipment",specbox,ccarspawnuc,_undercover,_undercover,true],
[rlrpgclothingshop,"Civilian Clothing Shop",dummyobj,dummyobj,M_rlrpgclothing,M_rlrpgclothing,true],
[rlrpgclothingshop_1,"Military Surplus",dummyobj,dummyobj,M_rlrpgclothing_1,M_rlrpgclothing_1,true],
[rlrpgclothingshop_2,"Tactical Military Clothing",dummyobj,dummyobj,M_rlrpgclothing_2,M_rlrpgclothing_2,true],
[pistol,"Licensed Pistol",pistol,pistol,_pistol,_pistol,true],
[sub,"Submachine Gun",sub,sub,_sub,_sub,true],
[rifle,"Licensed Rifle",rifle,rifle,_rifle,_rifle,true],
[weaponx,"Tier X Weapons",weaponx,weaponx,_weaponx,_weaponx,true],
[itemx,"Tier X Items",itemx,itemx,_itemx,_itemx,true],
[carx,"Tier X Cars",carx,carxspawn,_carx,_carx,true],
[boatx,"Tier X Boats",boatx,boatxspawn,_boatx,_boatx,true],
[helix,"Tier X Heli",helix,helixspawn,_helix,_helix,true],
[fuelshop1,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop2,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop3,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop4,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop5,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop6,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop7,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop8,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop9,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[vending2,"Outdoor Shop",vending2,dummyobj,_fs2,_fs2,true],
[shop1,"Food Shop",dummyobj,dummyobj,_is,_is,true],
[shop2,"Food Shop",dummyobj,dummyobj,_is,_is,true],
[shop4,"Food Shop",dummyobj,dummyobj,_is,_is,true],
[bailflag,"Food and Gun Locker",dummyobj,dummyobj,_cf,_cf,true],
[pub1,"Pub",dummyobj,dummyobj,_pub,_pub,true],
[pub2,"Pub",dummyobj,dummyobj,_pub,_pub,true],
[pub3,"Pub",dummyobj,dummyobj,_pub,_pub,true],
[pub4,"Pub",dummyobj,dummyobj,_pub,_pub,true],
[martpub,"Alcohol",dummyobj,dummyobj,_pub,_pub,true],
[gundealer1,"Firearms Dealer",gunbox2,dummyobj,_gss,_gss,true],
[assassinshop,"Assassin Shop",assassinshop,dummyobj,_ass,_ass,true],
[mayorguns,"Government Equip Shop",mayorguns,mayorcarspawn,_mgs,_mgs,true],
[equipbox,"Equipment Shop",equipbox,dummyobj,_es,_es,true],
[tuning1,"Car Upgrades",dummyobj,dummyobj,_cu,_cu,true],
[rMart,"Car Items",dummyobj,dummyobj,_rm,_rm,true],
[carshop1,"Used Cars",dummyobj,carspawn1,_cs1,_cs1,true],
[carshop4,"Used Cars",dummyobj,carspawn4,_cs1,_cs1,true],
[carshop2,"Farm Equipment",dummyobj,carspawn2,_cs2,_cs2,false],
[scarshop,"Muscle Car Shop",dummyobj,scarspawn1,_sc1,_sc1,true],
[scarshop2,"Charger and Mazda",dummyobj,scarspawn2,_sc2,_sc2,true],
[scarshop3,"Low End Sports",dummyobj,scarspawn3,_sc3,_sc3,true],
[scarshop4,"Mid Level Sports",dummyobj,scarspawn4,_sc4,_sc4,true],
[scarshop5,"High End Sports",dummyobj,scarspawn5,_sc5,_sc5,true],
[scarshop6,"Nissan Car Shop",dummyobj,scarspawn6,_sc6,_sc6,true],
[scarshop7,"350z Car Shop",dummyobj,scarspawn7,_sc7,_sc7,true],
[scarshop8,"Ford Car Shop",dummyobj,scarspawn8,_sc8,_sc8,true],
[scarshop9,"BMW Car Shop",dummyobj,scarspawn9,_sc9,_sc9,true],
[tahoeshop1,"Tahoe Shop",dummyobj,tahoespawn1,_tahoe,_tahoe,true],
[pickupshop1,"Pickup Shop",dummyobj,pickupspawn1,_ps,_ps,true],
[taxishop,"Taxi Shop",dummyobj,taxispawn1,_tx,_tx,true],
[bikeshop,"Mikes Bike Shop",dummyobj,bikespawn,_mbs,_mbs,true], 
[bikeshop1,"Quad Bike Shop",dummyobj,bikespawn1,_qbs,_qbs,true],
[bikeshop2,"Sports Bike Shop",dummyobj,bikespawn1,_qbss,_qbss,true],
[truckshop,"Truck and Bus Shop",dummyobj,truckspawn,_ts,_ts,true],
[struckshop,"Sport Truck Shop",dummyobj,struckspawn,_sts,_sts,true],
[airshop,"Airplane Shop",dummyobj,asairspawn,_as,_as,true],
[airshop2,"Chopper and Jet Shop",dummyobj,asairspawn,_assa,_assa,true],
[airshop3,"Commercial Air Shop",dummyobj,asairspawn,_asc,_asc,true],
[airshop4,"Chopper and Jet Shop",dummyobj,asairspawn2,_assa,_assa,true],
[scubashop, "Boat Shop",dummyobj,bs1spawn,_bs,_bs,true],	
[boatshop2, "Boat Shop",dummyobj,boatspawn2,_bs,_bs,true],
[boatshop4, "Sea Plane Shop",dummyobj,boatspawn4,_bsp,_bsp,false],
[tboatshop1,"Boat Shop",dummyobj,tboatspawn1,_bt,_bt,true],
[insure,"Insurance",insure,dummyobj,_ins, _emptyshop,false],
[tdoc,"Untrained Equipment",dummyobj,tdocspawn,_td,_td,true],
[tdocsub,"Untrained Equipment",dummyobj,tdocspawnsub,_td,_td,true],
[tdoc2,"EMT1 Equipment",dummyobj,tdocspawn,_td2,_td2,true],
[tdoc2sub,"EMT1 Equipment",dummyobj,tdocspawnsub,_td2,_td2,true],
[tdoc3,"EMT2 - 3 Equipment",dummyobj,tdocspawn,_td3,_td3,true],
[tdoc3sub,"EMT2 - 3 Equipment",dummsubyobj,tdocspawnsub,_td3,_td3,true],
[tdoc4,"FD Equipment",dummyobj,tdocspawn,_td4,_td4,true],
[tdoc4sub,"FD Equipment",dummyobj,tdocspawnsub,_td4,_td4,true],
[tdoc5,"Air Rescue Equipment",dummyobj,tdocspawn1,_td5,_td5,true],
[tdoc5sub,"Air Rescue Equipment",dummyobj,tdocspawnsubair,_td5,_td5,true],
[tdoc6,"Command Equipment",dummyobj,tdocspawn,_td6,_td6,true],
[tdoc6sub,"Command Equipment",dummyobj,tdocspawnsub,_td6,_td6,true],
[resourcesell,"Sell Resources",dummyobj,dummyobj,_rs,_rs,true],
[cheeseburger,"Jackos Cheeseburgers",dummyobj,dummyobj,_gds,_gds,true],
[workplace_getjobflag_4,"RL Emporium",dummyobj,dummyobj,_gds1,_gds1,true],
[workplace_getjobflag_6,"Wigworths",dummyobj,dummyobj,_gds3,_gds3,true],
[OilSell1,"Oil Dealer", dummyobj,dummyobj, _emptyshop,_os,true],
[whalesell,"Sell Whale",dummyobj,dummyobj,_emptyshop,_ws,true],	
[terrorbox,"Terror Stuff",terrorbox,terrorshopvh,_terrorshop,_terrorshop,true],
[shadyd,"Barely Legal",shadyd,dummyobj, _shady,_shady,true],
[gangarea1,"Gang Shop",gangbox1,dummyobj,_gangshop_buy,_gangshop_buy,true],
[gangarea2,"Gang Shop",gangbox2,dummyobj,_gangshop_buy2,_gangshop_buy2,true],
[gangarea3,"Gang Shop",gangbox3,dummyobj,_gangshop_buy3,_gangshop_buy3,true],																	
[gangarea4,"Gang Shop",gangbox4,dummyobj,_gangshop_buy4,_gangshop_buy4,true],											
[cdrugsell,"Sell Cocaine",dummyobj,dummyobj,_dsc,_dsc,true],
[mdrugsell,"Sell Marijuana",dummyobj,dummyobj,_dsm,_dsm,true],
[ldrugsell,"Sell LSD",dummyobj,dummyobj,_emptyshop,_dsl,true],
[hdrugsell,"Sell Heroin",dummyobj,dummyobj,_dsh,_dsh,true],
[methsell,"Sell Meth",dummyobj,dummyobj,_msc,_msc,true],
[pharmacy,"Pharmacy",dummyobj,pharmspawn,_psc,_emptyshop,false],
[copbasic1,"Basic Police Gear",copbasic1,ccarspawn, _copbasic,_copbasic,true],
[copbasic2,"Basic Police Gear",copbasic2,ccarspawn, _copbasic,_copbasic,true],
[copbasic3,"Basic Police Gear",copbasic3,ccarspawn, _copbasic,_copbasic,true],
[copbasic4,"Basic Police Gear",copbasic4,ccarspawn, _copbasic,_copbasic,true],
[copbasic5,"Basic Police Gear",copbasic5,ccarspawn3, _copbasic,_copbasic,true],
[copbasic6,"Basic Police Gear",copbasic6,ccarspawn1, _copbasic,_copbasic,true],
[coptraffic1,"Traffic Equipment",coptraffic1,dummyobj,_coptraffic,_coptraffic,true],
[coptraffic2,"Traffic Equipment",coptraffic2,dummyobj,_coptraffic,_coptraffic,true],
[coptraffic3,"Traffic Equipment",coptraffic3,dummyobj,_coptraffic,_coptraffic,true],
[coptraffic4,"Traffic Equipment",coptraffic4,dummyobj,_coptraffic,_coptraffic,true],
[coptraffic5,"Traffic Equipment",coptraffic5,dummyobj,_coptraffic,_coptraffic,true],
[coptraffic6,"Traffic Equipment",coptraffic6,dummyobj,_coptraffic,_coptraffic,true],
[copuntrained,"Untrained Patrol Officer Equipment",copuntrained,ccarspawn,_copuntrained,_copuntrained,true],
[coppo1,"Rookie Patrol Officer Equipment",coppo1,ccarspawn,_coppo1,_coppo1,true],
[coppo2,"Patrol Officer Equipment",coppo2,ccarspawn,_coppo2,_coppo2,true],
[coppo3,"Senior Patrol Officer Equipment",coppo3,ccarspawn,_coppo3,_coppo3,true],
[copcpl,"Patrol Corporal Equipment",copcpl,ccarspawn2,_copcpl,_copcpl,true],
[copsgt,"Patrol Sergeant Equipment",copsgt,ccarspawn2,_copsgt,_copsgt,true],
[copdeputy,"Sheriff's Deputy Equipment",copdeputy,ccarspawn1,_copdeputy,_copdeputy,true],
[copsheriff,"Sheriff Equipment",copsheriff,ccarspawn1,_copsheriff,_copsgt,true],
[copdispatch,"Patrol Sergeant Equipment",copdispatch,ccarspawn3,_copsgt,_copsgt,true],
[coplt,"Patrol Lieutenant Equipment",coplt,ccarspawnlt,_coplt,_coplt,true],
[copcpt,"Patrol Captain Equipment",copcpt,ccarspawncpt,_copcpt,_copcpt,true],
[copchief,"Chief of Police Equipment",copchief,ccarspawnchief,_copchief,_copchief,true],
[coptrafficdivision,"Traffic Division Equipment",coptrafficdivision,ccarspawn,_coptrafficdivision,_coptrafficdivision,true],
[copk9,"K-9 Officer Equipment",copk9,ck9spawn,_copk9,_copk9,true],
[k9sheriff,"K-9 Officer Equipment",copk9,ck9spawn,_copk9,_copk9,true],
[copair,"Police Aircraft",dummyobj, cairspawn,_copair,_copair,true],
[copair2,"Police Aircraft",dummyobj, airsheriff,_copair,_copair,true],
[copairweapon,"Aviation Weapons",copairweapon, dummyobj,_copairweapon,_copairweapon,true],
[copairweapon2,"Aviation Weapons",copairweapon2, dummyobj,_copairweapon,_copairweapon,true],
[copswat,"S.W.A.T. Equipment",copswat,dummyobj,_copswat,_copswat,true],
[copswatvehicle,"S.W.A.T. Vehicles",dummyobj,ccarspawnswat,_copswatvehicle,_copswatvehicle,true],
[copcoastguard,"Coast Guard Equipment",copcoastguard,cgboatspawn,_copcoastguard,_copcoastguard,true],
[copVIPBox,"Cop Donator Equipment",copVIPBox,ccarspawn,_copvip,_copvip,true],
[copVIPBox2,"Cop Donator Equipment",copVIPBox2,ccarspawn1,_copvip,_copvip,true],
[copVIPBox3,"Cop Donator Equipment",copVIPBox3,ccarspawn2,_copvip,_copvip,true],
[copVIPBoxswat,"Cop Donator Equipment",copVIPBoxswat,ccarspawnswat,_copvip,_copvip,true],
[maindonateshop,"Donator Shop (Tier 1)",maindonateshop,maindonatespawn,_Donate,_Donate,true],
[donateshop2,"Donator Shop (Tier 2)",donateshop2,donatespawn2,_Donate2,_Donate2,true],
[donateshop3,"Donator Shop (Tier 3)",donateshop3,donatespawn3,_Donate3,_Donate3,true],
[donateshop4,"Donator Shop (Tier 4)",donateshop4,donatespawn4,_Donate4,_Donate4,true],
[donateshop5,"Donator Shop (Tier 5)",donateshop5,donatespawn5,_Donate5,_Donate5,true],
[donateshop6,"Donator Shop (Tier 6)",donateshop6,donatespawn6,_Donate6,_Donate6,true],
[milp,"Rifle & Vehicle shop",milp,milps,_milpolice,_milpolice,true],
[milpb,"Boat shop",milpb,milpsb,_milpoliceb,_milpoliceb,true],
[tow,"Tow truck shop",tow,towv,_tows,_tows,true],
[cia,"Cicada International Shop",cia,ciav,_cia,_cia,true],
[terrorvip,"Terror VIP Shop",terrorvip,VIPterrorcarspawn,_VIPterror,_VIPterror,true],
[vipshop1,"Tier-X Cars",vipshop1,vipcar,_vip4shoplist,_vip4shoplist,true],
[Diamond_1,"Pawn Shop",dummyobj,dummyobj,_js,_js,true],
[vipterrorair,"VIP Terror Air Shop",vipterrorair,vipterroraswpawn,_vipterrorairlist,_vipterrorairlist,true],
[hospsell,"Sell Organs",dummyobj,dummyobj,_hsc,_hsc,true],
//[scubashop, "Boat Shop",dummyobj,bs1spawn,_sb,_sb,true],
[bhunt,"Bounty Hunter Shop",bhunt,bhuntv,_bountyshop,_bountyshop,true],
[txvipguns,"Tier-X Weapons",txvipguns,vipcar,_txvipguns,_txvipguns,true],
[pirategearbox,"Piracy Gear",pirategearbox,pirateboatspawn,_pirategearshop,_pirategearshop,true],
[IRAveh,"IRA Vehicles",dummyobj, IRAcarspawn,_IRAvehicles,_IRAvehicles,true],
[IRAwep,"IRA Weapons",IRAweaponbox,IRAweaponbox,_IRAweapons,_IRAweapons,true]
//[pirateboatshop,"Pirate Boats",pirateboatshop,pirateboatspawn,_pirateboatshop,_pirateboatshop,true]
];