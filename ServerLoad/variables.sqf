D_PB_TeamRed = [];
D_PB_TeamBlue = [];
//=================================================================================
player addweapon "ItemGPS";

donatorcashbonus = 0;

if ((getPlayerUID player) in Donate_id) then
{
	donatorcashbonus = 500;
};
if ((getPlayerUID player) in Donate_id2) then
{
	donatorcashbonus = 1000;
};
if ((getPlayerUID player) in Donate_id3) then
{
	donatorcashbonus = 1500;
};
if ((getPlayerUID player) in Donate_id4) then
{
	donatorcashbonus = 2000;
};
if ((getPlayerUID player) in Donate_id5) then
{
	donatorcashbonus = 2500;
};
if ((getPlayerUID player) in Donate_id6) then
{
	donatorcashbonus = 3000;
};
if ((getPlayerUID player) in TopDonator_id) then
{
	donatorcashbonus = 50000;
};
if ((getPlayerUID player) in TierX_id) then
{
	donatorcashbonus = 3500;
};
//=================================================================================
RL_WaitReviveAnim = "AdthPpneMstpSnonWnonDnon_binocular";
RL_PrimHWep = "empty";
RL_PrimHolstered = false;
RLRPG_MainWebsiteURL = "WWW.REALLIFERPG.NET";
RLRPG_MainTeamspeak = "TS.REALLIFERPG.NET";
serverUpTime;
publicVariable "serverUpTime";
UpgradingCar =false;
HolsterArr = [];
cantStore = ["ItemCompass", "ItemMap", "ItemRadio", "ItemWatch"];
loadNotFinsihed = false;

INV_smscost		 = 100;
add_civmoney		 = 1000+donatorcashbonus;
add_copmoney		 = 3000+donatorcashbonus;
add_workplace		 = 1000;
copchoprespawntime       = 120;
CopWaffenAvailable       = 0;							
CopIsInPrison            = false;					
CopInPrisonTime          = 0;								
shooting_self            = 0;										
srHinbewegen             = 0;														
deadcam                  = 0;											
isstunned                = false;													
hatGanggebietErobert     = false;								
Antwort                  = 0;           									
CivTimeInPrison          = 0;           			
CopLog                   = [];
murderer                 = []; 
isCrackingSafe			 = 0;
safeCrackFailed			 = 0;
MayorSteuern             = 0;           						
MayorBekommtSteuern      = 75;          		        	
chiefSteuern             = 0;           						
chiefBekommtSteuern      = 75;				
eigene_zeit              = time;				
money_limit              = 10000000;
if ((getPlayerUID player) in TierX_id) then {money_limit = 15000000;};
bank_limit		 = 25000000; 	
if ((getPlayerUID player) in TierX_id) then {bank_limit = 45000000};	
if ((getPlayerUID player) in BankIncrease1_id) then {bank_limit = 35000000;};
if ((getPlayerUID player) in BankIncrease2_id) then {bank_limit = 90000000;};
if ((getPlayerUID player) in BankIncrease3_id) then {bank_limit = 150000000;};
wantedbonus              = 500;         														
StunActiveTime           = 0;  
StunTimePerHit		 = 15; 
MaxStunTime		 = 30;        									 				
GeldStehlenMax           = 200000;
demerits                 = 0;
gtbonus 		 = 10;
gtactive		 = false;
ctactive		 = false;
keyblock		 = false;
maxboars		 = 20;
maxrabbits		 = 20;
maxmanitime		 = 2400;
powerrestorecost	 = 10000;
impoundpay		 = 3000;
noholster		 = false;
MGcost			 = 10000;
PKcost			 = 10000;
SQUADcost		 = 20000;
maxinfai		 = 16;
firestrikes		 = 3;
bc_baitcars = [];
totalstrikes		 = 3;
facworkercost		 = 3000;
maxfacworkers		 = 20;
firingcaptive		 = false;
pickingup   		 = false;
lockpickchance		 = 10;
planting		 = false;
drugstockinc		 = 900;
druguserate		 = 120;
cmissionactive 		 = false;
cmissionactive1		 = false;
cmissionactive2		 = false;
TimerActive 		 = false;
//========Mafia======
streetrep = 0;
mafiamembers = mafs getvariable "mafiamembers";// mafiamembers is now [];
hasjob = false;
//========robbing variables===========
stolenfromtime 		 = 900;
stolenfromtimeractive	 = false;  // dont change
TheSafecode = [ceil ((random 12)+0.1),ceil ((random 12)+0.1),ceil ((random 12)+0.1),ceil ((random 12)+0.1),ceil ((random 12)+0.1),ceil ((random 12)+0.1)];
SafecodesCracked = 0;
DreherState = 0;
Processing1 = false;
Safecracked1 = False;
Processing2 = false;
Safecracked2 = False;
Processing3 = false;
Safecracked3 = False;
//===============MOTD==================
motdwaittime = 120;
//===============Cop Patrol==================
pmissionactive = false;
patrolwaittime = false;
patrolmoneyperkm = 4.0;  // 1 would be equal to $3,000 for 1KM
pmissionactive1 = false;
patrolwaittime1 = false;
patrolmoneyperkm1 = 5.0;  // 1 would be equal to $3,000 for 1KM
pitavailable = true;
AM_temp_carrying = false;
//=========government convoy=============
govconvoybonus 		 = 45000;
govconvoythiefbonus	 = 45000;
convoyrespawntime        = 60;  //reset to 30 after testing
marketrespawntime	 = 60;
moneyintruck 		 = true; //dont change
//===== Gas station robbing
maxstationmoney = 25000;
wantedamountforrobbing = 20000;
maxbarmoney = 25000;
if(debug)then{drugstockinc = 6;druguserate = 20};
//==============================PETROL/OIL=========================================
petroluse                = 3;
maxpetroluse             = 400; 
oildemand                = 0.25;
oilsellpricedec          = 30;
oilbaseprice		 = 15000;
//==============================MINING=============================================
shoveldur=20;
shovelmax=2;
pickaxedur=50;
pickaxemax=3;
hammerdur=100;
hammermax=4;
working=false;
//===============================GANGS=============================================
gangincome		 = 3200;
gangcreatecost		 = 125000;
gangdeltime		 = 900;
gangsarray		 = [];
gangmember		 = false;
gangleader		 = false;
gangareas		 = [gangarea1,gangarea2,gangarea3,gangarea4];
//=================================================================================	      							
CityLocationArray        = [[CityLogic1, 500], [CityLogic2, 400], [CityLogic4, 500], [CityLogic5, 200], [Militarybase, 200]];
respawnarray		 = [respawn1,respawn2,respawn3,respawn4,respawn5,respawn6,respawn7,respawn8,respawn9,respawn10,respawn11,respawn12];
//=========== cop patrol array ==========
coppatrolarray  = 
[
getmarkerpos "patrolpoint1", 
getmarkerpos "patrolpoint2", 
getmarkerpos "patrolpoint3", 
getmarkerpos "patrolpoint4", 
getmarkerpos "patrolpoint5", 
getmarkerpos "patrolpoint6", 
getmarkerpos "patrolpoint7", 
getmarkerpos "patrolpoint8", 
getmarkerpos "patrolpoint9", 
getmarkerpos "patrolpoint10", 
getmarkerpos "patrolpoint11",
getmarkerpos "patrolpoint12",
getmarkerpos "patrolpoint13",
getmarkerpos "patrolpoint14",
getmarkerpos "patrolpoint15",
getmarkerpos "patrolpoint16",
getmarkerpos "patrolpoint17",
getmarkerpos "patrolpoint18",
getmarkerpos "patrolpoint19"
];

coppatrolarray1  = [getmarkerpos "guardpoint1",getmarkerpos "guardpoint2",getmarkerpos "guardpoint3",getmarkerpos "guardpoint4",getmarkerpos "guardpoint5",getmarkerpos "guardpoint6",getmarkerpos "guardpoint7"];

cargoarray  = [getpos resourcesell,getpos assassinshop,getpos shop4,getpos scarshop4,getpos tuning1];
cargoarray1 = [getpos wood_1,getpos shop2,getpos shop1,getpos ressourcenfabrik_1,getpos wfgunbox];
cargoarray2  = [getpos methsell,getpos ldrugsell,getpos hdrugsell,getpos mdrugsell,getpos cdrugsell];

['schluesselbund', 1] call INV_SetItemAmount;

playerWeapons            = [];														
playerMagazines          = [];
weaponsloaded		 = false;
CopStartGear_Mags        =[];

CopStartGear_Weap        = [];

if (iscop) then 

{
						
RadioTextMsg_1 = "Put your fucking hands up!";				
RadioTextMsg_2 = "Pull over and stay in your vehicle!";
RadioTextMsg_3 = "Drop your weapon and put your hands on your head!";
RadioTextMsg_4 = "Your free to go, have a nice day";		

}
else 
{
																				
RadioTextMsg_1 = "Put your fucking hands up now!";
RadioTextMsg_2 = "Step away from the vehicle!";		
RadioTextMsg_3 = "Do it now or your dead!";						
RadioTextMsg_4 = "Dont shoot i give up!";

};
			
RadioTextArt_1 = "direct";												
RadioTextArt_2 = "direct";											
RadioTextArt_3 = "direct";				
RadioTextArt_4 = "direct";																
		
publicarbeiterarctionarray= [];						

for [{_i=1}, {_i <= civscount}, {_i=_i+1}] do 

{
		
call compile format ["
kopfgeld_civ%1      = 0;	
civ%1_wanted        = 0;
civ%1_mayor         = 0;
civ%1_reason        = [];	
civ%1_warning        = [];
civ%1_arrest        = 0;		
civ%1_markerjammed  = 0;
", _i];		

};

if(isnil "param1")then{param1 = 0};
if(isnil "param2")then{param2 = 1024};

SkipTimeDay	   	 = (floor(param2/100)); 	
SkipTimeNight  	   	 = (param2 mod 100); 

isdead			 = 0;			
local_arrest             = 0;
inv_items		 = 0;
extradeadtime		 = 10;  //respawnzeit + extradeadtime = total base respawn for civs
respawntimeinc		 = 10;  //respawn time added every time a civ dies
killedplayerinc          = 20; //Amount of time added per cop kill for civs
respawnzeit              = 10;  //respawnzeit + extradeadtime = total base respawn also respawn time after a cop dies atleast once      										
DeadWaitSec              = respawnzeit; 							
DeadTimeMax              = 50; //Max time you can get for respawn    								
deadtimebonus            = 0.001;       															
deadtimes                = 0;
suicidepenalty		 = 50; //Suicide penalty does not apply to cops
CopsKilled               = 0;           									
CivsKilled               = 0;           												
SelfKilled               = 0;
killstrafe               = 20000;			
copteamkillstrafe	 = 20000;		
GesetzAnzahl             = 12;         				
GesetzArray              = ["Always Drive on the RIGHT side of the road","Always Holster weapons in Towns.","Speed limits 60 in town 90 out", "Governor and Gaurds May have any weapon unlicensed","Governor is immune to traffic laws if his life is in danger","","","","","","","","","",""];
SigningUpForDebitCard	 = false;

if(debug)then{suicidepenalty = 0;respawntimeinc = 0;killedplayerinc = 0};  

isMayor                  = false;      	
WahlArray                = [];         
MayorNumber              = -1;         	
MayorExtraPay            = 3000;       							

for [{_i=0}, {_i < playercount}, {_i=_i+1}] do {WahlArray = WahlArray + [ [] ];};												

ischief                  = false;	
WahlArrayc               = [];		
chiefNumber              = -1;		
chiefExtraPay            = 5000;	

for [{_i=0}, {_i < playercount}, {_i=_i+1}] do {WahlArrayc = WahlArrayc + [ [] ];};

deadcam_target_array     = 

[
	
[12467.6885,4.12955,4202.3672],	
[2101.7478,4.1295543,4576.5317],										
[1773.7926,7,1049.4725]		

];
					
deadcam_position_array   = 

[
					
[6573.78,2365.67,19.16],										
[6563.33,2409.16,3.60],										
[6598.98,2409.17,3.60]

];

atmscriptrunning = 0;
shopactivescript = 0;							
deadcam_wechsel_dauer    = 5;													
deadcam_kameraposition   = round(random (count deadcam_position_array - 1));	
slave_cost               = 40000;
slavemoneyprosekunde	 = 5000;
maxslave                 = 2;
copslaveallowed          = 0;
localslave               = 0;
localslavecounter        = 0;
huren_cost               = 40000;  								

hoemoneyprosekunde       = 13000;   							
maxhuren                 = 3;     			
copworkerallowed         = 0;     										
pimpactive               = 0;			
localhuren               = 0;									
localhurencounter        = 0;
localdog		 = 0;
maxdog			 = 1;
dog_cost                 = 1000;
speedbomb_minspeed       = 1;												
speedbomb_maxspeed       = 100;									
speedbomb_mindur         = 10; 							
speedbomb_maxdur         = 300;	
zeitbombe_mintime        = 10;				
zeitbombe_maxtime        = 0;	
HideoutLocationArray     = CityLocationArray;
publichideoutarray       = [];
hideoutcost		 = 20000;
marker_ausserhalb        = param1; 														
marker_innerhalb         = 5;      			
marker_CopDistance       = 50;   //controls distance cops need to be to make civ dots appear outside of towns. 					
CivMarkerUngenau         = 20;     								
copmarker_on             = 1; 
despawnarray	 	 = [["EvMoney", 300], ["Suitcase", 300]];
workplacearray           = [[workplace1, 80], [workplace2, 80], [workplace3, 60]];
huntingarray             = [["hunting1", 450]];
nonlethalweapons	 = ["Binocular", "NVGoggles", "ItemMap", "ItemCompass", "ItemRadio", "ItemWatch", "ItemGPS"];
slavearray               = workplacearray;
hurenarray               = [[brothel1, 15], [brothel2, 15], [brothel3, 15]];
timeinworkplace          = 0;
wpcapacity               = 10;
INV_hasitemshop          = 0;
INV_haswepshop           = 0;
gunlicensetargets	 = [t11,t12,t21,t22,t31,t32,t41,t42,t51,t52,t61,t62,t71,t72,t81,t82,t91,t92,t101,t111,t112,t121,t131,t132,t133,t134,t135];
BuildingsOwnerArray 	 = [];
Homearray = ["staticwolf","staticwolf1","WestyGameing","WestyGameing1","WestyGameing3","Glimmer","Glimmer2","sample","LukeRollins","LukeRollins_1","Retro1","Redneck","zkb","Angelus","Swody","Short","alfred95","Dutchmen","VBNight","Actual","Dimmer","SGT.Cross","solo6411","VBKilla","Monsieur","Omega","MediaPhamous","Ken","smoothface20","thejojo","Marine","jefw123","Jury_1","Jury_2","Jury_3","Jury_4","Jury_5","Jury_6","Jury_7","Jury_8","jacko1","jacko2","Jacko3","killsteal","Legit","Richards","Kilroy","Jolly","Hodge","Hodge2","Ghengis_Shlong","McRainbow","Tom","Joey","Cookie_Monster","Herzog","xEpicnatorx","Glimmer","Buckwheat_Sniper","Grant","Repp","Doss","AUZ_K1LL3R","Xanxth","kwmx","Fab","hagar","Mcc83","Mcc83_1","Mcc83_2","Speedy_1","Speedy_2","Speedy_3","Hinesy","White","Jesse","UniqeChipmunk_1","Allen","Allen_1","js2195","Goofy","jackygaming","bobthebeastyy","unseen","undeadlegend_1","undeadlegend_2","undeadlegend_3","Logan_1","Logan_2","Logan_3","Mort_1","Mort_2","Mort_3","greenlantern","Chris","Chris2","jgunn","Austin1","Austin2","Austin3","steffan","Shakedown","ElectrifiedGamerHD","Belliosus","Gravvy","Major","Major2","Major3","CurtEvilAlien","Fruerlund","tomcompound","UniqueChipmunk","Blackburn","Dalmiwert","michaelrasch","Fruerlund2","micheal","micheal_2","micheal_3","medic","medic_2","medic_3","ExxoN","Darkwage","Lee","TRendoonfire69","CurtEvilAlien_House","willin4akillin","DtownG","Silas","HellDriven","HellDriven_1","RyanHooli","AUZK1LL3R","Derpa","Derpa_1","Serphantos","Jebus","Jebus_1","Evan","Junior","wloski","MrCole","Hornby","BigBenni","Case_1489","Addiction","Addiction_1","BergerSKG","Test","Test1"];

Cararray = [
"440cuda","monaco","roadrunner","roadrunner2","civic","CHEVROLET_CAMARO_SS_396","chevrolet_chevelle","cuda","hemicuda","cd71hm","challenger","barcuda","fury","FORD_MUSTANG_SHELBY_COBRA","FORD_MUSTANG_SHELBY_COBRA1","FORD_MUSTANG_SHELBY_COBRA2","FORD_MUSTANG_SHELBY_COBRA3",
"cl_charger","cl_charger_black","il_charger_blue","il_charger_black","il_charger_red","il_charger_orange","MAZDA_RX_7","MAZDA_RX_71","MAZDA_RX_72","MAZDA_RX_73","MAZDA_RX_75","MAZDA_RX_74","MAZDA_MAZDASPEED_3",
"CHRYSLER_300","RENAULT_CLIO_SPORT_V6","SUBARU_IMPREZA_WRX_STI_AWD","SUBARU_IMPREZA_STI_AWD","FIAT_PUNTO","ALFA_ROMEO_BRERA","GLT_M300_LT","GLT_M300_ST","MustangGTRyellow_MLOD","Convertible_MLOD","CADILLAC_CTS",
"CADILLAC_CTS1","CADILLAC_CTS2","CADILLAC_CTS3","FORD_SHELBY_GT","FORD_GT","CHRYSLER_W_limmo","BMW_M3_RALLY","BMW_M6","BMW_M3_GTR","BMW_M3","BMW_135I","CORVETTE_Z06","INFINITI_G35","MERCEDES_BENZ_CLK_500","MERCEDES_BENZ_SL_65_AMG","RENAULT_CLIO_SPORT_V6",
"CL_PORSCHE_997","CL_LAMBORGHINI_GT3","KOENIGSEGG_CCX","KOENIGSEGG_CCX1","KOENIGSEGG_CCX2","KOENIGSEGG_CCX3","MCLAREN_F1","PORSCHE_997_GT3_RSR","PORSCHE_911_TURBO","PORSCHE_911_GT3_RS","LAMBORGHINI_MURCIELAGO","LAMBORGHINI_REVENTON","LAMBORGHINI_GALLARDO","MASERATI_MC12","JAGUAR_XK","BUGATTI_VEYRON","AUDI_TT_QUATTRO_S_LINE","AUDI_FSI_LE_MANS","ASTON_MARTIN_DBR9","ASTON_MARTIN_DB9","PAGANI_ZONDA_F",
"NISSAN_GTR_SPECV","NISSAN_GTR_SPECV1","NISSAN_GTR_SPECV2","NISSAN_GTR_SPECV3","NISSAN_350Z","NISSAN_370Z","NISSAN_370Z1","NISSAN_370Z2","NISSAN_370Z3","NISSAN_370Z4","NISSAN_SKYLINE_GT_R_Z","NISSAN_SKYLINE_GT_R_Z1","NISSAN_SKYLINE_GT_R_Z2","NISSAN_SKYLINE_GT_R_Z3",
"il_charger_pd","ilpd_charger_black","ilpd_charger_white","il_swatuc","il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","CHRYSLER_300_CLPD","350z_red","350z_kiwi","350z_black","350z_silver","350z_green","350z_blue","350z_gold","350z_white","350z_pink","350z_mod","350z_ruben","350z_v","350z_yellow",
"taxi","crown_white","crown_black","crown_yellow","crown_brown","crown_red","crown_grey","crown_blue","patrol","patrol_pb","patrol_np","patrol_slick","sheriff","whiteuc","blackuc","whited","greyd","whited","blackd","tcg_taurus_security","tcg_taurus_taxi",
"tcg_taurus_pb_2","tcg_taurus","tcg_taurus_wopb","tcg_taurus_shpb","tcg_taurus_sh","tcg_taurus_uc","tcg_taurus_civ1","tcg_taurus_civ2","240GD","tcg_taurus_civ3","tcg_taurus_civ4","tcg_taurus_civ5","tcg_taurus_civ6","tcg_suburban_uc_black","tcg_suburban_uc_grey","tcg_suburban_uc_white", "tcg_suburban_red","tcg_suburban_yellow","tcg_suburban_grey","tcg_suburban_white","tcg_suburban_green","suburban_blue","suburban_black","suburban_maroon","suburban_sandstone","suburban_grey","suburban_white","suburban_fd","suburban_pd","suburban_pd_k9","suburban_pd_stealth","suburban_pd_black","suburban_pd_sheriff","f350","f350_blue","f350_pink","f350_white","f350_black","monaco","monaco_grey","monaco_blue","monaco_white","monaco_green", "monaco_red","ram3500","ram3500_grey","ram3500_blue","ram3500_yellow","ram3500_white","sierra","sierra_grey","sierra_blue","sierra_yellow","sierra_pink","tahoe_grey","tahoe_darkblue","tahoe_blue","tahoe_yellow","tahoe_white","tahoe_green","tahoe_black","tahoe_orange","tahoe_pink","tahoe_darkblue_cb","tahoe_grey_cb","tahoe_blue_cb","tahoe_yellow_cb","tahoe_pink_cb","tahoe_white_cb","tahoe_green_cb","tahoe_black_cb","tahoe_orange_cb","il_f350_brush","gmc_ambulance","MERCEDES_BENZ_SLR","PONTIAC_GTO_6","oldtruck","m5_red","m5_grey","m5_blue","m5_c_green","m5_c_black","m5_c_white","h1","h1_grey","h1_blue","h1_white","h1_green","rangerover","rangerover_grey","rangerover_blue","rangeroverc_red","Cherokee","Cherokee_grey","Cherokee_blue","s331","s331_grey","s331_blue","s331_yellow","transit","transit_grey","transit_blue","transit_yellow","m5_pd_traffic","clbuggy","il_fordcv__uc_taxi","monaco","oltruc3","NISSAN_SKYLINE_V_SPEC","m5_c_bgreen","m5_c_dblue","m5_c_lblue","m5_c_orange","m5_c_yellow"];




autoUpdateSafeCode = 
{
	if (isServer) then
	{
		while {true} do
		{
			publicVariable "safeCodeSet";
			
			sleep 60;
		};
	};
};

resetSafeCode = 
{
	safeCodeSet = 0;
	
	_randomCodes = 
	[
	"977444600579368",
	"417142475018852",
	"232009164058167",
	"856560053764057",
	"436481970728520",
	"665737084754878",
	"356755854074397",
	"150700178875871",
	"431017777049431",
	"024094958768735",
	"776201168498524",
	"962400615984789",
	"528453473044931",
	"913112313308113",
	"939091233764531",
	"725260372873893",
	"299775677861108",
	"848378852683881",
	"253911070030478",
	"121902777063926",
	"875142811399957",
	"489860547144838",
	"5442156298747",
	"6910240770202",
	"3136089079530",
	"6164223885375",
	"5914701818063",
	"2309867125376",
	"2108930450426",
	"117650744780",
	"473892933493",
	"904633547763",
	"458161004836",
	"002357962443",
	"350998974392",
	"923086607831",
	"553315492588",
	"496588303344",
	"992700767902",
	"347507028173",
	"566098830997",
	"298301418665",
	"409870815720",
	"421183335157",
	"259406630169",
	"445334503050",
	"028009820581",
	"370135381990",
	"185785807702",
	"541545999072",
	"174618621180",
	"383108639082",
	"3886311767",
	"0995788763",
	"4960144331",
	"1479087154",
	"4831656702",
	"9349280777",
	"0764250895",
	"8131530396",
	"2013379142",
	"2757332327"
	];
	
	_randomCodeGen		= floor(random(count _randomCodes));
	_randomCodeSelected	= _randomCodes select _randomCodeGen;
	
	safeCodeSet = _randomCodeSelected;
	
	publicVariable "safeCodeSet";
};



// array used in taxi missions
civclassarray = 
[
"TK_CIV_Takistani01_EP1",
"TK_CIV_Takistani02_EP1",
"TK_CIV_Takistani03_EP1",
"TK_CIV_Takistani04_EP1",
"TK_CIV_Takistani05_EP1",
"TK_CIV_Takistani06_EP1",
"TK_CIV_Woman01_EP1",
"TK_CIV_Woman02_EP1",
"TK_CIV_Woman03_EP1",
"TK_CIV_Worker01_EP1",
"TK_CIV_Worker02_EP1",
"Citizen2_EP1",
"Citizen3_EP1",
"CIV_EuroMan01_EP1",
"CIV_EuroMan02_EP1",
"Dr_Hladik_EP1",
"Functionary1_EP1",
"Functionary2_EP1",
"Haris_Press_EP1",
"Profiteer2_EP1",
"TK_Soldier_Sniper_EP1",
"US_Soldier_Pilot_EP1",
"Doctor",
"Rocker2",
"Soldier_TL_PMC",
"Reynolds_PMC",
"Soldier_Pilot_PMC",
"Soldier_M4A3_PMC",
"Ry_PMC",
"Dixon_PMC"
];
CLAY_DogEODs = ["PipeBomb","Mine","BAF_ied_v1","BAF_ied_v2","BAF_ied_v3","BAF_ied_v4","suitcase"];
CLAY_DogVehicles = ["dhi_cvpi_p71_gpd_k9"];
civslavearray = ["Worker1","Worker2","Worker3","Worker4"];
civworkerarray = ["Hooker1","Hooker2","Hooker3","Hooker4"];
terroristarray	= ["GUE_Soldier_1", "GUE_Soldier_2", "GUE_Soldier_3","TK_Soldier_Officer_EP1","TK_Soldier_Sniper_EP1","TK_Special_Forces_MG_EP1"];

if(isServer)then
{
greenlt = false; publicvariable "greenlt";
yellowlt = false; publicvariable "yellowlt";
redlt = false; publicvariable "redlt";
greenlt1 = false; publicvariable "greenlt1";
yellowlt1 = false; publicvariable "yellowlt1";
redlt1 = false; publicvariable "redlt1";
TankenCost = 100; publicvariable "TankenCost";
bombactive = false; publicvariable "bombactive";
fireactive = true; publicvariable "fireactive";
fireactive2 = false; publicvariable "fireactive2";
onPlayerDisconnected { [_id, _name, _uid] call stats_server_player_disconnected };
onplayerconnected 'publicVariable "GesetzArray";publicVariable "allowedcamera";publicVariable "allowedwar";publicVariable "allowedcarrier";publicVariable "INV_ItemTypenArray";publicvariable "INV_itemstocks";currentTime = daytime; publicvariable "currentTime";';
};
