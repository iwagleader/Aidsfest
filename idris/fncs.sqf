compSystemOpen = 
{
	createDialog "compSystem";
	compPlayers = playableUnits;
	{lbAdd [696903,format ["%1 - %2", _x, name _x]];} forEach compPlayers;
	lbSetCurSel [696903,0];
};

compSystemProccess = 
{
	_moneyValue = _this select 0;
	_player = lbCurSel 696903;
	_playerSelected = compPlayers select _player;
	_newMoneyValue = parseNumber _moneyValue;

	if ((_newMoneyValue >=1) && (_newMoneyValue <=5000000)) then{

		format["if(player == %1) then {kontostand = kontostand + %2;}", _playerSelected, _newMoneyValue] call broadcast;
		player sideChat format ['You gave %1: $%2', _playerSelected, _newMoneyValue];
		server globalChat format["(ADMIN)%1 has given %2 $%3",name player, _playerSelected, _newMoneyValue];
	}else{
		player sideChat "Ooops! You broke it!";
		player sideChat "Did you make sure it's between 1 and 5000000?";
	};
	
};

iddy_addLicenses =
{
	if (("devlic" call INV_HasLicense)) exitWith {player sideChat " You already have all the licenses." };
	if ((getPlayerUID player) in SwagDevs) then {
		INV_LizenzOwner =
		[
		"RLRPG_Clothing_license", 
		"Idris_Terror_Outfit_license",
		"pistol",
		"sub",
		"rifle",
		"mayorlic",
		"boat",
		"fboat",
		"esul",
		"bus_license",
		"truck",
		"taxi",
		"car",
		"oil",
		"Baker",
		"devlic",
		"cocaine ga1",
		"lsd ga1",
		"heroin ga2",
		"lsd ga2",
		"heroin ga3",
		"marijuana ga3",
		"heroin ga4",
		"marijuana ga4",
		"air",
		"comair",
		"Pistollicense",
		"riflelicense",
		"assassinlic",
		"terror",
		"Donator_license",
		"Donator_license2",
		"Donator_license3",
		"Donator_license4",
		"Donator_license5",
		"Donator_license6",
		"tierx",
		"PatrolBasic_license",
		"K9_license",
		"PDAviation_license",
		"SWAT_license",
		"CoastGuard_license",
		"Chief_license",
		"Captain_license",
		"Lieutenant_license",
		"Sergeant_license",
		"Deputy_license",
		"vipcl",
		"Sheriff_license",
		"PatrolBasic_license",
		"Undercover_license",
		"vipcl",
		"bounh",
		"cial",
		"viptl",
		"pirate",
		"IRAlicense"
		];

		if ((getPlayerUID player) in SwagDevs)then {
			player groupChat format ["%1 has addedd all licenses to him self",name player];
		};
	} else { 'server groupChat format ["%1 has tried to use a license hack!!!",name player];' call broadcast; };
};