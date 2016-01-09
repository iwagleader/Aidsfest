DD_fnc_LoadWhitelist = {
	_ranks = _this select 0;
	
	_rankCop = _ranks select 0;
	_rankDonator = _ranks select 1;
	_rankAdmin = _ranks select 2;
	_rankEMS = _ranks select 3;
	systemchat str _this;
	switch(_rankCop)do{
		case 0: {player setVariable["POLICERANK",0,true]};
		case 1: 
		{
			PO1_id = [getPlayerUID player];
			player setVariable["POLICERANK",1,true];
		};
		case 2:
		{
			PO2_id = [getPlayerUID player];
			player setVariable["POLICERANK",2,true];
		};
		case 3:
		{
			PO3_id = [getPlayerUID player];
			player setVariable["POLICERANK",3,true];
		};
		case 4:
		{
			Cpl_id = [getPlayerUID player];
			player setVariable["POLICERANK",4,true];
		};
		case 5:
		{
			Sgt_id = [getPlayerUID player];
			player setVariable["POLICERANK",5,true];
		};	
		case 6:
		{
			Lt_id = [getPlayerUID player];
			player setVariable["POLICERANK",6,true];
		};
		case 7:
		{
			Cpt_id = [getPlayerUID player];
			player setVariable["POLICERANK",7,true];
		};
		case 8:
		{
			Chief_id = [getPlayerUID player];
			player setVariable["POLICERANK",8,true];
		};
	};

	switch(_rankDonator)do{
		case 0: {};
		case 1: {
			Donate_id =[getPlayerUID player];
		};	
		case 2: 
		{
			Donate_id = [getPlayerUID player];
			Donate_id2 = [getPlayerUID player];
		};
		case 3:
		{
			Donate_id = [getPlayerUID player];
			Donate_id2 = [getPlayerUID player];
			Donate_id3 = [getPlayerUID player];
		};
		case 4:
		{
			Donate_id = [getPlayerUID player];
			Donate_id2 = [getPlayerUID player];
			Donate_id3 = [getPlayerUID player];
			Donate_id4 = [getPlayerUID player];
		};
		case 5:
		{
			Donate_id = [getPlayerUID player];
			Donate_id2 = [getPlayerUID player];
			Donate_id3 = [getPlayerUID player];
			Donate_id4 = [getPlayerUID player];
			Donate_id5 = [getPlayerUID player];
		};
		case 6:
		{
			Donate_id = [getPlayerUID player];
			Donate_id2 = [getPlayerUID player];
			Donate_id3 = [getPlayerUID player];
			Donate_id4 = [getPlayerUID player];
			Donate_id5 = [getPlayerUID player];
			Donate_id6 = [getPlayerUID player];
		};
		case 7:
		{
			Donate_id = [getPlayerUID player];
			Donate_id2 = [getPlayerUID player];
			Donate_id3 = [getPlayerUID player];
			Donate_id4 = [getPlayerUID player];
			Donate_id5 = [getPlayerUID player];
			Donate_id6 = [getPlayerUID player];
			TierX_id = [getPlayerUID player];
		};
	};	

	switch (_rankAdmin) do{
		case 0: {};
		case 1: {
			adminlevel2 = [getPlayerUID player];
		};
		case 2: {
			adminlevel3 = [getPlayerUID player];
		};
		case 3: {
			adminlevel4 = [getPlayerUID player];
		};
		case 4: {
			SwagDevs = [getPlayerUID player];
			Developer_id = [getPlayerUID player];
		};
	};

	switch(_rankEMS)do{
		case 0:{};
		case 1: {
			EMT1_id = [getPlayerUID player];
		};
		case 2: {
			EMT2_id = [getPlayerUID player];
			FD_id = [getPlayerUID player];
            AirESU_id = [getPlayerUID player];
		};
		case 3: {
			EMT3_id = [getPlayerUID player];
			FD_id = [getPlayerUID player];
            AirESU_id = [getPlayerUID player];
		};
		case 4: 
		{
		    FD_id = [getPlayerUID player];
            AirESU_id = [getPlayerUID player];
            ESUCommand_id = [getPlayerUID player];
		};
	};

	switch((_ranks select 8))do{
		case 1:
		{
			Deputy_id = [getPlayerUID player];
		};
		case 2:
		{
			Deputy_id = [getPlayerUID player];
			Sheriff_id =[getPlayerUID player];
		};
	};
	if((_ranks select 4) != 0)then{
		SWAT_id = [getPlayerUID player];
	};
	if((_ranks select 5) != 0)then{
		K9_id = [getPlayerUID player];
	};
	if((_ranks select 6) != 0)then{
		PDAviation_id = [getPlayerUID player];
	};
	if((ranks select 7) != 0)then{
		Undercover_id =[getPlayerUID player];
	};

	server globalChat "Received Whitelist!";
	systemChat "We have received and updated your whitelist entries!";
};		

DD_fnc_RefreshWhitelist = {
	format['if(isServer) then {[%1] call fn_RefreshWhitelist}', player] call swag;	
};