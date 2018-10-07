/****************************************************************
Script: Mission init
Author:
Script version:

Game type: coop
File: initServer.sqf
****************************************************************/
EAST setFriend [CIVILIAN, 1];
WEST setFriend [CIVILIAN, 1];
INDEPENDENT setFriend [CIVILIAN, 1];

execVM "HG\Setup\fn_serverInitialization.sqf";
[] execVM "scripts\kp_wreckspawn.sqf";

["Initialize"] call BIS_fnc_dynamicGroups;

["RC_Logic\initMarkerUCM.sqf","BIS_fnc_execVM",true,true ] call BIS_fnc_MP;

["RC_Logic\ucmTasks.sqf","BIS_fnc_execVM",true,true ] call BIS_fnc_MP;

["RC_Logic\initVar.sqf","BIS_fnc_execVM",true,true ] call BIS_fnc_MP;

["RC_Logic\initTrigger.sqf","BIS_fnc_execVM",true,true ] call BIS_fnc_MP;

// load SME.Gen mission params
[] call T8SME_INIT_fnc_params;


// check for missing addons
if ( call T8SME_server_fnc_checkAddons ) exitWith {};


// initialize SME.Gen server
[] spawn T8SME_INIT_fnc_server;


// initialize garbage collecting ( bodies / wrecks now handled via BIS/description )
[] execVM "scripts\garbageCollector.sqf";

waitUntil {player == player && time > 1};

call compile preprocessFileLineNumbers "RC_Logic\sectorControl.sqf";
