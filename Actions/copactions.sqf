//Modified Intellectual Property of TCG
_uid = getPlayerUID player;
_role = player;

//action1a = _role addaction ["test","test.sqf",[1],1,false,true,"",""];
action6 = _role addaction ["Confiscate Money","mafiasafe.sqf", ["ausrauben", mafiasafe, "mafiasafe"],1,false,true,"","iscop and player distance mafiasafe <= 2"];
//=======================   ADMIN CAMERA ==============================================
action12 = _role addaction ["Admin Spectate","tcgcode.sqf",[1],1,false,true,"","player distance rubblepile <= 3"];
//action12a = _role addaction ["AntiClown","servermissionfile\umad.sqf";,[1],1,false,true,"","player distance rubblepile <= 3"];
//=====================================Elevator==============================================
action13 = _role addaction ["Up Elevator","elevator.sqf",[1],1,false,true,"",'player distance getmarkerpos "elevator1" <= 5'];
action13a = _role addaction ["Down Elevator","elevator.sqf",[2],1,false,true,"",'player distance elevator2 <= 5'];
//===================================== ASSASSINATION =================================================
action14 = _role addaction ["Escort VIP", "noscript.sqf", "[VIPtarget] join (group player); player groupchat ""escort the VIP to the police base before he is assassinated!"";",1,false,true,"","player distance VIPtarget < 5 and iscop"];
//===================================== TARGET RESET ==================================================
action17 = _role addaction ["Reset Targets","noscript.sqf",'{_x animate["terc",0]} foreach (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange1 < 10'];
action18 = _role addaction ["Reset targets","noscript.sqf",'{_x animate["terc",0]} foreach (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange2 < 10'];
//===================================== IMPOUND AREA==================================================
action19 = _role addaction ["Impound Lot","maindialogs.sqf",["impound"],1,false,true,"","player distance atm2 <= 5"];
action20 = _role addaction ["Impound Lot","maindialogs.sqf",["impound"],1,false,true,"","player distance copcar <= 5"];
action20a = _role addaction ["Impound Lot","maindialogs.sqf",["impound"],1,false,true,"","player distance atm4 <= 5"];
//================================== COP DELETE EVIDENCE ================================================
action21 = _role addaction ["Take criminal evidence","noscript.sqf",'player groupchat "evidence removed."; {deletevehicle _x} foreach (nearestobjects [getpos player, ["weaponholder"], 3])',1,true,true,"",'_weps = (nearestobjects [getpos player, ["weaponholder"], 3] select 0); player distance _weps < 5 and iscop'];
//================================== COP SLAVE ACTIONS ================================================
//action24 = _role addaction ["Who do you work for","noscript.sqf",'player groupchat format["this slave works for %1.", leader (nearestobjects [getpos player, civslavearray,  3] select 0)]',1,true,true,"",'_slave = (nearestobjects [getpos player, civslavearray, 3] select 0); !(_slave in playerarray) and player distance _slave < 5 and (leader _slave) in playerarray and iscop'];
//action25 = _role addaction ["Set slave free","noscript.sqf",'_slave = (nearestobjects [getpos player, civslavearray,  3] select 0); _civ = leader _slave; deletevehicle _slave; (format ["[""slave"", %1] spawn Isse_AddCrimeLogEntry; if(!(""being a slaver"" in %1_reason))then{%1_reason = %1_reason + [""being a slaver""]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 20000;", _civ]) call broadcast;player groupchat "the slave has been freed!";',1,true,true,"",'_slave = (nearestobjects [getpos player, civslavearray, 3] select 0); !(_slave in playerarray) and player distance _slave < 5 and (leader _slave) in playerarray and iscop'];
//==================================== OBJECT ACTIONS =================================================
action22 = _role addaction ["Take Scuba Gear","noscript.sqf",'if (((call INV_GetOwnWeight) + ("gnt_scubaw" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["gnt_scubaw"],  10] select 0);["gnt_scubaw", 1] call INV_AddInvItem;player groupchat "you picked up scuba gear";',1,true,true,"",'player distance (nearestobjects [getpos player, ["gnt_scubaw"],  10] select 0) < 5'];
action23 = _role addaction ["Remove Spike Strip","noscript.sqf",'if (((call INV_GetOwnWeight) + ("spikestrip" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["spikestrip"],  10] select 0);player groupchat "you picked up a spike strip";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["spikestrip"],  10] select 0) < 7'];
action24 = _role addaction ["Remove Stop Sign","noscript.sqf",'if (((call INV_GetOwnWeight) + ("glt_roadsign_octagon" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["glt_roadsign_octagon"],  10] select 0);player groupchat "you picked up a stop sign";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["glt_roadsign_octagon"],  10] select 0) < 7'];
action24a = _role addaction ["Remove Concrete Barrier Short","noscript.sqf",'if (((call INV_GetOwnWeight) + ("il_barrier" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["il_barrier"],  10] select 0);player groupchat "You picked up a Concrete Barrier Short";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["il_barrier"],  10] select 0) < 7'];
action25 = _role addaction ["Remove Searchlight","noscript.sqf",'if (((call INV_GetOwnWeight) + ("SearchLight_UN_EP1" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["SearchLight_UN_EP1"], 3] select 0);["SearchLight_UN_EP1", 1] call INV_AddInvItem;player groupchat "you picked up a searchlight";',1,true,true,"",'_light = (nearestobjects [getpos player, ["SearchLight_UN_EP1"],  3] select 0); !(_light in speedcamarray) and player distance _light < 5 and iscop'];
action26 = _role addaction ["Remove Roadblock","noscript.sqf",'if (((call INV_GetOwnWeight) + ("roadblock" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_CncBlock_Stripes"],  3] select 0);player groupchat "you picked up a roadblock";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_CncBlock_Stripes"],  3] select 0) < 5 and iscop'];
action27 = _role addaction ["Remove Bargate","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Bargate" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0);["Bargate", 1] call INV_AddInvItem;player groupchat "you picked up a bargate";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7'];
action28 = _role addaction ["Remove Road Cone","noscript.sqf",'if (((call INV_GetOwnWeight) + ("roadcone" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_coneLight"],  3] select 0);player groupchat "you picked up a road cone";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Land_coneLight"],  3] select 0) < 5'];
action29 = _role addaction ["Open/close gate","noscript.sqf",'_gate = (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0); if(_gate animationPhase "bargate" == 1)then{_gate animate ["bargate", 0]}else{_gate animate ["bargate", 1]};',1,true,true,"",'player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7 and iscop'];
action30 = _role addaction ["Open/close gate","noscript.sqf",'_gate = (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0); if(_gate animationPhase "bargate" == 1)then{_gate animate ["bargate", 0]}else{_gate animate ["bargate", 1]};',1,true,true,"",'player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7 and isciv'];
action34 = _role addaction ["Remove Bunker (small)","noscript.sqf",'if (((call INV_GetOwnWeight) + ("bunkersmall" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_fortified_nest_small"],  3] select 0);["bunkersmall", 1] call INV_AddInvItem;player groupchat "you picked up a bunker (small)";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["Land_fortified_nest_small"],  3] select 0) < 5'];
action35 = _role addaction ["Remove Danger Sign","noscript.sqf",'if (((call INV_GetOwnWeight) + ("danger" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Sign_Danger"],  3] select 0);["danger", 1] call INV_AddInvItem;player groupchat "you picked up a danger sign";',1,true,true,"",'player distance (nearestobjects [getpos player, ["Sign_danger"],  3] select 0) < 5'];
if ((getplayeruid player) in Undercover_id) then {_role addaction ["Gather Evidence","invest.sqf",'',1,true,true,"",'player distance (nearestobjects [getpos player, ["body"],  3] select 0) < 2'];};
action37 = _role addaction ["Remove ladder","noscript.sqf",'if (((call INV_GetOwnWeight) + ("land_ladder_half" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["land_ladder_half"],  3] select 0);["land_ladder_half", 1] call INV_AddInvItem;player groupchat "you picked up a ladder";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["land_ladder_half"],  3] select 0) < 5'];
action38 = _role addaction ["Remove Road Barrier","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Land_RedWhiteBarrier" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["Land_RedWhiteBarrier"],  3] select 0);player groupchat "you picked up a road barrier";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["Land_RedWhiteBarrier"],  3] select 0) < 5'];
action39 = _role addaction ["Remove Road Barrier","noscript.sqf",'if (((call INV_GetOwnWeight) + ("Roadbarrier_long" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["RoadBarrier_long"],  3] select 0);player groupchat "you picked up a road barrier";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["RoadBarrier_long"],  3] select 0) < 5'];
action40 = _role addaction ["Remove Road Barrier","noscript.sqf",'if (((call INV_GetOwnWeight) + ("RoadBarrier_light" call INV_getitemTypeKg)) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};deletevehicle (nearestobjects [getpos player, ["RoadBarrier_light"],  3] select 0);player groupchat "you picked up a road barrier";',1,true,true,"",'iscop and player distance (nearestobjects [getpos player, ["RoadBarrier_light"],  3] select 0) < 5'];
action41 = _role addaction ["Restrain Cop","restraincop.sqf",[],1,true,true,"","(player == cop1 or player == cop2 or player == cop3)"];
action42 = _role addaction ["Put Cop in Car","preArrestcop.sqf",[],1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and (player == cop1 or player == cop2 or player == cop3)'];
action43 = _role addaction ["Arrest Cop","arrestcop.sqf",[],1,true,true,"","(player == cop1 or player == cop2 or player == cop3)"];
//======================================== Debit Card ===================================================
action44= _role addaction ["Sign-up for Debit Card","debitcardsignup.sqf",["mainbank"],1,false,true,"","player distance mainbank <= 15 and (!SigningUpForDebitCard)"];
//================================== COP CHIEF ELECTION ===============================================
//action44 = _role addaction ["Elect a Chief","maindialogs.sqf",["chief"],1,false,true,"","player distance rathaus <= 3 and iscop"];
//==================================== MAYOR ELECTION =================================================
action45 = _role addaction ["Elect a Governor","maindialogs.sqf",["wahlen"],1,false,true,"","player distance rathaus <= 3"];
//===================================== BUY INSURANCE ===================================================
//action49 = _role addaction [format["Buy Bank Insurance ($%1)", ("bankversicherung" call INV_getitemBuyCost)],"noscript.sqf",'if("geld" call INV_GetItemAmount < ("bankversicherung" call INV_getitemBuyCost))exitwith{player groupchat "not enough money"};["geld", -("bankversicherung" call INV_getitemBuyCost)] call INV_AddInvItem;["bankversicherung", 1] call INV_AddInvItem;player groupchat format["you bought bank insurance for $%1", ("bankversicherung" call INV_getitemBuyCost)];',1,false,true,"","player distance bailflag <= 3"];
action46 = _role addaction ["Cleanup Bodybag","noscript.sqf",'deletevehicle (nearestobjects [getpos player, ["body"],  3] select 0);["geld", 1000] call INV_AddInvItem;player groupchat "You removed a bodybag and have received a cash reward for doing so";',1,true,true,"",'player distance (nearestobjects [getpos player, ["body"],  3] select 0) < 5'];
action47 = _role addaction ["Impound vehicle","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);[_vcl, "impound"] execVM "impound.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_vcl in INV_ServerVclArray and player distance _vcl < 10'];
//======================================= CRIMELOG ====================================================
action50 = _role addaction ["Crime Log","maindialogs.sqf",["coplog"],1,false,true,"","player distance rathaus <= 3"];
//action67 = _role addaction [format ["Buy K9 ($%1)", dog_cost],"copdog.sqf", ["buydog"],1,false,true,"","player distance dogspawn <= 5 and (player == cop1 or player == cop3 or player == cop4 or player == cop5)"];
action67 = _role addaction [format ["Buy K9 ($%1)", dog_cost],"copdog.sqf", ["buydog"],1,false,true,"",'player distance dogspawn <= 5 and ("K9_license" call INV_HasLicense)'];
//action68 = _role addaction [format ["Buy K9 ($%1)", dog_cost],"civdog.sqf", ["buydog"],1,false,true,"","player distance dogspawn1 <= 5"];
action69 = _role addaction ["Who do you work for?","noscript.sqf",'player groupchat format["this hooker works for %1.", leader (nearestobjects [getpos player, civworkerarray,  3] select 0)]',1,true,true,"",'_slave = (nearestobjects [getpos player, civworkerarray, 3] select 0); !(_slave in playerarray) and player distance _slave < 5 and (leader _slave) in playerarray and iscop'];
action70 = _role addaction ["Send hooker home","noscript.sqf",'_slave = (nearestobjects [getpos player, civworkerarray,  3] select 0); _civ = leader _slave; deletevehicle _slave; (format ["[""slave"", %1] spawn Isse_AddCrimeLogEntry; if(!(""being a pimp"" in %1_reason))then{%1_reason = %1_reason + [""being a pimp""]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 20000;", _civ]) call broadcast;player groupchat "the hooker has been sent home!";',1,true,true,"",'_slave = (nearestobjects [getpos player, civworkerarray, 3] select 0); !(_slave in playerarray) and player distance _slave < 5 and (leader _slave) in playerarray and iscop'];
action78 = _role addaction ["Get in trailer","trucking.sqf",[4],1,true,true,"",'_vcl = (nearestobjects [getpos player, ["cl_del_mackr","cl_trucktest_mackr","cl_flatbed_mackr"], 5] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
action79 = _role addaction ["Search trailer","trucking.sqf",[5],1,true,true,"",'_carg = (nearestobjects [getpos player, ["Land_bags_stack_EP1","Land_bags_EP1","Land_Bag_EP1"], 2] select 0);player distance _carg < 2 and iscop'];
//====================================== VEHICLE ACTIONS ================================================
action84 = _role addaction [localize "STRS_addaction_trunk_see","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_str = format["%1_storage", _vcl];[_str] execVM "vehiclecheck.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and !(_vcl in INV_VehicleArray) and _vcl in INV_ServerVclArray and iscop'];
action85 = _role addaction [localize "STRS_addaction_trunk_check","noscript.sqf",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);_str = format["%1_storage", _vcl];if([_vcl,_str] call INV_RemoveIllegalStorage)then{call compile format["publicvariable ""%1"";", _str]};',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and !(_vcl in INV_VehicleArray) and _vcl in INV_ServerVclArray and iscop'];
action87 = _role addaction ["Pull out","noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "pullout.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and count (crew _vcl) > 0 and _vcl in INV_ServerVclArray and (call INV_isArmed)'];
action88 = _role addaction [localize "STRS_addAction_vehicleinfo","noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "vehinfo.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
action89 = _role addaction ["Put civilian in car","preArrest.sqf",[],1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and iscop'];
//======================================== SHOP EXPORT ==================================================
_num1 = (shop1 call INV_getshopnum);
_num2 = (shop2 call INV_getshopnum);
_num4 = (shop4 call INV_getshopnum);
_num5 = (pdfood call INV_getshopnum);
action98 = _role addaction ["Shop 1 export","shopdialogs.sqf",[_num1],1,false,true,"","player distance shop1export <= 3"];
action99 = _role addaction ["Shop 2 export","shopdialogs.sqf",[_num2],1,false,true,"","player distance shop2export <= 3"];
action102 = _role addaction ["Shop 4 export","shopdialogs.sqf",[_num4],1,false,true,"","player distance shop4export <= 3"];
action103 = _role addaction ["Food and Candy","shopdialogs.sqf",[_num5],1,false,true,"",'player distance (nearestobjects [getpos player, ["ibr_van_BNK"],  10] select 0) < 3'];
//========================   unflip vehicle     ================================
action121 = _role addaction ["Unflip vehicle","unflipvehicle.sqf",["unflip"],1,false,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_VehicleArray'];
//=========================    Cop Patrol actions/BUS   ==============================
action122 = _role addaction ["Get patrol mission","coppatrol.sqf",["start"],1,false,true,"","iscop and player distance copbank <= 4 and !pmissionactive and !patrolwaittime"];
action123 = _role addaction ["Cancel patrol mission","coppatrol.sqf",["end"],1,false,true,"","iscop and pmissionactive and player distance copbank <= 4"];
action124 = _role addaction ["Get Security mission","coppatrol.sqf",["start1"],1,false,true,"","iscop and player distance copbank <= 4 and !pmissionactive1 and !patrolwaittime1"];
action125 = _role addaction ["Cancel Security mission","coppatrol.sqf",["end1"],1,false,true,"","iscop and pmissionactive1 and player distance copbank <= 4"];
//=======================Cherry light ===================================================
actionPolice = _role addaction ["[Take Vehicle from the Saver]","retrieveVehicleCop.sqf",[],1,false,true,"","player distance savepoint2 <= 3"];
actionPolice = _role addaction ["[Take Vehicle from the Saver]","retrieveVehicleCop2.sqf",[],1,false,true,"","player distance savepoint2s <= 3"];
actionPolice2 = _role addaction ["[SAVE YOUR POLICE VEHICLE]","noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "saveVehicleCop.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and _vcl in INV_VehicleArray and (player distance savepoint2 <= 30 or player distance savepoint2s <= 30)'];
//=======================Jail Doors===================================================
//action250 = _role addaction ["Open Jail Door","jaildoor.sqf",["open"],1,false,true,"",'(iscop) and (player distance jaild < 3) and (policehq animationPhase "jdoor" < 0.5)'];
//action251 = _role addaction ["Close Jail Door","jaildoor.sqf",["close"],1,false,true,"",'(iscop) and (player distance jaild < 3) and (policehq animationPhase "jdoor" >= 0.5)'];
//======================== Ride Bus ============================================
busaction2 = _role addaction ["Get in the bus","specialveh.sqf",["busgetin"],1,false,true,"","player distance bus1 <= 5"];
//======================================== Donate shop===================================================
_num15 = (donatebuy call INV_getshopnum);
actiondonate = _role addaction ["Donator Shop","shopdialogs.sqf",[_num15],1,false,true,"","player distance donatebuy <= 5"];
//actionmil = _role addaction ["Switch to National Guard Clothes","noscript.sqf",'["US_Delta_Force_AR_EP1"] call clothes;',1,true,true,"",'player distance milp < 10 and ((getPlayerUID player) in Developer_id) and iscop'];
actionswat1 = _role addaction ["Switch to S.W.A.T. Old Uniform","noscript.sqf",'["vilas_sira_swat_m416"] call clothes;',1,true,true,"",'player distance copswat < 10 and iscop and ((getplayeruid player) in SWAT_id)'];
actionswat2 = _role addaction ["Switch to S.W.A.T. Uniform","noscript.sqf",'["ibr_fea"] call clothes;',1,true,true,"",'player distance copswat < 10 and iscop and ((getplayeruid player) in SWAT_id)'];
actionswat3 = _role addaction ["Switch to S.W.A.T. Marksman Uniform","noscript.sqf",'["USMC_SoldierS_Sniper"] call clothes;',1,true,true,"",'player distance copswat < 10 and iscop and ((getplayeruid player) in SWAT_id)'];
actionswat4 = _role addaction ["Switch to S.W.A.T. Lead Uniform","noscript.sqf",'["vilas_sira_swat"] call clothes;',1,true,true,"",'player distance copswat < 10 and iscop and ((getplayeruid player) in SWAT_id)'];
actionswat5 = _role addaction ["Switch to Patrol Uniform","noscript.sqf",'["tcg_police_officer"] call clothes;',1,true,true,"",'player distance copswat < 10 and iscop and ((getplayeruid player) in SWAT_id)'];
//actionvippatrol = _role addaction ["Switch to Back To Patrol Uniform","noscript.sqf",'["tcg_police_officer"] call clothes;',1,true,true,"",'player distance copswat < 10 and iscop and ("SWAT_license" call INV_HasLicense)'];
actionchief1 = _role addaction ["Switch to Worker","noscript.sqf",'["tcg_police_Worker"] call clothes;',1,true,true,"",'player distance copchief < 10 and iscop and ((getplayeruid player) in Chief_id)'];
actionchief2 = _role addaction ["Switch to Woodlander","noscript.sqf",'["tcg_police_Woodlander"] call clothes;',1,true,true,"",'player distance copchief < 10 and iscop and ((getplayeruid player) in Chief_id)'];
actionchief3 = _role addaction ["Switch to Suit","noscript.sqf",'["tcg_police_Functionary"] call clothes;',1,true,true,"",'player distance copchief < 10 and iscop and ((getplayeruid player) in Chief_id)'];
actionchief4 = _role addaction ["Switch to Patrol Uniform","noscript.sqf",'["tcg_police_officer"] call clothesCop;',1,true,true,"",'player distance copchief < 10 and iscop and ((getplayeruid player) in Chief_id)'];
actionchief5 = _role addaction ["Switch to Patrol Sgt. Uniform","noscript.sqf",'["tcg_police_offsgt"] call clothesCop;',1,true,true,"",'player distance copchief < 10 and iscop and ((getplayeruid player) in Chief_id)'];
actionchief6 = _role addaction ["Switch to Chief Uniform","noscript.sqf",'["KPFS_Policeman_vest_des"] call clothes;',1,true,true,"",'player distance copchief < 10 and iscop and ((getplayeruid player) in Chief_id)'];
actionchief7 = _role addaction ["Switch to Black Hat and Jeans","noscript.sqf",'["FOX_US_SFMRW_OFFD"] call clothes;',1,true,true,"",'player distance copchief < 10 and iscop and ((getplayeruid player) in Chief_id)'];
actioncoppilot1 = _role addaction ["Switch to Pilot Uniform","noscript.sqf",'["US_Soldier_Pilot_EP1"] call clothes;',1,true,true,"",'player distance copairweapon < 10 and iscop and ((getplayeruid player) in PDAviation_id)'];
actioncoppilot2 = _role addaction ["Switch to Patrol Uniform","noscript.sqf",'["tcg_police_officer"] call clothes;',1,true,true,"",'player distance copairweapon < 10 and iscop and ((getplayeruid player) in PDAviation_id)'];
actioncoppilot3 = _role addaction ["Switch to Pilot Uniform","noscript.sqf",'["US_Soldier_Pilot_EP1"] call clothes;',1,true,true,"",'player distance copairweapon2 < 10 and iscop and ((getplayeruid player) in PDAviation_id)'];
actioncoppilot4 = _role addaction ["Switch to Patrol Uniform","noscript.sqf",'["tcg_police_officer"] call clothes;',1,true,true,"",'player distance copairweapon2 < 10 and iscop and ((getplayeruid player) in PDAviation_id)'];
actioncopk91 = _role addaction ["Switch to K-9 Uniform","noscript.sqf",'["tcg_police_officerk9"] call clothes;',1,true,true,"",'player distance copk9 < 10 and iscop and ((getplayeruid player) in K9_id)'];
actioncopk92 = _role addaction ["Switch to Patrol Uniform","noscript.sqf",'["tcg_police_officer"] call clothes;',1,true,true,"",'player distance copk9 < 10 and iscop and ((getplayeruid player) in K9_id)'];
actioncpt1 = _role addaction ["Switch to Command Uniform","noscript.sqf",'["KPFS_Policeman_vest_des_cap"] call clothes;',1,true,true,"",'player distance copcpt < 10 and iscop and ((getplayeruid player) in Cpt_id)'];
actionlt1 = _role addaction ["Switch to Command Uniform","noscript.sqf",'["KPFS_Policeman_vest_des_cap"] call clothes;',1,true,true,"",'player distance coplt < 10 and iscop and ((getplayeruid player) in Lt_id)'];
actionsgt1 = _role addaction ["Switch to Patrol Sgt. Uniform","noscript.sqf",'["tcg_police_offsgt"] call clothes;',1,true,true,"",'player distance copsgt < 10 and iscop and ((getplayeruid player) in Sgt_id)'];
actiondeputy2 = _role addaction ["Switch to Patrol Uniform","noscript.sqf",'["tcg_police_officer"] call clothes;',1,true,true,"",'player distance copsheriffbank < 10 and iscop and ((getplayeruid player) in Deputy_id)'];
actiondeputy1 = _role addaction ["Switch to Sgt.Deputy","noscript.sqf",'["VIL_ctl_policeman"] call clothes;',1,true,true,"",'player distance copsheriffbank < 10 and iscop and ((getplayeruid player) in Deputy_id)'];
actiondeputy3 = _role addaction ["Switch to Deputy","noscript.sqf",'["tcg_police_officsh"] call clothes;',1,true,true,"",'player distance copsheriffbank < 10 and iscop and ((getplayeruid player) in Deputy_id)'];
actionsheriff1 = _role addaction ["Switch to Sheriff","noscript.sqf",'["vilas_sira_sheriffoff"] call clothes;',1,true,true,"",'player distance copsheriffbank < 10 and iscop and ((getplayeruid player) in Sheriff_id)'];