/* EOS 1.98 by BangaBob
GROUP SIZES
 0 = 1
 1 = 2,4
 2 = 4,8
 3 = 8,12
 4 = 12,16
 5 = 16,20

EXAMPLE CALL - EOS
 null = [["MARKERNAME","MARKERNAME2"],[2,1,70],[0,1],[1,2,30],[2,60],[2],[1,0,10],[1,0,250,WEST]] call EOS_Spawn;
 null=[["M1","M2","M3"],[HOUSE GROUPS,SIZE OF GROUPS,PROBABILITY],[PATROL GROUPS,SIZE OF GROUPS,PROBABILITY],[LIGHT VEHICLES,SIZE OF CARGO,PROBABILITY],[ARMOURED VEHICLES,PROBABILITY], [STATIC VEHICLES,PROBABILITY],[HELICOPTERS,SIZE OF HELICOPTER CARGO,PROBABILITY],[FACTION,MARKERTYPE,DISTANCE,SIDE,HEIGHTLIMIT,DEBUG]] call EOS_Spawn;

EXAMPLE CALL - BASTION
 null = [["BAS_zone_1"],[3,1],[2,1],[2],[0,0],[0,0,EAST,false,false],[10,2,120,TRUE,TRUE]] call Bastion_Spawn;
 null=[["M1","M2","M3"],[PATROL GROUPS,SIZE OF GROUPS],[LIGHT VEHICLES,SIZE OF CARGO],[ARMOURED VEHICLES],[HELICOPTERS,SIZE OF HELICOPTER CARGO],[FACTION,MARKERTYPE,SIDE,HEIGHTLIMIT,DEBUG],[INITIAL PAUSE, NUMBER OF WAVES, DELAY BETWEEN WAVES, INTEGRATE EOS, SHOW HINTS]] call Bastion_Spawn;
*/

EOS_Spawn = compile preprocessfilelinenumbers "eos\core\eos_launch.sqf";
Bastion_Spawn=compile preprocessfilelinenumbers "eos\core\b_launch.sqf";
null=[] execVM "eos\core\spawn_fnc.sqf";
if (isServer) then {["updateEOSmkrs","onplayerConnected", {[] execVM "eos\functions\EOS_Markers.sqf";}] call BIS_fnc_addStackedEventHandler;};


VictoryColor="colorGreen";	// Colour of marker after completion
hostileColor="colorRed";	// Default colour when enemies active
bastionColor="colorOrange";	// Colour for bastion marker
EOS_DAMAGE_MULTIPLIER=1;	// 1 is default
EOS_KILLCOUNTER=true;		// Counts killed units

null = [["EOSinf_1","EOSinf_2","EOSinf_4","EOSinf_5","EOSinf_6","EOSinf_7","EOSinf_8","EOSinf_9","EOSinf_10","EOSinf_11","EOSinf_12","EOSinf_13","EOSinf_14","EOSinf_15","EOSinf_16","EOSinf_17","EOSinf_18","EOSinf_19","EOSinf_20","EOSinf_21","EOSinf_22","EOSinf_23","EOSinf_24","EOSinf_25"],[1,1],[1,1,0],[0,0],[0],[0],[0,0],[1,0,350,WEST,TRUE]] call EOS_Spawn;
null = [["EOSmot_1","EOSmot_2"],[0,0],[0,0],[3,1,90],[2,60],[0],[1,0,90],[1,0,350,WEST,FALSE]] call EOS_Spawn;
null = [["BAS_zone_1"],[0,1],[0,2],[0],[1,2],[1,0,WEST,TRUE],[0,2,120,TRUE,FALSE]] call Bastion_Spawn;
null = [["EOSinf_3"],[0,0],[0,0,0],[0,0],[0],[0],[0,0],[0,0,350,EAST,TRUE]] call EOS_Spawn; //EOSinf_3 zona verde
