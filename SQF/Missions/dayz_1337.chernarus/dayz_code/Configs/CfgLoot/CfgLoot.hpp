#include "\z\addons\dayz_code\Configs\CfgLoot\LootDefines.hpp"

class CfgLoot
{
	class Groups
	{
		//Not renamed yet
		#define DZ_BP_VestPouch DZ_Czech_Vest_Pouch
		#define DZ_BP_Patrol DZ_Patrol_Pack_EP1
		#define DZ_BP_Assault DZ_Assault_Pack_EP1
		#define DZ_BP_Survival DZ_TK_Assault_Pack_EP1
		#define DZ_BP_Alice DZ_ALICE_Pack_EP1
		#define DZ_BP_British DZ_British_ACU
		#define DZ_BP_Czech DZ_CivilBackpack_EP1
		#define DZ_BP_Coyote DZ_Backpack_EP1

		#define ItemBloodbagAPos bloodBagAPOS
		#define ItemBloodbagANeg bloodBagANEG
		#define ItemBloodbagBPos bloodBagBPOS
		#define ItemBloodbagBNeg bloodBagBNEG
		#define ItemBloodbagABPos bloodBagABPOS
		#define ItemBloodbagABNeg bloodBagABNEG
		#define ItemBloodbagOPos bloodBagOPOS
		#define ItemBloodbagONeg bloodBagONEG
		
		#define ItemBloodTester bloodTester
		#define ItemTransfusionKit transfusionKit
		#define ItemBloodbagEmpty emptyBloodBag
		
		// General groups
		#include "Groups\Ammo.hpp"
		#include "Groups\AmmoBox.hpp"
		#include "Groups\Attachments.hpp"
		#include "Groups\Medical.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Generic.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Trash.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Consumable.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\ConsumableItems.hpp"
		#include "Groups\Fuel.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Parts.hpp"
		
		// Points of interest
		#include "Groups\CrashSite.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\CarePackage.hpp"
		#include "Groups\InfectedCamp.hpp"
		
		// Buildings
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Buildings\Boat.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Buildings\Castle.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Buildings\Church.hpp"
		#include "Groups\Buildings\Construction.hpp"
		#include "Groups\Buildings\Farm.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Buildings\Hospital.hpp"
		#include "Groups\Buildings\Hunting.hpp"
		#include "Groups\Buildings\Industrial.hpp"
		#include "Groups\Buildings\Military.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Buildings\Office.hpp"
		//#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Buildings\Powerlines.hpp"
		#include "Groups\Buildings\Residential.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Buildings\ResidentialRuins.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Buildings\Supermarket.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Buildings\Toilet.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Buildings\Hangar.hpp"
	
		// Zombies
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Zombies\Civilian.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Zombies\Hunter.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Zombies\Police.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Groups\Zombies\Military.hpp"
		
		#undef DZ_BP_VestPouch
		#undef DZ_BP_Patrol
		#undef DZ_BP_Assault
		#undef DZ_BP_Survival
		#undef DZ_BP_Alice
		#undef DZ_BP_British
		#undef DZ_BP_Czech
		#undef DZ_BP_Coyote

		#undef ItemBloodbagAPos
		#undef ItemBloodbagANeg
		#undef ItemBloodbagBPos
		#undef ItemBloodbagBNeg
		#undef ItemBloodbagABPos
		#undef ItemBloodbagABNeg
		#undef ItemBloodbagOPos
		#undef ItemBloodbagONeg
		
		#undef ItemBloodTester
		#undef ItemTransfusionKit
		#undef ItemBloodbagEmpty
	};
	
	class Buildings
	{
		class Default
		{
			zombieChance = 0.2;
			minRoaming = 0;
			maxRoaming = 2;
			zombieClass[] =
			{
			//	"zZombie_Base",
				"z_hunter",
				"z_teacher",
				"z_suit1",
				"z_suit2",
				"z_worker1",
				"z_worker2",
				"z_worker3",
				"z_villager1",
				"z_villager2",
				"z_villager3"
			};
			
			lootChance = 0;
			lootRefreshTimer = 900;
			lootGroup = "";
			lootPos[] = {};
		};
	
		// Buildings
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Residential.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Boat.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Castle.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Church.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Construction.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\CrashSite.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Farm.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Hospital.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Hunting.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Industrial.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\InfectedCamp.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Military.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Office.hpp"
		//#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Powerlines.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\ResidentialRuins.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Supermarket.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Toilet.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Roaming.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Misc.hpp"
		#include "\z\addons\dayz_code\Configs\CfgLoot\Buildings\Zero.hpp"
	};
};