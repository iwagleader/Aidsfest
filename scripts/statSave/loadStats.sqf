//===========================================================================
_loadFromDBClient =
"
	_array = _this;
	_uid = _array select 0;
	if((getPlayerUID player) != _uid) exitWith {};
	_varName = _array select 1;
	_varValue = _array select 2;
	if(isNil '_varValue') exitWith {};
	if(_varName == 'moneyPlayer') then {Geld = _varValue;};
	if(_varName == 'moneyAccount') then {Kontostand = _varValue;};

	
	if(playerSide == west) then
	{
		if(_varName == 'WEP_West') then {{player addWeapon _x} forEach _varValue;};	
		if(_varName == 'MAG_West') then {{player addMagazine _x} forEach _varValue;};	
		if(_varName == 'LIC_West') then {INV_LizenzOwner = _varValue;};
		if(_varName == 'INV_West') then {INV_InventarArray = _varValue;};
		if(_varName == 'SLAND_West') then {savedVehiclesWest = _varValue;};
		};
	if(playerSide == civilian) then
	{
		if(_varName == 'WEP_Civ') then {{player addWeapon _x} forEach _varValue;};	
		if(_varName == 'MAG_Civ') then {{player addMagazine _x} forEach _varValue;};	
		if(_varName == 'Lic_Civ') then {INV_LizenzOwner = _varValue;};
		if(_varName == 'INV_Civ') then {INV_InventarArray = _varValue;};
		if(_varName == 'SLAND_Civ') then {INV_SavedVehLand = _varValue;};
		if(_varName == 'SAIR_Civ') then {INV_SavedVehAir = _varValue;};
	};
	if(playerSide == resistance) then
	{
		if(_varName == 'Lic_ESU') then {INV_LizenzOwner = _varValue;};
	};
";

loadFromDBClient = compile _loadFromDBClient;
//===========================================================================
_sendToServer =
"
	accountToServerLoad = _this;
	publicVariableServer 'accountToServerLoad';
";

sendToServer = compile _sendToServer;
//===========================================================================
"accountToClient" addPublicVariableEventHandler 
{
	(_this select 1) spawn loadFromDBClient;
};
//===========================================================================

statFunctionsLoaded = 1;

