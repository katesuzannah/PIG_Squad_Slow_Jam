global.lipSprites = [spr_lips_1, spr_lips_2, spr_lips_3, spr_lips_4, spr_lips_5, spr_lips_6, spr_lips_7, spr_lips_8];

for (var i = 0; i < array_length(global.lipSprites)-1; i++) {
	var button = instance_create_layer(x + i * 100, y + 100, layer_get_id("Lip_Options"), obj_lipButton);
	button.sprite_index = global.lipSprites[i];
}


instance_activate_layer(layer_get_id("Skin_Options"));
instance_deactivate_layer(layer_get_id("Hair_Options"));
instance_deactivate_layer(layer_get_id("Eye_Options"));
instance_deactivate_layer(layer_get_id("Lip_Options"));