/*
	ESSV3 Client Side Config
	
	For detailed information about these variables see:
	https://github.com/ebayShopper/ESSV3/blob/master/DOCUMENTATION.md
*/

class_selection = true; //Enable class selection dialog
#define START_ITEMS "ItemBandage",2,"ItemAntibacterialWipe","ItemPainkiller","ItemSodaCoke","ItemSodaPepsi","FoodPistachio","ItemBookBible"
#define START_TOOLS "ItemFlashlight","Item3Matchbox","NVGoggles","ItemRadio"
class_public = [ // These are visible to anyone on the server
	[localize "str_playerstats_bandit","Bandit1_DZ","BanditW1_DZ",[START_ITEMS,"8Rnd_9x18_Makarov",2],[START_TOOLS,"Makarov_DZ"],"DZ_Czech_Vest_Pouch",["HandRoadFlare"],[],0,-1,0,"MeleeCrowbar"],
	[localize "str_playerstats_hero","Survivor3_DZ","SurvivorW2_DZ",[START_ITEMS,"15Rnd_W1866_Slug",2],[START_TOOLS,"Winchester1866_DZ"],"DZ_ALICE_Pack_EP1",["HandRoadFlare"],[],0,5000,0,"MeleeHatchet"],
	[localize "str_playerstats_survivor","Survivor2_DZ","SurvivorW2_DZ",[START_ITEMS,"2Rnd_12Gauge_Buck",2,"2Rnd_12Gauge_Slug"],[START_TOOLS,"MR43_DZ"],"DZ_Patrol_Pack_EP1",["HandRoadFlare"],[],0,0,0,"MeleeBaseBallBat"]
];

halo_selection = true; // Enable HALO selection dialog
halo_force = true; // Skip HALO selection dialog and force HALO spawn.
halo_type = ["AN2_DZ","AN2_2_DZ",""] call BIS_fnc_selectRandom; // Type of plane. Tested with C130J_US_EP1_DZ, AN2_DZ, MV22_DZ. Use "" to disable the plane and use regular HALO.

spawn_selection = true; // Enable spawn selection dialog
spawn_bodyCheck = 2000; // If a player has a body within this distance of a spawn that spawn will be blocked. Set to -1 to disable.
spawn_nearGroup = true; // Allow players to spawn near their group. BodyCheck can override.
spawn_nearPlot = false; // Allow players to spawn near their plot. BodyCheck can override.
spawn_radius = 1000; // Distance around spawn to find a safe pos. Lower is closer to exact coordinates. Do not set too low or BIS_fnc_findSafePos may fail.

spawn_public = [
			[localize "str_disp_srvsetup_random",[[4523,2444,0],[12037,9100,0],[6723,2562,0],[10417,2120,0],[1896,2242,0],[13470,6306,0]],0,0,1] // Random will never be blocked, so always keep it if using body check.
];

{
	private ["_text"];
	_text=text _x;
	if (_text != "") then {
		spawn_public set [count spawn_public, [_text,locationPosition _x,0,0]];
	};
} foreach (nearestLocations [getMarkerPos "center", ["NameCity","NameCityCapital"],(getMarkerSize "center") select 0]);
{
	private ["_text"];
	_text=text _x;
	if (_text != "") then {
		spawn_public set [count spawn_public, [_text,locationPosition _x,0,5000]];
	};
} foreach (nearestLocations [getMarkerPos "center", ["NameVillage"],(getMarkerSize "center") select 0]);
