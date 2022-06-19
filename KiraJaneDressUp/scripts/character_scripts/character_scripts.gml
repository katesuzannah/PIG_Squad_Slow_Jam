function changeSkinColor(sprite) {
	global.character.sprite_index = sprite;
}

function changeHair() {
	var hairString = "spr_" + global.currentHairStyle + "_" + global.currentHairColor;
	global.hair.sprite_index = asset_get_index(hairString);
	global.hair.adjustPosition();
}

function changeEyes() {
	var spriteString = "spr_eyes_" + string(global.currentEyeStyle) + "_" + global.currentEyeColor;
	global.eyes.sprite_index = asset_get_index(spriteString);
}

function changeLips(lips) {
	global.lips.sprite_index = lips;
}

function changeTop() {
	global.top.sprite_index = global.currentTopOnDoll;
	global.dress.sprite_index = noone;
}

function changeBottoms() {
	global.bottom.sprite_index = global.currentBottomsOnDoll;
	global.dress.sprite_index = noone;
}

function changeDress() {
	global.dress.sprite_index = global.currentDressOnDoll;
	global.bottom.sprite_index = noone;
	global.top.sprite_index = noone;
}