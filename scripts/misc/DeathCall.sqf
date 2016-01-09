private ["_ok", "_timeout", "_info"];
closeDialog 0;
RL_YesNoEmtCops = "";
RL_YesNoRequestEmt = false;
RL_YesNoRequestCops = false;
_ok = createDialog "Dialog_CallCopsEmts";
ctrlShow [465458 , false];
_timeout = time + 10;
waitUntil{_ok || (time > _timeout)};
_timeout = (time + 20);
_plyr = player;
while{_ok && (time < _timeout)}do
{
	_info = format["Call for assistance?(%1sec)",round(_timeout - time)];
	ctrlSetText [6969, _info];			
	if((toUpper(typeName RL_YesNoEmtCops) == toUpper("bool")))then
	{
		_ok = false;
	};
	sleep 1;
};
if(!(toUpper(typeName RL_YesNoEmtCops) == "BOOL"))then
{
	RL_YesNoEmtCops = true;
};
if(RL_YesNoEmtCops)then
{	
	if(RL_YesNoRequestEmt)then
	{
		format['[%1] call RL_CallESU;', _plyr] call broadcast;
		player sideChat "You have called ESU";
	};
	if(RL_YesNoRequestCops)then
	{
		format['[%1] call RL_CallPolice;', _plyr] call broadcast;
		player sideChat "You have called the Police";
	};
}else{
	player sideChat "You opted-out from requesting an responder please do not use global";
};