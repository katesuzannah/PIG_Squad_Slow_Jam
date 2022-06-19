/// @description Click to switch tabs
if (tab.tabType == "hair") {
	instance_activate_layer("Hair_Options");
	instance_deactivate_layer("Lip_Options");
	instance_deactivate_layer("Skin_Options");
	instance_deactivate_layer("Eye_Options");
}
else if (tab.tabType == "skin") {
	instance_activate_layer("Skin_Options");
	instance_deactivate_layer("Lip_Options");
	instance_deactivate_layer("Hair_Options");
	instance_deactivate_layer("Eye_Options");
}
else if (tab.tabType == "eyes") {
	instance_activate_layer("Eye_Options");
	instance_deactivate_layer("Lip_Options");
	instance_deactivate_layer("Hair_Options");
	instance_deactivate_layer("Skin_Options");
}
else if (tab.tabType == "lips") {
	instance_activate_layer("Lip_Options");
	instance_deactivate_layer("Eye_Options");
	instance_deactivate_layer("Hair_Options");
	instance_deactivate_layer("Skin_Options");
}
else if (tab.tabType == "tops") {
	instance_activate_layer("Top_Options");
	instance_deactivate_layer("Bottom_Options");
	instance_deactivate_layer("Dress_Options");
}
else if (tab.tabType == "bottoms") {
	instance_activate_layer("Bottom_Options");
	instance_deactivate_layer("Top_Options");
	instance_deactivate_layer("Dress_Options");
}
else if (tab.tabType == "dresses") {
	instance_activate_layer("Dress_Options");
	instance_deactivate_layer("Bottom_Options");
	instance_deactivate_layer("Top_Options");
}