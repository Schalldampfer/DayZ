
//CV
[
	["Land_Destroyer", [15866.294, 8380.7637, 0], 2.87831],
	["Land_Fregata", [6242.1689, 705.6745, 0], -122.49081],
	["MAP_LHD_1", [15507.73, 8550.8174, 0],0],
	["MAP_LHD_2", [15507.713, 8550.8584, 0],0],
	["MAP_LHD_3", [15507.682, 8550.8799, 0],0],
	["MAP_LHD_4", [15507.691, 8551.083, 0],0],
	["MAP_LHD_5", [15507.705, 8551.2568, 0],0],
	["MAP_LHD_6", [15507.72, 8551.3105, 0],0],
	["MAP_LHD_elev_R", [15507.488, 8551.3721, 0],0],
	["MAP_LHD_house_1", [15507.705, 8550.9775, 0],0],
	["MAP_LHD_house_2", [15507.715, 8550.9795, 0],0]
] call {
	private ["_object"];
	{
		_object = (_x select 0) createVehicle [0,0,0];
		_object setDir (_x select 2);
		_object setPos (_x select 1);
		_object enableSimulation false;
	} count _this;
};
