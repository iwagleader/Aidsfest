_art 	   = _this select 0;

if (_art == "submit") then
{
	_codeInput = ctrlText 2920;
	format['speedyVault animate ["d_o_Anim",0];'] call swag;
	format['speedyVault animate ["d_l_Anim",0];'] call swag;
	format['speedyBank animate ["draincover_intAnim",0];'] call swag;
	format['speedyBank animate ["draincover_extAnim",0];'] call swag;
	format['speedyBank animate ["gate_1Anim",0];'] call swag;
	format['speedyBank animate ["gate_2Anim",0];'] call swag;
	format['speedyBank animate ["gate_3Anim",0];'] call swag;
	format['speedyBank animate ["gate_4Anim",0];'] call swag;
	format['speedyBank animate ["gate_5Anim",0];'] call swag;
	format['speedyBank animate ["door_1Anim",0];'] call swag;
	format['speedyBank animate ["door_2Anim",0];'] call swag;
	format['speedyBank animate ["door_3Anim",0];'] call swag;
	format['speedyBank animate ["door_4Anim",0];'] call swag;
	format['speedyBank animate ["door_5Anim",0];'] call swag;
	format['speedyBank animate ["door_6Anim",0];'] call swag;
	format['speedyBank animate ["door_7Anim",0];'] call swag;
	format['speedyBank animate ["door_8Anim",0];'] call swag;
	format['speedyBank animate ["lbd_Anim",0];'] call swag;
	format['speedyBank animate ["BarrierAnim",0];'] call swag;

	if (_codeInput != safeCodeSet) exitWith
	{
		player groupChat "That code is incorrect!";
		mainbank say3D "Bank_alarm";
		copbase1 say3D "Bank_alarm";
		format['server globalChat "Speedys Security INC Has Detected An Attempt To Hack Into The Bank Safe!";'] call broadcast;
		sleep 2;
		format['server globalChat "Speedys Security INC Has Reset The Safe Master Code!"'] call broadcast;
		[] call resetSafeCode;
	};
	
	if (_codeInput == safeCodeSet) then
	{
		player sideChat "The code is correct! The code has been reset by Speedys Security INC automatic bank reset system!";
		[] call resetSafeCode;
		player enableSimulation false;
		if (player distance safe1 <= 3) then
		{
		[0,1,2,["ausrauben", Safe1]] execVM "bankrob.sqf";
		22254 cutRsc["RL_Dialog_loading", "plain"];
		sleep 5;
		player sidechat "This might take 65 sec. or longer!";
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		[1112, "Starting Cracking",0] call RL_LoadingSetText;
		[1112, "Cracking...",1] call RL_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 5;
		[1112, "Cracking...",2] call RL_LoadingSetText;
		sleep 5;
		[1112, "Cracking...",3] call RL_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 5;
		[1112, "Cracking...",4] call RL_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 5;
		[1112, "Cracking...",5] call RL_LoadingSetText;
		sleep 5;
		[1112, "Cracking...",6] call RL_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 5;
		[1112, "Cracking...",7] call RL_LoadingSetText;
		sleep 5;
		[1112, "Cracking...",8] call RL_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 5;
		[1112, "Cracking...",9] call RL_LoadingSetText;
		sleep 5;
		[1112, "Cracking...",10] call RL_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 5;
		waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
		[1112, "Taking money...",15] call RL_LoadingSetText;
		sleep 5;
		[1112, "Taking money...",20] call RL_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 5;
		[1112, "Taking money...",25] call RL_LoadingSetText;
		sleep 5;
		[1112, "Taking money...",30] call RL_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 5;
		[1112, "Taking money...",35] call RL_LoadingSetText;
		sleep 5;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		[1112, "Taking money...",40] call RL_LoadingSetText;
		sleep 5;
		[1112, "Taking money...",45] call RL_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 5;
		[1112, "Taking money...",50] call RL_LoadingSetText;
		sleep 5;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
		[1112, "Taking money...",55] call RL_LoadingSetText;
		sleep 5;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		[1112, "Taking money...",60] call RL_LoadingSetText;
		sleep 5;
		[1112, "Taking money...",65] call RL_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 5;
		[1112, "Taking money...",70] call RL_LoadingSetText;
		sleep 5;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		[1112, "Taking money...",75] call RL_LoadingSetText;
		sleep 5;
		[1112, "Taking money...",80] call RL_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 5;
		[1112, "Taking money...",85] call RL_LoadingSetText;
		sleep 5;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		[1112, "Taking money...",90] call RL_LoadingSetText;
		sleep 5;
		[1112, "RUN!!!!!!!!!!!",100] call RL_LoadingSetText;
		22254 cutRsc["Default", "plain"];
		player enableSimulation true;
		};
	};
};