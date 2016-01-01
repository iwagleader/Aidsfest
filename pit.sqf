if (!pitavailable) exitwith {player sidechat format["Your pit maneuver is not available right now."];};

_pitcar = (nearestobjects [getpos player, ["LandVehicle"], 7] select 1);
_pitcarspeed = speed _pitcar;
_rdmpit = floor random 3;
//["pit", -1] call INV_AddInvItem;
format['if(getplayeruid player in Developer_id) then {player sideChat "DEBUG: %4 has Pit Car: %1 Car Speed: %2 Random Number (0 - 3): %3"}', _pitcar, _pitcarspeed, _rdmpit, name player] call swag;

if (isNil "_pitcar") exitwith {pitavailable = true; player sidechat format["Your are not in range to pit a vehicle."];};
	
if (_pitcarspeed <= 100) exitwith {player sidechat format["Your target must be going at least 100 km/h!"];};

if ((_rdmpit == 1) and (_pitcar distance player <= 5)) then {
	_pitcar setVehicleInit 'this setfuel 0'; processInitCommands;
	player sidechat "You have disabled the fleeing vehicle!";
} else {
	player sidechat format["You have failed to disable the vehicle!"];
};

player sidechat format["Your pit maneuver is now disabled. It will be available in 2 Min."];
pitavailable = false;
sleep 120;
pitavailable = true;
player sidechat format["Your pit maneuver is now available."];