/// @description Click to switch tabs
if (type == "hair") {
	instance_activate_layer("Hair_Options");
	instance_deactivate_layer("Skin_Options");
}
else if (type == "skin") {
	instance_activate_layer(layer_get_id("Skin_Options"));
	instance_deactivate_layer(layer_get_id("Hair_Options"));
}
