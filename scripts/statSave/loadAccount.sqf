[1112, "Loading Account Started",70] call RL_LoadingSetText;
[1112, "Init Load Stats",75] call RL_LoadingSetText;
[1112, "Loading Stats",80] call RL_LoadingSetText;
[1112, "Loading Stats",86] call RL_LoadingSetText;
[1112, "Loading Stats",88] call RL_LoadingSetText;
[1112, "Loading Stats",90] call RL_LoadingSetText;
//===========================================================================
//END
/*
statsLoaded = true;
publicVariable "statsLoaded"; 
statsAreLoadedForReal = true;
*/
[1112, "Loading Stats Complete",95] call RL_LoadingSetText;
player enableSimulation true;
[1112, "Real Life Modification Loading Complete",99] call RL_LoadingSetText;
[1112, "Welcome to a new day",100] call RL_LoadingSetText;
22254 cutRsc["Default", "plain"];
//_videoScript = ["ServerLoad\RLRPGIntro.ogg",1.04] spawn bis_fnc_customGPSvideo;
//waitUntil {scriptDone _videoScript};
["schluesselbund",1] call INV_AddInvItem;
waitUntil{!isNil "INV_AddInvItem"};