global.hair_colors = ["blonde", "red", "light_brown", "dark_brown"];
global.currentHairColor = "light_brown"; //global.hair_colors[irandom(array_length(global.hair_colors)-1)];
global.currentHairStyle = "bob";
global.hair_styles = ["bob", "bun"];
hair_color_sprites = [spr_haircolor_blonde, spr_haircolor_red, spr_haircolor_light_brown, spr_haircolor_dark_brown];
//Create hair color buttons
for (var i = 0; i < array_length(hair_color_sprites); i++) {
	var button = instance_create_layer(x + 40 * i, y, layer_get_id("Hair_Options"), obj_haircolor_button);
	button.sprite_index = hair_color_sprites[i];
	button.characterHairColor = global.hair_colors[i];
}
//Create hair style buttons
hair_style_sprites = [spr_bob_light_brown, spr_bun_light_brown];
hair_style_buttons = [];
for (var i = 0; i < array_length(hair_style_sprites); i++) {
	var button = instance_create_layer(x + 100 * i, y + 100, layer_get_id("Hair_Options"), obj_hairButton);
	button.hairStyle = global.hair_styles[i];
	button.sprite_index = hair_style_sprites[i];
	hair_style_buttons[array_length(hair_style_buttons)] = button;
}
instance_activate_layer(layer_get_id("Skin_Options"));
instance_deactivate_layer(layer_get_id("Hair_Options"));


function changeHairButtonColor() {
	for (var i = 0; i < array_length(hair_style_buttons); i++) {
		var button = hair_style_buttons[i];
		var spriteString = "spr_" + button.hairStyle + "_" + global.currentHairColor;
		button.sprite_index = asset_get_index(spriteString);
		show_debug_message(asset_get_index(spriteString));
		show_debug_message(spr_bob_dark_brown);
	}
}
