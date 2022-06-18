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
else if (type == "tops") {
	instance_activate_layer("Top_Options");
	instance_deactivate_layer("Bottom_Options");
	instance_deactivate_layer("Dress_Options");
}
else if (type == "bottoms") {
	instance_activate_layer("Bottom_Options");
	instance_deactivate_layer("Top_Options");
	instance_deactivate_layer("Dress_Options");
}
else if (type == "dresses") {
	instance_activate_layer("Dress_Options");
	instance_deactivate_layer("Bottom_Options");
	instance_deactivate_layer("Top_Options");
}