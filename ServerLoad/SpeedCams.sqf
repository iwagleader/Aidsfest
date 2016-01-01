private ["_penalty"];
while {isciv or iscop} do
{
    _car    = vehicle player;
    _speed  = speed _car;
    _copOnCall = false;
	if(_car animationPhase "sirenAnim" > 0)then{_copOnCall = true;};
	if(_car animationPhase "lightbarAnim" > 0)then{_copOnCall = true;};
	if(_car animationPhase "ani_lights" > 0)then{_copOnCall = true;};
	if(_car animationPhase "ani_siren" > 0)then{_copOnCall = true;};
    {
    	if ((player == driver _car) and (_car distance _x < 50) and (_speed >= 120) and !(_copOnCall) and !(_car iskindof "Air")) then
        {
            _basecost = 30000;
            _inc = 1000;
            _speed  = speed _car;
          	_extra = (_speed - 120)*_inc;
            _cost = round(_basecost + _extra);     
            _type = typeOf _car;
            _speedyWarnings = 0;
        	if(_speed > 120)then
        	{                              
                titleCut [" ","white in",1];
                sleep 2;
                if(isamedic) exitWith {player sideChat "ESU Exempted From SpeedCam"};
                //(format['if(!("Excessive Speed" in %1_reason))then{%1_reason = %1_reason + ["Excessive Speed"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + %2;', player, _cost]) call broadcast;
                if (kontostand < _cost) then {
                	if(_speedyWarnings < 2) exitWith {
                		player sideChat format ["You have been caught by a SpeedCam, please slow down or your vehicle will be impounded (WARNING %1/1)",_speedyWarnings];
                		_speedyWarnings = _speedyWarnings + 1;
                	}; 
                    player sideChat "You did not have enough money to pay the speeding ticket, you car will now be impounded";
                    sleep 2;
                    player sideChat "You will now be ejected from your car as well as your fuel will be drained";
                    _car setFuel 0;
                    sleep 5;
                    player allowDamage false;
                    //vehicle player action ["eject",(vehicle player)];
                    format[{_x action ["eject",(vehicle _x)]} forEach crew _car] call broadcast;
                    waitUntil{(count crew _car) == 0};
                    [_car, "impoundSpeedCam"] execVM "impound.sqf";
                    player sideChat "Your vehicle has now been impounded";
                    sleep 2;
                    player allowDamage true;
                    format ['server globalchat "%3 has been caught speeding (%1/%2) by a SpeedCam and the Police Department has impounded their vehicle"',round(_speed),120,name player] call broadcast;
                    _speedyWarnings = 0;
                }else{
                   	//format ['server globalchat "%3 has been caught speeding (%1/%2) by a SpeedCam and has been fined ($%4)"',round(_speed),120,name player,_cost] call broadcast;
                   	player sideChat format ["You have been caught by a SpeedCam going (%1) and have been charged ($%2)",round(_speed),_cost];
            		kontostand = kontostand - _cost;
                };
            };
    	};
 
    } forEach speedcamarray;
    sleep 1;
};