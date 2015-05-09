class Attachment_HOLO : CA_Magazine
{
	scope = public;
	count = 1;
	type = WeaponSlotItem;
	
	model = "\z\addons\dayz_communityweapons\attachments\holo\holo.p3d";
	picture = "\z\addons\dayz_communityweapons\attachments\holo\data\m_holo_ca.paa";
	
	displayName = $STR_DZ_ATT_HOLO_NAME;
	descriptionShort = "Eotech 553 Holographic Weapon Sight TODO";
	
	class ItemActions
	{
		class AttachToPrimary
		{
			text = $STR_DZ_ATT_ACT_TO_PRIMARY;
			script = "; [_id,1] call player_attachAttachment";
		};
	};
};