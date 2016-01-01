if(fuckmypussysaver == 1) exitWith {player groupChat "You can only save every 1 minute...";};
fuckmypussysaver = 1;
[player, kontostand, _inventory, INV_LizenzOwner] call s_update;
sleep 0.1;
["Your Stats are saving, This may take up to 15 seconds.", "#FF0000"] call colour_hint;
sleep 15;
["Your stats saved succesfully!", "#00FF33"] call colour_hint;
sleep 60;
fuckmypussysaver = 0;
