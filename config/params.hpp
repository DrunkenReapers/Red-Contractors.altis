/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator

	File:		params.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net


 =======================================================================================================================
*/


class Params
{
	class param_titleSME
	{
		title		= "----- SME.Gen Settings -----";
		values[]	= {0};
		texts[]		= {"-----"};
		default		= 0;
	};

	class param_enemy
	{
		title		= "Enemy Faction";
		default		= 999;
		values[]	=
		{
			0, 1, 2, 3, 4, 5,
			20, 21, 22, 23, 24,
			50, 51, 52, 53, 54, 55, 56, 57, 58,
			70, 71, 72,
			999
		};

		texts[]		=
		{
			"CSAT", "CSAT Urban", "CSAT Guerilla", "AAF", "AAF - Guerilla", "NATO",
			"CUP - Takistan Army", "CUP - Takistan Locals", "CUP - NAPA", "CUP - USMC", "CUP - US Army",
			"RHS AFRF militia", "RHS AFRF VMF", "RHS AFRF VDV", "RHS GREF CHDKZ", "RHS GREF CDF", "RHS GREF UN", "RHS SAF Army", "RHS SAF militia", "RHS US Army OCP",
			"IFA3_OPFOR_SOV", "IFA3_GRNFOR_USA", "IFA3_BLUFOR_WEHR",
			"DEFAULT (from config)"
		};
	};

	class param_reward
	{
		title		= "Player Faction";
		default		= 999;
		values[]	=
		{
			0, 1, 2, 3,
			20, 21, 22, 23,
			50, 51, 52,
			70, 71,
			900,
			999
		};
		texts[]		=
		{
			"BLUFOR", "BLUFOR full Arsenal", "GRNFOR full Arsenal", "REDFOR full Arsenal",
			"CUP USMC", "CUP USMC full Arsenal", "CUP US Army", "CUP US Army full Arsenal",
			"RHS Independent", "RHS Independent full Arsenal", "RHS USMC",
			"IFA3 Wehrmacht", "IFA3 Wehrmacht full Arsenal",
			"BLUFOR - ACE",
			"DEFAULT (from config)"
		};
	};

	class param_sites
	{
		title		= "Simultaneous Mission Sites";
		values[]	= { 1,          2,			3,			4,			-1 };
		texts[]		= { "1 Site",	"2 Sites",	"3 Sites",	"4 Sites",	"DEFAULT (from config)" };
		default		= -1;
	};

	class param_sitesMinDist
	{
		title		= "Minimum Distance Between Mission Sites";
		values[]	= { 500,	1000,		1500,		2000,		3000,		4000,		-1 };
		texts[]		= { "500m",	"1000m",	"1500m",	"2000m",	"3000m",	"4000m",	"DEFAULT (from config)" };
		default		= -1;
	};

	class param_skill
	{
		title		= "AI Skill";
		values[]	= { 0,          1,			2,					999 };
		texts[]		= { "Militia",	"Army",		"Special Forces",	"DEFAULT - Militia" };
		default		= 999;
	};

	class param_loadout
	{
		title		= "Keep Loadout After Respawn";
		values[]	= { 0,		1,		999 };
		texts[]		= { "YES",	"NO",	"DEFAULT - Yes" };
		default		= 999;
	};

	class param_mapmarker
	{
		title		= "Show Map Marker for Players and Vehicles";
		values[]	= { 0,			1,			999 };
		texts[]		= { "ENABLED",	"DISABLED",	"DEFAULT - ENABLED" };
		default		= 999;
	};

	class param_vehiclepatrols
	{
		title		= "Allow Vehicle Patrols";
		values[]	= { 0,			1,			999 };
		texts[]		= { "ENABLED",	"DISABLED",	"DEFAULT - ENABLED" };
		default		= 999;
	};
/*
	class param_titleFAR
	{
		title		= "----- FAR Revive Settings -----";
		values[]	= {0};
		texts[]		= {"-----"};
		default		= 0;
	};


	//
	//	FAR Revive
	//

	class param_FAR_enable
	{
		title		= "enable/disable FAR Revive";
		values[]	= { 0,			1,			999 };
		texts[]		= { "ENABLED",	"DISABLED",	"DEFAULT - FALSE" };
		default		= 999;
	};

	class param_FAR_medic
	{
		title		= "Who can revive?";
		values[]	= { 0,			1,							2,			3,						999 };
		texts[]		= { "everyone",	"everyone with Medikit",	"medics",	"medics with medikit",	"DEFAULT - everyone with Medikit" };
		default		= 999;
	};

	class param_FAR_needfak
	{
		title		= "Will reviving consume a FirstAidKit";
		values[]	= { 0,		1,		999 };
		texts[]		= { "YES",	"NO",	"DEFAULT - NO" };
		default		= 999;
	};

	class param_FAR_bleedout
	{
		title		= "Who long can a player be unconcious?";
		values[]	= { 0,		1,		2,		3,		4,		5,		999 };
		texts[]		= { "60s",	"120s",	"180s",	"240s",	"300s", "360s", "DEFAULT - 240s" };
		default		= 999;
	};

	class param_FAR_health
	{
		title		= "How much health does a player have after reviving?";
		values[]	= { 0,		1,		2,		3,		999 };
		texts[]		= { "100%",	"75%",	"50%",	"25%",	"DEFAULT - 50%" };
		default		= 999;
	};

*/
	//
	//	BIS Revive
	//

	class param_titleBISrevive
	{
		title		= "----- BIS Revive Settings -----";
		values[]	= {0};
		texts[]		= {"-----"};
		default		= 0;
	};

//	FUCKED FOR MP ...
//	#include "\A3\Functions_F\Params\paramRevive.inc"

	#include <paramsBisRevive.hpp>

};
