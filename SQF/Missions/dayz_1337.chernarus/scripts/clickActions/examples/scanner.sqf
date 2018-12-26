private ["_pos","_name","_marker"];
if(player getVariable['humanity',0] > 2500) then {
	{
		if (count (crew _x) == 0) then {
			_pos = getPos _x;
			_name = format["%1%2",typeOf _x,floor((_pos select 0)*10000 + (_pos select 1))];
			_marker = createMarkerLocal [_name,_pos];
			_marker setMarkerTextLocal "vehicle?";
			_marker setMarkerTypeLocal "hd_objective";
			_marker setMarkerSizeLocal [0.5,0.5];
			_marker spawn {sleep 15;deleteMarkerLocal _this;};
		};
	} forEach ((getpos player) nearEntities [["Air", "Ship","LandVehicle"],750]);
	"Vehicles are marked on Map" call dayz_rollingMessages;
} else {
	"You are not allowed to scan" call dayz_rollingMessages;
};
