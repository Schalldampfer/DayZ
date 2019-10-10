diag_log ("custom compiles.sqf");

if (isServer) then {
};

if (!isDedicated) then {
	call compile preprocessFileLineNumbers "dayz_code\loot\init.sqf";//Loot init
	
	player_toggleSoundMute = compile preprocessFileLineNumbers "dayz_code\compile\player_toggleSoundMute.sqf";
	player_selectSlot = compile preprocessFileLineNumbers "dayz_code\compile\ui_selectSlot.sqf";
	player_spawnCheck = compile preprocessFileLineNumbers "dayz_code\compile\player_spawnCheck.sqf";
	building_spawnLoot = compile preprocessFileLineNumbers "dayz_code\compile\building_spawnLoot.sqf";
	zombie_generate = compile preprocessFileLineNumbers "dayz_code\compile\zombie_generate.sqf";
};

fnc_usec_damageHandler = compile preprocessFileLineNumbers "dayz_code\compile\fn_damageHandler.sqf";
local_zombieDamage = compile preprocessFileLineNumbers "dayz_code\compile\fn_damageHandlerZ.sqf";
local_eventKill = compile preprocessFileLineNumbers "dayz_code\compile\local_eventKill.sqf";
