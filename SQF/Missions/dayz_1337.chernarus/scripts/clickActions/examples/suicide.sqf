private ["_Secondary","_onLadder","_player","_handguns","_dis","_onLadder"];

_player = player;

suicide_answer=nil;

//close gear
if(!(isNull findDisplay 106)) then {findDisplay 106 closeDisplay 0}; // close gear menu

//if (_player getVariable["inCombat",false]) exitWith {"You are in combat" call dayz_rollingMessages;};
_onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
if (_onLadder) exitWith {};
if ((typeOf _player) isKindOf "PZombie_VB") exitWith {};

DamiSpawn = 
[
	["Suicide Confirmation",true],
	["Are you sure?", [-1], "", -5, [["expression", ""]], "1", "0"],
	["", [-1], "", -5, 		[["expression", ""]], "1", "0"],
	["No", [2], "", -5, 	[["expression", "suicide_answer=false;"]], "1", "1"],
	["Yes", [3], "", -5, 	[["expression", "suicide_answer=true;"]], "1", "1"],
	["", [-1], "", -5, 		[["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, 	[["expression", "suicide_answer=false;"]], "1", "1"]
];
showCommandingMenu "#USER:DamiSpawn";

waitUntil {((!isNil 'suicide_answer')||(commandingMenu == ""))};

if (isNil 'suicide_answer') then {suicide_answer=false;};

if (suicide_answer) then {
	"You have grown tired of this endless battle." call dayz_rollingMessages;

	'dynamicBlur' ppEffectAdjust [0];
	'dynamicBlur' ppEffectCommit 5;

	_handguns = ["G17_DZ","G17_FL_DZ","G17_MFL_DZ","G17_SD_DZ","G17_SD_FL_DZ","G17_SD_MFL_DZ",
	"M9_DZ","M9_SD_DZ","M1911_DZ","Makarov_DZ","Makarov_SD_DZ","PDW_DZ","Revolver_DZ",
	"Sa61_EP1","UZI_SD_EP1","revolver_gold_EP1","MeleeFlashlight","MeleeFlashlightRed"];

	{
		if(_x in (weapons _player)) then {
			_player selectWeapon _x;
		};
		_player switchMove "";
		_player playActionNow "stop";
    } count _handguns;

	_player playmove (["ActsPercMstpSnonWpstDnon_suicide1B","ActsPercMstpSnonWpstDnon_suicide2B"] call BIS_fnc_selectRandom);
	playSound "heartbeat_1";

	sleep 6.8;
	_dis=50;
	[player,"scream",0,false,_dis] call dayz_zombieSpeak;

	ppe3 = ppEffectCreate ["radialBlur", 1556];
	ppe3 ppEffectEnable true;
	ppe3 ppEffectAdjust [random 0.02,random 0.02,0.15,0.15];
	ppe3 ppEffectCommit 1;

	sleep 1.6;
	[_player,_dis,true,(getPosATL _player)] spawn player_alertZombies;
	_player fire currentWeapon _player;
	sleep 0.2;

	[player,"suicide"] spawn player_death;
	ppEffectDestroy ppe3;

	diag_log format ["%1 (%2) commited suicide @%3",dayz_playerName, dayz_playerUID, mapGridPosition (getPosATL player)];
};
