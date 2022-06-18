function changeSkinColor(sprite) {
	instance_find(obj_character, 0).sprite_index = sprite;
}

function changeHair() {
	var hairString = "spr_" + global.currentHairStyle + "_" + global.currentHairColor;
	global.hair.sprite_index = asset_get_index(hairString);
	global.hair.adjustPosition();
}

function changeEyes() {
	var spriteString = "spr_eyes_" + string(global.currentEyeStyle) + "_" + global.currentEyeColor;
	instance_find(obj_eyes, 0).sprite_index = asset_get_index(spriteString);
}