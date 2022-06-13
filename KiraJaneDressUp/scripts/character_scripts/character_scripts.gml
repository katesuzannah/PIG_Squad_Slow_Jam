function changeSkinColor(sprite) {
	instance_find(obj_character, 0).sprite_index = sprite;
}

function changeHair() {
	var hairString = "spr_" + global.currentHairStyle + "_" + global.currentHairColor;
	global.hair.sprite_index = asset_get_index(hairString);
	global.hair.adjustPosition();
}
