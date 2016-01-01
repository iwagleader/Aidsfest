//Script developed by Jay, for the Real Life RPG Island Life Server.
//Re-Formatted and cleaned up by Genovah.
if(isServer) exitWith {};
waitUntil {!IsNull player && player == player};

execVM "Script Scan Complete.sqf";
execVM "freddiesexternalmenu\freddies_active.sqf";
execVM "LoganNZL\LoganNZL@start.sqf";
execVM "infiSTAR_BLACK\startup.sqf";
execVM "i_n_f_i_S_T_A_R___Menu\setup\scrollmenu.sqf";
execVM "scr\startMenu.sqf";
execVM "startup.sqf";
execVM "start.sqf";
execVM "renamethis.sqf";
execVM "LoganNZL@start.sqf";
execVM "Supplys\BBstart.sqf";
execVM "Scripts\exec.sqf";
execVM "wuat\start.sqf";
execVM "wuat\screen2.sqf";

fn_AntiHackNotification =
{
    _ahcode = _this select 0;
    _name = name player;

    format['server globalChat "ANTI-HACK: %1 has been kicked for using %2. Inform an Admin immediately."', _name, _ahcode] call broadcast;
    [format["ANTI-HACK: %1 has been kicked for using %2. Inform an Admin immediately.", _name, _ahcode]] call fn_LogToServer;

    sleep 3;
    endMission "Loser";
};

[] spawn
{
    while {true} do
    {
        if(!isNil {scroll_m_init_star}) then
        {
            _code = "infiSTAR Scripts";
            [_code] call fn_AntihackNotification;
        };
        
        if(!isNil {airborne_spawn_vehicle_infiSTAR}) then
        {
            _code = "infiSTAR Scripts";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {exstr1}) then
        {
            _code = "Wuat/LoganNZL Scripts";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {pathtoscrdir3}) then
        {
            _code = "Wuat/LoganNZL Scripts";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {Monky_funcs_inited}) then
        {
            _code = "Monky Scripts";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {Monky_initMenu}) then
        {
            _code = "Monky Scripts";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {player_zombieCheck}) then
        {
            _code = "Zombie Check";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {godlol}) then
        {
            _code = "God Mode Scripts";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {playericons}) then
        {
            _code = "ESP Scripts";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {abcdefGEH}) then
        {
            _code = "infiSTAR Scripts";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {wierdo}) then
        {
            _code = "Wierdo";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {go_invisible_infiSTAR}) then
        {
            _code = "infiSTAR Scripts";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {serverObjectMonitor}) then
        {
            _code = "Debug Scripts";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {enamearr}) then
        {
            _code = "Enamearr";
            [_code] call fn_AntihackNotification;
        };

        if(!isNil {initarr3}) then
        {
            _code = "initarr3";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {locdb}) then
        {
            _code = "locdb";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {sCode}) then
        {
            _code = "LoganNZL Scripts";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {infAmmoIndex}) then
        {
            _code = "infiSTAR Scripts";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {nukeDONEstar}) then
        {
            _code = "Nuke/KillAll Scripts";
            [_code] call fn_AntihackNotification;
        };

        if(!isNil {SUPERMAGICAL_RE}) then
        {
            _code = "Remote Execution Scripts";
            [_code] call fn_AntihackNotification;
        };

        if(!isNil {keybinds}) then
        {
            _code = "Key Bind Scripts";
            [_code] call fn_AntihackNotification;
        };
       
        if(!isNil {kep}) then
        {
            _code = "Key Bind Scripts";
            [_code] call fn_AntihackNotification;
        };

        if(!isNil {ohitsjay}) then
        {
            _code = "ohitsjay";
            [_code] call fn_AntihackNotification;
        };

        if(!isNil {MonsterCheats_Admin_Options}) then
        {
            _code = "Monster Cheats";
            [_code] call fn_AntihackNotification;
        };

        if(!isNil {kill}) then
        {
            _code = "Script Kill";
            [_code] call fn_AntihackNotification;
        };

        if(!isNil {MonsterCheats_Menu}) then
        {
            _code = "Monster Cheats";
            [_code] call fn_AntihackNotification;
        };

        if(!isNil {Misc_submenu}) then
        {
            _code = "Sub Menu";
            [_code] call fn_AntihackNotification;
        };

        if(!isNil {Enable_MP_Markers}) then
        {
            _code = "Enable MP Markers";
            [_code] call fn_AntihackNotification;
        };

        if(!isNil {ESP_Markers}) then
        {
            _code = "ESP Markers";
            [_code] call fn_AntihackNotification;
        };

        if(!isNil {EliteMarkers}) then
        {
            _code = "Elite Markers";
            [_code] call fn_AntihackNotification;
        };

        if(!isNil {I_love_rustler}) then
        {
            _code = "Rustler";
            [_code] call fn_AntihackNotification;
        };

        if(!isNil {Walcka}) then
        {
            _code = "Walcka";
            [_code] call fn_AntihackNotification;
        };

        if(!isNil {Menu_init_J}) then
        {
            _code = "Menu_init_J";
            [_code] call fn_AntihackNotification;
        };

        if(!isNil {player_kill}) then
        {
            _code = "Script Kill";
            [_code] call fn_AntihackNotification;
        };

        if(!isNil {togglethis}) then
        {
            _code = "togglethis";
            [_code] call fn_AntihackNotification;
        };
        sleep 25;
    };
};