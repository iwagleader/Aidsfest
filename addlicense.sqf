_this    = _this select 3;
_number  = _this select 0;
_art     = _this select 1;
if ((_art == "remove") or (_art == "add")) then 
{
	if (_art == "add") then 
	{
		_uid = getPlayerUID player;
		_license = ((INV_Lizenzen select _number) select 0);
		_name    = ((INV_Lizenzen select _number) select 2);
		_cost    = ((INV_Lizenzen select _number) select 3);
		if(_license call INV_HasLicense) exitWith {player groupChat localize "STRS_inv_buylicense_alreadytrue";};
		if(_license == "car" or _license == "truck")then{demerits = 10};
		if(_license == "Donator_license" and !(_uid in Donate_id)) exitWith { player groupChat "Restricted to Tier 1 Donators"};
		if(_license == "Donator_license2" and !(_uid in Donate_id2)) exitWith { player groupChat "Restricted to Tier 2 Donators"};
		if(_license == "Donator_license3" and !(_uid in Donate_id3)) exitWith { player groupChat "Restricted to Tier 3 Donators"};
		if(_license == "Donator_license4" and !(_uid in Donate_id4)) exitWith { player groupChat "Restricted to Tier 4 Donators"};
		if(_license == "Donator_license5" and !(_uid in Donate_id5)) exitWith { player groupChat "Restricted to Tier 5 Donators"};
		if(_license == "Donator_license6" and !(_uid in Donate_id6)) exitWith { player groupChat "Restricted to Tier 6 Donators"};
		if(_license == "tierx" and !(_uid in TierX_id)) exitWith { player groupChat "Restricted to Tier X Weapons"};
		if(_license == "tierx" and !(_uid in TierX_id)) exitWith { player groupChat "Restricted to Tier X Items"};
		if(_license == "tierx" and !(_uid in TierX_id)) exitWith { player groupChat "Restricted to Tier X Cars"};
		if(_license == "tierx" and !(_uid in TierX_id)) exitWith { player groupChat "Restricted to Tier X Boats"};
		if(_license == "tierx" and !(_uid in TierX_id)) exitWith { player groupChat "Restricted to Tier X Terrors"};
		if(_license == "tierx" and !(_uid in TierX_id)) exitWith { player groupChat "Restricted to Tier X Helis"};
		if(_license == "PatrolBasic_license" and !(iscop)) exitWith { player groupChat "Restricted to Police"};
		if(_license == "Deputy_license" and !(_uid in Deputy_id)) exitWith { player groupChat "Restricted to Sheriff's Deputies"};
		if(_license == "Sheriff_license" and !(_uid in Sheriff_id)) exitWith { player groupChat "Restricted to the Sheriff"};
		if(_license == "Chief_license" and !(_uid in Chief_id)) exitWith { player groupChat "Restricted to the Chief of Police"};
		if(_license == "Captain_license" and !(_uid in Cpt_id)) exitWith { player groupChat "Restricted to Patrol Captains"};
		if(_license == "Lieutenant_license" and !(_uid in Lt_id)) exitWith { player groupChat "Restricted to the Patrol Lieutenants"};
		if(_license == "Sergeant_license" and !(_uid in Sgt_id)) exitWith { player groupChat "Restricted to the Patrol Sergeants"};
		if(_license == "K9_license" and !(_uid in K9_id)) exitWith { player groupChat "Restricted to K-9 Officers"};
		if(_license == "PDAviation_license" and !(_uid in PDAviation_id)) exitWith { player groupChat "Restricted to Police Pilots"};
		if(_license == "SWAT_license" and !(_uid in SWAT_id)) exitWith { player groupChat "Restricted to S.W.A.T. Officers"};
		if(_license == "CoastGuard_license" and !(_uid in CoastGuard_id)) exitWith { player groupChat "Restricted to Coast Guard Authorized Personnel"};
		if(_license == "vipcl" and !(_uid in Donate_id)) exitWith {player groupChat "Restricted To Donators"}; 
		if(_license == "mafial" and streetrep < 15) exitWith { player groupChat "Your street reputation isn't high enough, you need 15 points at least."};
		if(_license == "mafial" and !(isciv)) exitWith { player groupChat "You need to be civilian!"};
		if(_license == "mayorlic" and !(ismayor)) exitWith { player groupChat "Restricted to Mayor"};
	    if(_license == "cial" and !(_uid in CIA_id)) exitWith { player groupChat "Restricted to Cicada International"};
	    if(_license == "millis" and !(_uid in NGArray)) exitWith { player groupChat "Restricted to NG's"};
		if(_license == "bounh" and !(_uid in BHArray)) exitWith { player groupChat "Restricted to Bounty Hunters!"};
		if(_license == "viptl" and !(_uid in Donate_id)) exitWith {player groupChat "Restricted To Donators"};
		if(_license == "devlic" and !(_uid in SwagDev)) exitWith { player groupChat "Restricted to Developers"}; 
		if(_license == "Undercover_license" and !(_uid in Undercover_id)) exitWith { player groupChat "Restricted to Undercover Cops!"};
		if(_license == "Undercover_license" and (_uid in Undercover_id)) then {isCop = true; isCiv = true; isUC = true;};
		if(_license == "RLRPG_Clothing_license" and !(isciv)) exitWith { player groupChat "You need to be civilian!"};
		if(_license == "esul2" and !(_uid in EMT1_id)) exitWith { player groupChat "You are not EMT 1"};
		if(_license == "esul3" and !(_uid in EMT2_id)) exitWith { player groupChat "You are not EMT 2"};
		if(_license == "esul4" and !(_uid in FD_id)) exitWith { player groupChat "You are not FD"};
		if(_license == "esul5" and !(_uid in AirESU_id)) exitWith { player groupChat "You are not EMT Air"};
		if(_license == "esul6" and !(_uid in ESUCommand_id)) exitWith { player groupChat "You are not ESU Command"};
		//if(_license == "Boomies_Clothing_license" and !(isciv)) exitWith { player groupChat "You need to be civilian!"};
		//if(_license == "Idris_Terror_Outfit_license" and !(isciv)) exitWith { player groupChat "You need to be civilian!"};
		[_cost, _name, "License", 1, _cost, _number] execVM "PurchaseItems.sqf";
		//['geld', -(_cost)] call INV_AddInvItem;
		//player groupChat format[localize "STRS_inv_buylicense_gottraining", (_cost call ISSE_str_IntToStr), _name];
		//if (('geld' call INV_GetItemAmount) < _cost) exitWith {player groupChat localize "STRS_inv_buylicense_nomoney";};
	} 
	else 
	{
		_license = ((INV_Lizenzen select _number) select 0);
		name    = ((INV_Lizenzen select _number) select 2);
		if (not(_license call INV_HasLicense)) exitWith {player groupChat localize "STRS_inv_buylicense_alreadyfalse";};
		INV_LizenzOwner = INV_LizenzOwner - [_license];
		player groupChat format[localize "STRS_inv_buylicense_losttraining", _name];
		["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
	};
};