/// @description Click to switch tabs
switch (tab.tabType) {
	case "hair":
		instance_activate_layer("Hair_Options");
		instance_activate_layer("Bald_Button_Brow_Layer");
		instance_deactivate_layer("Lip_Options");
		instance_deactivate_layer("Skin_Options");
		instance_deactivate_layer("Eye_Options");
	break;
	case "skin":
		instance_activate_layer("Skin_Options");
		instance_deactivate_layer("Lip_Options");
		instance_deactivate_layer("Hair_Options");
		instance_deactivate_layer("Bald_Button_Brow_Layer");
		instance_deactivate_layer("Eye_Options");
	break;
	case "eyes":
		instance_activate_layer("Eye_Options");
		instance_deactivate_layer("Lip_Options");
		instance_deactivate_layer("Hair_Options");
		instance_deactivate_layer("Bald_Button_Brow_Layer");
		instance_deactivate_layer("Skin_Options");
	break;
	case "lips":
		instance_activate_layer("Lip_Options");
		instance_deactivate_layer("Eye_Options");
		instance_deactivate_layer("Hair_Options");
		instance_deactivate_layer("Bald_Button_Brow_Layer");
		instance_deactivate_layer("Skin_Options");
	break;
	case "tops":
		instance_activate_layer("Top_Options");
		instance_deactivate_layer("Bottom_Options");
		instance_deactivate_layer("Dress_Options");
		instance_deactivate_layer("Shoe_Options");
	break;
	case "bottoms":
		instance_activate_layer("Bottom_Options");
		instance_deactivate_layer("Top_Options");
		instance_deactivate_layer("Dress_Options");
		instance_deactivate_layer("Shoe_Options");
	break;
	case "dresses":
		instance_activate_layer("Dress_Options");
		instance_deactivate_layer("Bottom_Options");
		instance_deactivate_layer("Top_Options");
		instance_deactivate_layer("Shoe_Options");
	break;
	case "shoes":
		instance_activate_layer("Shoe_Options");
		instance_deactivate_layer("Dress_Options");
		instance_deactivate_layer("Bottom_Options");
		instance_deactivate_layer("Top_Options");
	break;
}