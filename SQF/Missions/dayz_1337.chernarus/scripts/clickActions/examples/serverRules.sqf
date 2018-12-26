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
<t size='1.0' shadow='1'align='left' color='#FFFFFF'>[JP] Parsley PvE server</t><br/>
<t size='1.0' shadow='1'align='left' color='#CCEEFF'>Rules:</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>Do not kill other players! Do not damage player bases!</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>1 plotpole per 1 person. Do not block roads and high loot areas.</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>No stealing from or destroying locked vehicles and player bases.</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>Vehicle limit: 4 vehicles on map, 50 in Virtual Garage.</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>Vehicle without key is free for all, and you can claim it.</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>Missions are automatically claimed when you get close to.</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>Do not touch an already claimed mission!</t><br/>
<t size='1.0' shadow='1'align='left' color='#CCEEFF'>Info:</t><t size='.5' shadow='1'align='right' color='#FFFFFF'>Website: https://chernarus.web.fc2.com/</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>Building half life: about 1 week</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>Vehicle left in traders will be sent to vehicle depository.</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>You can store your car in garage. Build from Etool or ask for traders.</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>Click actions on many items and tools.</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>Bandits on patrol and in some cities.</t><br/>
<t size='0.8' shadow='1'align='left' color='#FFFFFF'>AI Missions - Killing a Hero earns positive humanity.</t><br/>

"];
