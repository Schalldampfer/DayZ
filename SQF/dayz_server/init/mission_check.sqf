//Temporary check for A2OA mission override exploit.
//This bug should be fixed in the next EOL patch.
//Put this code at the bottom of dayz_server\init\server_functions.sqf

//List of files in your mission to check. For example, you may want to add 'custom\variables.sqf' etc.
//Remove any you aren't using
_files = [
	'config.sqf','description.ext','init.sqf','mission.sqm','rules.sqf','z\addons\dayz_code\system\scheduler\sched_security.sqf',
	'custom\fn_halo.sqf','dayz_code\init\compiles.sqf','scripts\radio\switch_on_off.sqf','dayz_code\compile\Player_Debug.sqf',
	'dayz_code\compile\fn_damageHandler.sqf','dayz_code\compile\fn_damageHandlerZ.sqf','dayz_code\compile\local_eventKill.sqf',
	'dayz_code\compile\player_toggleSoundMute.sqf','dayz_code\compile\ui_selectSlot.sqf','dayz_code\compile\zombie_findTargetAgent.sqf',
	'scripts\clickActions\config.sqf','scripts\clickActions\init.sqf','scripts\clickActions\examples\scanner.sqf',
	'scripts\clickActions\examples\serverRules.sqf','scripts\clickActions\examples\suicide.sqf','scripts\dupe\DupingFix.sqf',
	'spawn\config.sqf','spawn\dialogs.hpp','spawn\init.sqf','spawn\main.sqf','scripts\time_control.sqf',
	'spawn\functions\class_fillItems.sqf','spawn\functions\class_pick.sqf','spawn\functions\class_preview.sqf',
	'spawn\functions\class_randomMags.sqf','spawn\functions\class_randomTools.sqf','spawn\functions\class_wipeGear.sqf',
	'spawn\functions\cleanup.sqf','spawn\functions\finish.sqf','spawn\functions\spawn_fill.sqf','spawn\functions\spawn_map.sqf','spawn\functions\spawn_pick.sqf'
];

_list = [];
{
	_file = toArray (toLower(preprocessFile _x));
	_sum = 0;
	_count = {_sum = _sum + _x; true} count _file;
	if (_count > 999999) then {_count = _count mod 999999}; //Prevent scientific notation when converting to string below
	if (_sum > 999999) then {_sum = _sum mod 999999};
	_list set [count _list,[_count,_sum]];
} forEach _files;

//Check mission integrity on all clients
_temp = "HeliHEmpty" createVehicle [0,0,0];
_temp setVehicleInit (str formatText["
	if (isServer) exitWith {};
	
	_list = [];
	{
		_file = toArray (toLower(preprocessFile _x));
		_sum = 0;
		_count = {_sum = _sum + _x; true} count _file;
		if (_count > 999999) then {_count = _count mod 999999};
		if (_sum > 999999) then {_sum = _sum mod 999999};
		_list set [count _list,[_count,_sum]];
	} forEach %1;
	
	_file = -1;
	{
		if ((_x select 0 != (_list select _forEachIndex) select 0) or (_x select 1 != (_list select _forEachIndex) select 1)) then {
			_file = _forEachIndex;
		};
	} forEach %2;

	if (_file != -1) then {
		MISSION_CHECK = if ((_list select _file) select 0 < 49999) then {preprocessFileLineNumbers (%1 select _file)} else {'TOO BIG'};
		publicVariableServer 'MISSION_CHECK';
		[] spawn {
			uiSleep 1;
			{(findDisplay _x) closeDisplay 2;} count [0,8,12,18,46,70];
		};
	};
",_files,_list]);

processInitCommands;