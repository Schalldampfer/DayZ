private ["_escMenu","_typf","_mxBckpcks","_vehicle","_inVehicle"];
 
disableSerialization;
waitUntil {!isNull findDisplay 49};
_escMenu = findDisplay 49;
{
   _typf = typeOf cursortarget;
   _mxBckpcks = getNumber (configFile >> "CfgVehicles" >> _typf >> "transportmaxbackpacks");
   if (!(isNull _x) && !(_x == player || typeOf _x in ["WeaponHolder","DebugBoxPlayer_DZ"]) && (_mxBckpcks > 0)) exitWith
   {
      "You cannot log out near a storage unit!" call dayz_rollingMessages;
      _escMenu closedisplay 0;
   };
} foreach (nearestObjects [player, ["All"], 10]);

_vehicle = vehicle player;
_inVehicle = (_vehicle != player);
if (_inVehicle) exitWith {
  "You cannot log out in vehicles!" call dayz_rollingMessages;
  _escMenu closedisplay 0;
 };