
_swag = _this select 1;
[_swag] call clothes;

player sideChat format["You have changed into a %1",typeof vehicle player];
player groupChat "Damn you are looking sexy";
player groupChat "Show it off to all your RLRPG friends";
sleep 1;
[_swag, -1] call INV_AddInvItem;