/****************************************************************
Script: Local Player init
Author:
Script version:

Game type: coop
File: initPlayerServer.sqf
****************************************************************/
params["_player"];

[_player] execVM "HG\Setup\fn_playerServerInitialization.sqf";
