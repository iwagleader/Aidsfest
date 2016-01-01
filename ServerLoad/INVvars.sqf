INV_PLAYERLIST	        = _this select 0; 
INV_PLAYERSTRINGLIST    = _this select 1;
INV_CANDOILLEGAL        = _this select 2;
INV_ROLESTRING          = format["%1", player]; 
INV_CALL_CREATVEHICLE   = "vehdespawn.sqf";
INV_MAX_ITEMS           = 5000000;
if ((getPlayerUID player) in TierX_id) then {INV_MAX_ITEMS = 5000000;};
INV_MAX_DROPS	 	= 300;
INV_PLAYERCOUNT         = count INV_PLAYERSTRINGLIST;
INV_SaveVclArray        = true; 
INV_VehicleArray        = [];
INV_ServerVclArray      = [];   
INV_SaveObjArray        = false;
INV_shortcuts           = true;
INV_SperrenVerbotArray  = [[copbase1, 250],[sperrenverbot3, 30 ]];
INV_JIP = true; publicVariable "INV_JIP";
_handler = [] execVM "ServerLoad\INVfunctions.sqf";
waitUntil {scriptDone _handler};

_handler = [] execVM "ServerLoad\createfunctions.sqf";
waitUntil {scriptDone _handler};
_handler = [] execVM "ServerLoad\carparks.sqf";
waitUntil {scriptDone _handler};
_handler = [] execVM "ServerLoad\masterarray.sqf";
waitUntil {scriptDone _handler};
_handler = [] execVM "ServerLoad\shops.sqf";
waitUntil {scriptDone _handler};
_handler = [] execVM "ServerLoad\Optimize.sqf";
waitUntil {scriptDone _handler};
_handler = [] execVM "ServerLoad\fishingarray.sqf";
waitUntil {scriptDone _handler};
_handler = [] execVM "ServerLoad\licensearray.sqf";
waitUntil {scriptDone _handler};
_handler = [] execVM "ServerLoad\vclarrsave.sqf";


if (!dedicatedServer) then 

{

_handler = [] execVM "ServerLoad\shopfarmfaclicenseactions.sqf";

};