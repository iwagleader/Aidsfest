RL_FNC_ACCOUNT_SAVE = 
{
	if(_saveLock == 1) exitWith {player sideChat "You cannot Save at this time, try again later.";};
	if(!alive player) exitWith {player groupChat "You Cannot Save Stats while dead."};
	_saveLock = 1;
	private["_display","_btnAbort"];
	disableSerialization;
	waitUntil {
		_display = findDisplay 49;
		!isNull _display;
	};
	_btnAbort = _display displayCtrl 104;
	_btnAbort ctrlEnable false;
	[] call fn_SendPacket;
	sleep 2;
    player sidechat "Stats Saved";
	_btnAbort ctrlEnable true;
	_saveLock = 0;
};	
