global.hair_colors = ["white", "gray", "platinum", "blonde", "red", "auburn", "light_brown", "brown", "dark_brown", "black"];;
global.currentHairColor = global.hair_colors[irandom(array_length(global.hair_colors)-1)];
//global.hair_styles = ["afro", "afropigtails", "bangs", "bob", "boxbraids", "braid", "curly", "fingerwave", "kira", "longafro", "short", "shortwavy", "straight", "undercut"];
global.hair_styles = ["afro", "bangs"];
global.currentHairStyle = global.hair_styles[irandom(array_length(global.hair_styles)-1)];
global.hair = instance_find(obj_hair, 0);
changeHair();
global.hair.adjustPosition();
hair_color_sprites = [
				spr_haircolor_white, spr_haircolor_gray, spr_haircolor_platinum, spr_haircolor_blonde,
				spr_haircolor_red, spr_haircolor_auburn, spr_haircolor_light_brown, spr_haircolor_brown,
				spr_haircolor_dark_brown, spr_haircolor_black
];

//Create hair color buttons
for (var i = 0; i < array_length(hair_color_sprites); i++) {
	var buttonX = x + 40 * i;
	//0, 5 ==> 0
	
	var buttonY = y + floor(i / 5) * 40;
	var button = instance_create_layer(buttonX, buttonY, layer_get_id("Hair_Options"), obj_haircolor_button);
	button.sprite_index = hair_color_sprites[i];
	button.characterHairColor = global.hair_colors[i];
}

//Create hair style buttons
hair_style_buttons = [];
for (var i = 0; i < array_length(global.hair_styles); i++) {
	var button = instance_create_layer(x + 100 * i, y + 100, layer_get_id("Hair_Options"), obj_hairButton);
	button.hairStyle = global.hair_styles[i];
	var spriteString = "spr_" + button.hairStyle + "_" + global.currentHairColor;
	button.sprite_index = asset_get_index(spriteString);
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