_uid = getPlayerUID player;
if ((_uid in adminlevel4)) then {
	if (isnil "pm") then {pm = 0;}; if (pm == 0) then {pm = 1; hint "Player Markers ON";} else {pm = 0; hint "Player Markers OFF";};
	setGroupIconsVisible [true, true];
	while {pm == 1} do
	{
		{
			if (getPlayerUID _x != "") then
			{
				clearGroupIcons group _x;
				group _x addGroupIcon ["x_art"];
				group _x setGroupIconParams [[1, 0.35, 0, 1], format ["%1 (%2m)", name _x, round (_x distance player)], 0.7, true];
			};
		} forEach entities "AllVehicles";
		sleep 1;
	};
	{clearGroupIcons group _x;} forEach entities "AllVehicles";
} else {
  exit;  
};