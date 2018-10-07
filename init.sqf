/****************************************************************
Script: Mission init
Author: Alex
Script version: 0.1

Game type: coop
File:
****************************************************************/

//enableSaving [false,false];
//enableTeamswitch false;

//nopop=true;

//waitUntil{!isNil "BIS_fnc_init"};

// JIP Check (This code should be placed first line of init.sqf file)
//if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};

// TFAR Settings
tf_no_auto_long_range_radio		= true;

// set all TFAR radios to same encryption
tf_west_radio_code				= "encrypt_alliance";
tf_east_radio_code				= "encrypt_alliance";
tf_guer_radio_code				= "encrypt_alliance";

// viewDistance settings (addons / scripts)
tawvd_disablenone	= true;
CHVD_allowNoGrass	= false;		// Set 'false' if you want to disable "None" option for terrain (default: true)
CHVD_maxView		= 3500;			// Set maximum view distance (default: 12000)
CHVD_maxObj			= 2500;			// Set maximimum object view distance (default: 12000)

// Set friendly/enemy sides
EAST setFriend [WEST, 0];
WEST setFriend [EAST, 0];
RESISTANCE setFriend [WEST, 1];
RESISTANCE setFriend [EAST, 0];
EAST setFriend [RESISTANCE, 0];
WEST setFriend [RESISTANCE, 1];
CIVILIAN setFriend [ WEST, 1 ];
CIVILIAN setFriend [ EAST, 0 ];
CIVILIAN setFriend [ RESISTANCE, 1 ];

//VCOM SYSTEM
[] execVM "Vcom\VcomInit.sqf";

//EOS SYSTEM
[]execVM "eos\OpenMe.sqf";

// initialize BIS Dynamic Groups
waitUntil { time > 5 };
if ( isServer ) then { [ "Initialize", [ true ]] spawn BIS_fnc_dynamicGroups; };
if ( hasInterface ) then { [ "InitializePlayer", [ player, true ]] spawn BIS_fnc_dynamicGroups; };
