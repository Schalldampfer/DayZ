//  DZE_CLICK_ACTIONS
//      This is where you register your right-click actions
//  FORMAT -- (no comma after last array entry)
//      [_classname,_text,_execute,_condition],
//  PARAMETERS
//  _classname  : the name of the class to click on 
//                  (example = "ItemBloodbag")
//  _text       : the text for the option that is displayed when right clicking on the item 
//                  (example = "Self Transfuse")
//  _execute    : compiled code to execute when the option is selected 
//                  (example = "execVM 'my\scripts\self_transfuse.sqf';")
//  _condition  : compiled code evaluated to determine whether or not the option is displayed
//                  (example = {true})
//  EXAMPLE -- see below for some simple examples
DZE_CLICK_ACTIONS = [
	["ItemBookBible","Read Info","execVM 'scripts\clickActions\examples\serverRules.sqf';","true"],
	["ItemRadio","Hide/See Status","debugMonitor = !debugMonitor;hintSilent ''; [] execVM 'dayz_code\compile\Player_Debug.sqf';","true"],
	["ItemGPS","Scan nearby","execVM 'scripts\clickActions\examples\scanner.sqf';","true"]
];

//Suicide
{
	DZE_CLICK_ACTIONS set [count DZE_CLICK_ACTIONS,[_x,"Commit Suicide","execVM 'scripts\clickActions\examples\suicide.sqf';","true"]];
} forEach ["G17_DZ","G17_FL_DZ","G17_MFL_DZ","G17_SD_DZ","G17_SD_FL_DZ","G17_SD_MFL_DZ",
	"M9_DZ","M9_SD_DZ","M1911_DZ","Makarov_DZ","Makarov_SD_DZ","PDW_DZ","Revolver_DZ",
	"Sa61_EP1","UZI_SD_EP1","revolver_gold_EP1","ItemTrashRazor"] + Dayz_Gutting;
