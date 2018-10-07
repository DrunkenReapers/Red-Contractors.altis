//prima task "costruzione fob composta da 45 elementi".
[east,["tsk1"],["Costruzione perimetro difensivo fob","Controlla il perimetro","Difendi"],[2690.05,9876.53,0],1,2,true] call BIS_fnc_taskCreate;

//controlla quanti elementi sono stati costruiti, al 45° elemento completato crea la seconda task.
private _areaMoved = ["UCM_ConstructionAreaMoved", {

	params ["_logicModule", "_currentPiece"];

	if (_currentPiece == UCM_piece_45) then {
		["tsk1", "SUCCEEDED",true] spawn BIS_fnc_taskSetState;
		[east,["tsk2"],["Costruisci il campo da Basket ad Athanos","Ricostruisci","Ripulisci e difendi"],[3686.66,10312,0],1,2,true] call BIS_fnc_taskCreate;
		cantiere_1 setMarkerAlpha 0;
		cantiere_2 setMarkerAlpha 1;
		//TODO fermare ondate nemici verso la FOB
	};

}] call CBA_fnc_addEventHandler;
