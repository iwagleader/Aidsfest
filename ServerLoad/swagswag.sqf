if (!(createDialog "swagswag_life")) exitWith {hint "Dialog Error!";};
_items = 0;
for [{_i=0}, {_i < (count INV_InventarArray)}, {_i=_i+1}] do 
{
_item  = ((INV_InventarArray select _i) select 0);
_s = (_item call INV_GetItemAmount);
if (_s > 0) then 
	{
	_index = lbAdd [15009, format ["%1 - %2", (_item call INV_getitemName),[(_s)] call RLRPG_FormatAmount]];
	lbSetData [15009, _index, _item];
	_items = _items + 1;
	};
};
if (_items == 0) exitWith {player groupChat localize "STRS_inv_inventardialog_empty";};
for [{_c=0}, {_c < (count INV_PLAYERSTRINGLIST)}, {_c=_c+1}] do 
{
_swag = INV_PLAYERSTRINGLIST select _c;
if (_swag call ISSE_UnitExists) then 
	{	
	_index = lbAdd [21009, format ["%1 - (%2)", _swag, name (call compile _swag)]];
	lbSetData [21009, _index, format["%1", _c]];
	};
};
if (player == player) then 
	{	
	lbAdd [1501,format ["Name : %1",name player]];
    lbAdd [1501,format ["Player ID : %1",getplayerUID player]];
	};
lbSetCurSel [21009, 0];
lbSetCurSel [15009, 0];
lbSetCurSel [1501,0];
buttonSetAction [16009,format["[""use"",  lbData [15009, (lbCurSel 15009)], ctrlText 10009, lbData [21009, (lbCurSel 21009)]] execVM ""INVactions.sqf""; closedialog 0;"] ];
buttonSetAction [16019,format["[""drop"", lbData [15009, (lbCurSel 15009)], ctrlText 10009, lbData [21009, (lbCurSel 21009)]] execVM ""INVactions.sqf""; closedialog 0;"] ];
buttonSetAction [16029,format["[""give"", lbData [15009, (lbCurSel 15009)], ctrlText 10009, lbData [21009, (lbCurSel 21009)]] execVM ""INVactions.sqf""; closedialog 0;"] ];
Banking_Swag_Life = {
	private["_yolo"];
	_yolo = false;
	if (getplayeruid player in Donate_id) then 
	{
	_yolo = true;
	};
	if (("Bankingapp" call INV_GetItemAmount) >= 1) then 
	{
	_yolo = true;
	};
	_yolo
};
Bank_Swag = {
	if (call Banking_Swag_Life) then 
	{
		execVM "atm.sqf";
	} else {
		player groupchat "You don't have a Banking-App, you may wana checkout the App Store/Make sure you are a Donator.";
           };
};
