/*
	To customize this file change the text after #FFFFFF.
	To add more to the list place the following below the last <t size.... line:
	<t size='.7' shadow='1'align='left' color='#FFFFFF'></t><br/>
	<t size='1.1' shadow='1'align='left' color='#FFFFFF'>Your Text Here</t><br/>
	<t size='0.8' shadow='1'align='left' color='#FFFFFF'>Vehicle without key is free for all, even if you stock it.</t><br/>
	<t size='0.8' shadow='1'align='left' color='#FFFFFF'>Vehicle service points: refueling, repairing and rearming at gas stations</t><br/>
*/
if(!(isNull findDisplay 106)) then {findDisplay 106 closeDisplay 0}; // close gear menu

"Server Rules" hintC parseText format ["
<t size='1.0' shadow='1'align='left' color='#FFFFFF'>[JP] Parsley PvP server</t><br/>
<t size='1.0' shadow='1'align='left' color='#CCEEFF'>Info:</t><t size='.5' shadow='1'align='right' color='#FFFFFF'></t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>Click actions on some more items and tools.</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>Customized loot table.</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>Spawn selection according to humanity.</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>Kill Zeds for humanity.</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>Bandits on patrol or camping.</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>[F1]:earplug [F3]:hide status</t><br/>
"];
