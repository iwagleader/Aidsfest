_artNotSelected = _this select 0;
_this = _this select 3;
_art  = _this select 0;
_safe = _this select 1;
_item = "safehack";

_itemAmount = _item call INV_GetItemAmount;

if (_art == "crackSafe") then
{
	// Hard Defines-- \\
	_item 			= "safehack";
	_RequiredAmount = 1;
	_itemAmount 	= _item call INV_GetItemAmount;
	// --Hard Defines \\
	
	// Checks-- \\
	if (iscop) exitWith
	{
		player groupChat "Police may not crack the safe code!";
	};
	
	if (_itemAmount < _RequiredAmount) exitWith
	{
		player groupChat "You must have a Vault Code Cracker!";
	};	
	
	if (isCrackingSafe == 1) exitWith
	{
		player groupChat "You are already cracking a safe!";
	};	
	// --Checks \\
	
	if (isCrackingSafe == 0) then
	{	
		isCrackingSafe = 1;
		[_item, -1] call INV_AddInventoryItem;
		
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 5;
		waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
		
		if (round(random 100) < 70) exitWith
		{
			safeCrackFailed = safeCrackFailed + 1;
			player sideChat "Your cracker reads: [*%^&Error#$@$d]";
			if (safeCrackFailed >= 2) then
			{	
			
				player sideChat "Speedys Security INC Has Detected You Trying To Crack The Safe";			
				mainbank say3D "Bank_alarm";
				copbase1 say3D "Bank_alarm";
				_bankName = "BANK";
				format ['server globalchat "Speedys Security INC Has Detected An Attempt To Hack Into The Bank Safe";'] call broadcast;
				
				safeCrackFailed = 0;
			};
			isCrackingSafe = 0;
		};
		
		player sideChat format["Your cracker reads: [%1]", safeCodeSet];
		
		safeCrackFailed = 0;
		isCrackingSafe = 0;
	}
	else
	{
		_near = 0;
	};
};