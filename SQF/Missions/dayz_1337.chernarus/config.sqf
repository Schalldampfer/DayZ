//Server settings
dayZ_instance = 1337; //Instance ID of this server
dayZ_serverName = "DayZ"; //Shown to all players in the bottom left of the screen (country code + server number)

//Game settings
dayz_antihack = 1; // DayZ Antihack / 1 = enabled // 0 = disabled
dayz_antiWallHack = 1; //DayZ AntiWallhack / 1 = enabled // 0 = disabled, Adds items to the map to plug holes.
dayz_REsec = 1; // DayZ RE Security / 1 = enabled // 0 = disabled
dayz_enableRules = true; //Enables a nice little news/rules feed on player login (make sure to keep the lists quick).
dayz_quickSwitch = false; //Turns on forced animation for weapon switch. (hotkeys 1,2,3) False = enable animations, True = disable animations
dayz_POIs = true;
dayz_infectiousWaterholes = true;
dayz_ForcefullmoonNights = false; // Forces night time to be full moon.
dayz_randomMaxFuelAmount = 250; //Puts a random amount of fuel in all fuel stations.

//DayZMod presets
dayz_presets = "Custom"; //"Custom","Classic","Vanilla","Elite"

//Only need to edit if you are running a custom server.
if (dayz_presets == "Custom") then {
	dayz_enableGhosting = true; //Enable disable the ghosting system.
	dayz_ghostTimer = 15; //Sets how long in seconds a player must be disconnected before being able to login again.
	dayz_spawnselection = 0; //Turn on spawn selection 0 = random only spawns, 1 = spawn choice based on limits
	dayz_spawncarepkgs_clutterCutter = 2; //0 = loot hidden in grass, 1 = loot lifted, 2 = no grass
	dayz_spawnCrashSite_clutterCutter = 2;	// heli crash options 0 = loot hidden in grass, 1 = loot lifted, 2 = no grass
	dayz_spawnInfectedSite_clutterCutter = 2; // infected base spawn 0 = loot hidden in grass, 1 = loot lifted, 2 = no grass 
	dayz_bleedingeffect = 3; //1 = blood on the ground, 2 = partical effect, 3 = both
	dayz_OpenTarget_TimerTicks = 60 * 10; //how long can a player be freely attacked for after attacking someone unprovoked
	dayz_nutritionValuesSystem = true; //true, Enables nutrition system, false, disables nutrition system.
	dayz_classicBloodBagSystem = false; // removes all blood type bloodbags (not implmented yet)
	dayz_enableFlies = false; // Enable flies on dead bodies (negatively impacts FPS).
};

//Temp settings
dayz_DamageMultiplier = 1; //1 - 0 = Disabled, anything over 1 will multiply damage. Damage Multiplier for Zombies.
dayz_maxGlobalZeds = 600; //Limit the total zeds server wide.
dayz_temperature_override = false; // Set to true to disable all temperature changes.

dayz_ServerMessages = [
	["DayZMod", format["Welcome to %1, %2", worldName, name player]],
	["Note", "Read a bible item for information."],
	["Note", "Zeds for humanity."],
	["Note", "Wait for being killed."],
	["News", "Newly spawned now..."]
];

