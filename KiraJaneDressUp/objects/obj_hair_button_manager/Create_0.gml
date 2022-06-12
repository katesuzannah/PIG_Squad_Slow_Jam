global.hair_colors = ["white", "gray", "platinum", "blonde", "red", "auburn", "light_brown", "brown", "dark_brown", "black"];;
global.currentHairColor = "light_brown"; //global.hair_colors[irandom(array_length(global.hair_colors)-1)];
global.currentHairStyle = "bangs";
global.hair_styles = ["afro", "afropigtails", "bangs", "bob", "boxbraids", "braid", "curly", "fingerwave", "kira", "longafro", "short", "shortwavy", "straight", "undercut"];
hair_color_sprites = [
				spr_haircolor_white, spr_haircolor_gray, spr_haircolor_platinum, spr_haircolor_blonde,
				spr_haircolor_red, spr_haircolor_auburn, spr_haircolor_light_brown, spr_haircolor_brown,
				spr_haircolor_dark_brown, spr_haircolor_black
];
//Create hair color buttons
for (var i = 0; i < array_length(hair_color_sprites); i++) {
	var button = instance_create_layer(x + 40 * i, y, layer_get_id("Hair_Options"), obj_haircolor_button);
	button.sprite_index = hair_color_sprites[i];
	button.characterHairColor = global.hair_colors[i];
}
//Create hair style buttons
hair_style_sprites = [spr_bangs_light_brown, spr_bun_light_brown];
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
	}
}
//HAIR IS HERE
//"It's all right, cause everything changes" --Owl City