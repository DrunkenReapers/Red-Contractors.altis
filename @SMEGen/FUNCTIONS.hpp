/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator

	File:		FUNCTIONS.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net


 =======================================================================================================================
*/

#define addFunction(fncName) class fncName { headerType = -1; }
#define addFunctionPre(fncName) class fncName { headerType = -1; preInit = 1; }
#define addFunctionPost(fncName) class fncName { headerType = -1; postInit = 1; }

// class cfgFunctions
// {

	class T8SME_INIT
	{
		class init
		{
			file = "@SMEGen\fnc_init";

			addFunctionPre(vars);
			addFunction(params);
			addFunction(server);
			addFunction(client);
		};
	};

	class T8SME_server
	{
		class randomMission
		{
			file = "@SMEGen\fnc_srv";

			addFunction(blowIED);
			addFunction(buildUnitArray);
			addFunction(checkAddons);
			addFunction(checkFlatGround);
			addFunction(checkOutside);
			addFunction(cleanUP);
			addFunction(createAO);
			addFunction(createAmmoDump);
			addFunction(createAttack);
			addFunction(createConvoy);
			addFunction(createFuelDump);
			addFunction(createGetIntel);
			addFunction(createHeliCrash);
			addFunction(createHVT);
			addFunction(createMarker);
			addFunction(createMortarPos);
			addFunction(createRadioTower);
			addFunction(createRecoverUGV);
			addFunction(createRoadIED);
			addFunction(createRoadblock);
			addFunction(createRoadblockHouse);
			addFunction(createSmallCamp);
			addFunction(createVehiclePatrols);
			addFunction(fillUnitArray);
			addFunction(findCenter);
			addFunction(findObjectivePos);
			addFunction(findObjectivePositions);
			addFunction(getVehicleClass);
			addFunction(getVehicleGroup);
			addFunction(handleConditions);
			addFunction(handleDisplays);
			addFunction(handleFollowingTask);
			addFunction(handleNewTasks);
			addFunction(handleReward);
			addFunction(handleVehicles);
			addFunction(markBlackBox);
			addFunction(objectsMapper);
			addFunction(publishTasks);
			addFunction(selectRandom);
			addFunction(shuffleArray);
			addFunction(surrenderHVT);
			addFunction(testFnc);
			addFunction(unlockUGV);

			addFunction(IFA3_createAmmoBase);
			addFunction(IFA3_createFlakPos);
			addFunction(IFA3_createMortarPos);
			addFunction(IFA3_createRadarBase);
			addFunction(IFA3_createRoadblock);
		};
	};

	class T8SME_client
	{
		class client
		{
			file = "@SMEGen\fnc_cli";

			addFunction(addActionIntel);
			addFunction(addDiary);
			addFunction(checkAddons);
			addFunction(checkGetIn);
			addFunction(checkSlots);
			addFunction(checkSwitchSeat);
			addFunction(debugKeysAdd);
			addFunction(debugKeysPress);
			addFunction(debugSiteMarkers);
			addFunction(drawIcons);
			addFunction(drawMapIcons);
			addFunction(handleReward);
			addFunction(handleVehicle);
			addFunction(keysAdd);
			addFunction(keysPress);
			addFunction(restricVehicle);
			addFunction(serviceVehicle);
			addFunction(teleport);
			addFunction(updateArsenal);
			addFunction(welcome);
		};
	};
// };
