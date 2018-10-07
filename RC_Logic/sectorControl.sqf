
while {alive player} do{

private ["_eosmarkers","_vehpos","_vehname","_markers","_markersRed","_countTotMarkers","_countRedMarkers","_countGreenMarkers","_markersGreen"];

{
  _eosmarkers = server getvariable "EOSmarkers"; //tutte le zone eos salvate in un array
  _vehpos = _x select 0; //posizione settore
  _vehname = _x select 1; //nome settore m1, m2,...m10...
  _markers = _eosmarkers select {(getMarkerPos _x) inArea _vehname}; //seleziona le zone all'interno del settore
  _markersRed = _markers select {getMarkerColor _x == "ColorRed"};
  _markersGreen = _markers select {getMarkerColor _x == "ColorGreen"};
  _countTotMarkers = count _markers;
  _countRedMarkers = count _markersRed;
  _countGreenMarkers = count _markersGreen;
//  diag_log format ["nome marker %3, marker totali %1 , marker rossi%2", _countTotMarker, _countRedMarkers, _vehname]

call{

  if ((_countTotMarkers == _countRedMarkers) && (_countTotMarkers != 0)) exitWith{ //se tutte le zone sono rosse, settore perso
    _vehname setMarkerColor "ColorRed";
    _vehname setMarkerBrush "FDiagonal";
    RC_server_var_enemy_sector pushBackUnique _vehname;
    //RC_server_var_fighting_sector deleteAt (RC_server_var_fighting_sector find "_vehname");
    //RC_server_var_friendly_sector deleteAt (RC_server_var_friendly_sector find "_vehname");
    //calcolare la perdita economica del settore perso.
  };

  if ((_countRedMarkers >= 1) && !(_countTotMarkers == _countRedMarkers)) exitWith{ //se sono presenti le zone rosse, il settore è contestato
    _vehname setMarkerBrush "Border";
    _vehname setMarkerColor "ColorRed";
    RC_server_var_fighting_sector pushBackUnique _vehname;
    //RC_server_var_enemy_sector deleteAt (RC_server_var_enemy_sector find "_vehname");
    //RC_server_var_friendly_sector deleteAt (RC_server_var_friendly_sector find "_vehname");
    // calcolare la perdita economica del settore contestato.
  };

  if (count _markers == 0) exitWith{
    _vehname setMarkerColor "ColorWhite";
    RC_server_var_neutral_sector pushBackUnique _vehname
    //TODO: settore senza eosmarker; è possibile creare missioni secondarie
  };

  if ((_countTotMarkers == _countGreenMarkers) && (_countTotMarkers != 0)) exitWith{ //se tutte le zone sono verdi, settore vinto
    _vehname setMarkerColor "ColorGreen";
    _vehname setMarkerBrush "FDiagonal";
    RC_server_var_friendly_sector pushBackUnique _vehname;
    //calcolare il guadagno economico del settore conquistato.
  };
};

} foreach posTrig;

}; sleep 120
