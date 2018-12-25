diag_log ("custom compiles.sqf");

if (isServer) then {
};

if (!isDedicated) then {
	zombie_findTargetAgent = compile preprocessFileLineNumbers "dayz_code\compile\zombie_findTargetAgent.sqf";
	player_toggleSoundMute = compile preprocessFileLineNumbers "dayz_code\compile\player_toggleSoundMute.sqf";
};

local_zombieDamage = compile preprocessFileLineNumbers "dayz_code\compile\fn_damageHandlerZ.sqf";
local_eventKill = compile preprocessFileLineNumbers "dayz_code\compile\local_eventKill.sqf";
