global.lipSprites = [spr_lips_1, spr_lips_2, spr_lips_3, spr_lips_4, spr_lips_5, spr_lips_6, spr_lips_7, spr_lips_8];

for (var i = 0; i < array_length(global.lipSprites); i++) {
	var buttonX = x + 140 * (i % 4) - 60;
	var buttonY = y + floor(i / 4) * 100 + 100;
	var button = instance_create_layer(buttonX, buttonY, layer_get_id("Lip_Options"), obj_lipButton);
	button.sprite_index = global.lipSprites[i];
}


instance_activate_layer(layer_get_id("Skin_Options"));
instance_deactivate_layer(layer_get_id("Hair_Options"));
instance_deactivate_layer(layer_get_id("Eye_Options"));
instance_deactivate_layer(layer_get_id("Lip_Options"));
instance_deactivate_layer(layer_get_id("Bald_Button_Brow_Layer"));