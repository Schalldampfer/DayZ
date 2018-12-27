private["_time","_hours","_minutes","_dmtit","_dmpic","_textCity","_nearestCity","_blood","_bldtext"];
diag_log "Debug monitor";
while {debugMonitor} do
{

	_time = round(serverTime/60);
	_hours = (floor(_time/60));
	_minutes = (_time - (_hours * 60));
	
	_nearestCity = nearestLocations [getPos player, ["NameCityCapital","NameCity","NameVillage","NameLocal"],750];
	_textCity = "Somewhere";
	if (count _nearestCity > 0) then {_textCity = text (_nearestCity select 0)};
	
	_dmpic = "";
	_dmtit = "";
	if (player == vehicle player) then {
		_dmpic = (gettext (configFile >> 'cfgWeapons' >> (currentWeapon player) >> 'picture'));
		_dmtit = (gettext (configFile >> 'cfgWeapons' >> (currentWeapon player) >> 'displayName'));
	} else {
		_dmpic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture'));
		_dmtit = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'displayName'));
	};

	_blood = (player getVariable['USEC_BloodQty', r_player_blood]);
	if (_blood > 8000) then {
		_bldtext = "Fine";
	} else {
		if (_blood < 4000) then {
			_bldtext = "Danger";
		} else {
			_bldtext = "Caution";
		};
	};
	
	switch(_minutes) do
	{
		case 9: {_minutes = "09"};
		case 8: {_minutes = "08"};
		case 7: {_minutes = "07"};
		case 6: {_minutes = "06"};
		case 5: {_minutes = "05"};
		case 4: {_minutes = "04"};
		case 3: {_minutes = "03"};
		case 2: {_minutes = "02"};
		case 1: {_minutes = "01"};
		case 0: {_minutes = "00"};
	};

  
	hintSilent parseText format ["
	<img size='4.5' image='%12' align='Center'/><br/>
	<t size='1.5' font='Bitstream' align='center' color='#D9FF00'>%5</t>
	<br/>
	<t size='1' font='Bitstream' align='left' color='#D9FF00'>%11</t><t size='0.9' font='Bitstream' align='right' color='#D9FF00'>@%10</t>
	<br/>
	<t size='1' font='Bitstream' align='left' color='#FFBF00'>Players/AIs : </t><t size='1' font='Bitstream' align='right'>%13/%1</t>
	<br/>
	<t size='1' font='Bitstream' align='left' color='#FA1A16'>Blood:</t><t size='1' font='Bitstream' align='right' color='#FFFFFF'>%3</t>
	<br/>
	<t size='1' font='Bitstream' align='left' color='#A23DFF'>Humanity:</t><t size='1' font='Bitstream' align='right' color='#FFFFFF'>%4</t>
	<br/>
	<t size='1' font='Bitstream' align='left' color='#e5e5e5'>Kill(Z/H):</t><t size='1' font='Bitstream' align='right' color='#FFFFFF'>%9/%2</t>
	<br/>
	<t size='1' font='Bitstream' align='left' color='#8CFA16'>FPS:</t><t size='1' font='Bitstream' align='right' color='#FFFFFF'>%6</t>
	<br/>
	<t size='0.9' font='Bitstream' align='center' color='#FFFFFF'>%7 hr %8 min</t><t size='0.9' font='Bitstream' align='center' color='#AAFFFF'> from Restart</t>
	<br/>
	<t size='0.9' font='Bitstream' align='center' color='#00FFD9'>[F1]:Earplug</t>
	",
	
		({alive _x} count allUnits),							//%1
		((player getVariable['humanKills', 0]) + (player getVariable['banditKills', 0])),	//%2
		_bldtext,												//%3
	 	(player getVariable['humanity', 0]),					//%4
		dayz_playerName,										//%5
		round diag_FPS,											//%6
		_hours, 												//%7
		_minutes, 												//%8
		(player getVariable['zombieKills', 0]),					//%9
		_textCity,												//%10
		_dmtit,													//%11
		_dmpic,													//%12
		(count playableUnits)									//%13
	];
	sleep 1.0;
};