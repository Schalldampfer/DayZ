while {true} do {
	diag_log format["SERVER FPS: %1  PLAYERS: %2",round diag_fps,playersNumber west];
	diag_log format["DATE: %1  DSOM: %2",date,count dayz_serverObjectMonitor];
	{if (alive _x && isPlayer _x) then {diag_log format["%1 : %2", name _x, _x getVariable["humanity", "?"]];}; } forEach playableUnits;
	uiSleep 360;
};