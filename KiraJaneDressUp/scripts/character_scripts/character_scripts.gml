function changeSkinColor(sprite) {
	instance_find(obj_character, 0).sprite_index = sprite;
}

function changeHairColor(color) { //color is a string
	global.currentHairColor = color;
	var hairString = "spr_" + global.currentHairStyle + "_" + color;
	instance_find(obj_hair, 0).sprite_index = asset_get_index(hairString);
}

function changeHairStyle(style) { //style is a string
	global.currentHairStyle = style;
	var hairString = "spr_" + style + "_" + global.currentHairColor;
	instance_find(obj_hair, 0).sprite_index = asset_get_index(hairString);
}
