
if(player getVariable['humanity',0] > 2500) then {
	{
		private ["_pos","_name","_marker"];
		_pos = getPos _x;
		_name = format["%1%2",typeOf _x,floor((_pos select 0)*10000 + (_pos select 1))];
		_marker = createMarkerLocal [_name,_pos];
		_marker setMarkerColorLocal "ColorBlue";
		_marker setMarkerTextLocal (getText (configFile >> "CfgVehicles" >> (typeOf _x) >> "displayName"));
		_marker setMarkerTypeLocal "selector_selectable";
		if (locked _x) then {_marker setMarkerColorLocal "ColorBrown";};
		if (count (crew _x) > 0) then {_marker setMarkerColorLocal "ColorRed";};
		_marker spawn {sleep 15;deleteMarkerLocal _this;};
	} forEach (_pos nearEntities [["Air", "Ship","LandVehicle"],750]);
	"Vehicles are marked on Map" call dayz_rollingMessages;
} else {
	"You are not allowed to scan." call dayz_rollingMessages;
};
