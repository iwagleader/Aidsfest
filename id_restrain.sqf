private ["_man","_restrain"];

_man = cursorTarget;
_restrain = _man getVariable "Cuffed";

if(_restrain) then {
	[false] call Speedy_Police_RestrainUnit;
} else {
	[true] call Speedy_Police_RestrainUnit;
};