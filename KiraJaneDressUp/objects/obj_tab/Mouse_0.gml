/// @description Click to switch tabs
if (type == "hair") {
	instance_activate_layer("Hair_Options");
	instance_deactivate_layer("Skin_Options");
	instance_deactivate_layer("Eye_Options");
}
else if (type == "skin") {
	instance_activate_layer("Skin_Options");
	instance_deactivate_layer("Hair_Options");
	instance_deactivate_layer("Eye_Options");
}
else if (type == "eyes") {
	instance_activate_layer("Eye_Options");
	instance_deactivate_layer("Hair_Options");
	instance_deactivate_layer("Skin_Options");
}