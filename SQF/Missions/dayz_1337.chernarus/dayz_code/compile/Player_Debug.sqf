private["_time","_hours","_minutes","_dmtit","_dmpic","_blood","_bldtext"];
diag_log "Debug monitor";
while {debugMonitor} do
{

	_time = round(serverTime/60);
	_hours = (floor(_time/60));
	_minutes = (_time - (_hours * 60));
	
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
	<img size='4.5' image='%10' align='Center'/><br/>
	<t size='1.5' font='Bitstream' align='center' color='#D9FF00'>%4</t>
	<br/>
	<t size='1' font='Bitstream' align='left' color='#D9FF00'>%9</t>
	<br/>
	<t size='1' font='Bitstream' align='left' color='#FA1A16'>Blood:</t><t size='1' font='Bitstream' align='right' color='#FFFFFF'>%2</t>
	<br/>
	<t size='1' font='Bitstream' align='left' color='#A23DFF'>Humanity:</t><t size='1' font='Bitstream' align='right' color='#FFFFFF'>%3</t>
	<br/>
	<t size='1' font='Bitstream' align='left' color='#e5e5e5'>Kill(Z/H):</t><t size='1' font='Bitstream' align='right' color='#FFFFFF'>%8/%1</t>
	<br/>
	<t size='1' font='Bitstream' align='left' color='#8CFA16'>FPS:</t><t size='1' font='Bitstream' align='right' color='#FFFFFF'>%5</t>
	<br/>
	<t size='0.9' font='Bitstream' align='center' color='#FFFFFF'>%6 hr %7 min</t><t size='0.9' font='Bitstream' align='center' color='#AAFFFF'> from Restart</t>
	<br/>
	<t size='0.9' font='Bitstream' align='center' color='#00FFD9'>[F1]:Earplug</t>
	",
	
		((player getVariable['humanKills', 0]) + (player getVariable['banditKills', 0])),	//%1
		_bldtext,												//%2
	 	(player getVariable['humanity', 0]),					//%3
		dayz_playerName,										//%4
		round diag_FPS,											//%5
		_hours, 												//%6
		_minutes, 												//%7
		(player getVariable['zombieKills', 0]),					//%8
		_dmtit,													//%9
		_dmpic													//%10
	];
	sleep 1.0;
};