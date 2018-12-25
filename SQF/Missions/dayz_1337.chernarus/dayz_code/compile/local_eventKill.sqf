//[unit, selectionName, damage, source, projectile]
//will only run when local to the created object
//record any key hits to the required selection
private["_killer"];

_array = _this select 0;
_zed = _array select 0;
_killer = _array select 1;
_type = _this select 1;

if (local _zed) then {
	_kills = _killer getVariable[_type,0];
	_killer setVariable[_type,(_kills + 1),true];

	//increase players humanity when zed killed
	_humanity = _killer getVariable["humanity",0];
	if (_humanity < 2500) then {
		_humanity = _humanity + 1;
	} else {
		_humanity = _humanity + 5;
	};
	_killer setVariable["humanity",_humanity,true];

	//Explosive Zeds
	if (_zed isKindOf "z_soldier") then {
		_bomb = "B_25mm_HEI" createVehicle (getPos _zed);
		_bomb setPosATL getPosATL _zed;
	};
};