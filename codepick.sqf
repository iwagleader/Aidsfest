_art = _this select 0;

if (_art == "use") then 

{
	if(player distance jail <= 15) then 
	{
		["codeb", -1] call INV_AddInvItem;
		format['server globalChat "!!!!ALERT!!!! SOMEONE IS ATTEMTING TO BREAK INTO THE JAIL CONTROL ROOM!!!"'] call swag;
		if(speedyJailTimeout < 900)exitwith{player sideChat "SPEEDY'S JAIL SECURITY SYSTEM IS STILL BEING RESET, PLEASE WAIT"};
		if ((random 100) < 40) then 
		{	
			22254 cutRsc["RL_Dialog_loading", "plain"];
			sleep 1;
			[1112, "PLEASE WAIT.....CODE BREAKER BOOTING UP....",0] call RL_LoadingSetText;
			sleep 3;
			[1112, "PLEASE WAIT.....CRACKING CONTROL ROOM CODE....",25] call RL_LoadingSetText;
			sleep 5;
			[1112, "PLEASE WAIT.....CRACKING CONTROL ROOM CODE....",50] call RL_LoadingSetText;
			sleep 5;
			[1112, "PLEASE WAIT.....CRACKING CONTROL ROOM CODE....",75] call RL_LoadingSetText;
			sleep 5;
			[1112, "PLEASE WAIT.....CRACKING CONTROL ROOM CODE....",100] call RL_LoadingSetText;
			sleep 3;
			[1112, "CONTROL ROOM CODE HAS BEEN FOUND! OPENING DOOR!",100] call RL_LoadingSetText;
			sleep 5;
			22254 cutRsc["Default", "plain"];
			format['server globalChat "!!!!ALERT!!!! SOMEONE HAS SUCCESSFULLY BROKEN INTO THE JAIL CONTROL ROOM!!!"'] call swag;
			jail animate ["Open_wache",1];
			jail animate ["Open_schranke",1];
		}else{
			player sideChat "YOUR CODE BREAKER HAS MALFUNCTIONED AND IS NOW REBOOTING.....";
			sleep 2;
			player sideChat "DURING THE REBOOT YOUR CODE BREAKER HAS SHORTED OUT";
		};
	}else{
		player sideChat "You are not close enough to the control room";
	};
};
								
		