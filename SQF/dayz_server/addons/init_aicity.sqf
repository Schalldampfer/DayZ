
if (!isServer) exitWith {};
diag_log "[AICity] Loading AI cities";

if (isNil "wai_crate_setup") then {
	wai_crate_setup = {
		private ["_crate"];
		_crate = _this;
		_crate setVariable ["ObjectID","1",true];
		_crate setVariable ["ObjectUID", "1", true];
		_crate setVariable ["permaLoot",true];
		clearWeaponCargoGlobal _crate;
		clearMagazineCargoGlobal _crate;
		dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_crate];
		_crate addEventHandler ["HandleDamage", {}];
	};
};

//AI cities
call compile preProcessFileLineNumbers "\z\addons\dayz_server\addons\NorthWestAirfield.sqf";

//others
call compile preProcessFileLineNumbers "\z\addons\dayz_server\addons\Others.sqf";

diag_log "[AICity] AI cities are loaded";
