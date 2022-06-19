function changeSkinColor(sprite) {
	instance_find(obj_character, 0).sprite_index = sprite;
}

function changeHair() {
	var hair = instance_find(obj_hair, 0);
	var hairString = "spr_" + global.currentHairStyle + "_" + global.currentHairColor;
	var eyebrows = instance_find(obj_eyebrows, 0);
	if (global.currentHairStyle == "bald") {
		hair.sprite_index = noone;
		eyebrows.sprite_index = asset_get_index("spr_eyebrows_" + global.currentHairColor);
	}
	else {
		eyebrows.sprite_index = noone;
		hair.sprite_index = asset_get_index(hairString);
		hair.adjustPosition();
	}
}

function changeEyes() {
	var spriteString = "spr_eyes_" + string(global.currentEyeStyle) + "_" + global.currentEyeColor;
	instance_find(obj_eyes, 0).sprite_index = asset_get_index(spriteString);
}

function changeLips(lipSprite) {
	instance_find(obj_lips, 0).sprite_index = lipSprite;
}

function changeTop(topSprite) {
	instance_find(obj_top, 0).sprite_index = topSprite;
	instance_find(obj_dress, 0).sprite_index = noone;
}

function changeBottoms(bottomSprite) {
	instance_find(obj_bottom, 0).sprite_index = bottomSprite;
	instance_find(obj_dress, 0).sprite_index = noone;
}

function changeDress(dressSprite) {
	instance_find(obj_dress, 0).sprite_index = dressSprite;
	instance_find(obj_bottom, 0).sprite_index = noone;
	instance_find(obj_top, 0).sprite_index = noone;
}

function changeShoes(shoeSprite) {
	instance_find(obj_shoes, 0).sprite_index = shoeSprite;
}