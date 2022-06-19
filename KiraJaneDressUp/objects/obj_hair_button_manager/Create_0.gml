global.hair = instance_find(obj_hair, 0);
global.dress = instance_find(obj_dress, 0);
global.top = instance_find(obj_top, 0);
global.bottom = instance_find(obj_bottom, 0);
global.eyes = instance_find(obj_eyes, 0);
global.lips = instance_find(obj_lips, 0);
global.character = instance_find(obj_character, 0);


global.hair_colors = ["white", "gray", "platinum", "blonde", "red", "auburn", "light_brown", "brown", "dark_brown", "black"];;
global.currentHairColor = global.hair_colors[irandom(array_length(global.hair_colors)-1)];
global.hair_styles = ["afro", "afropigtails", "bangs", "bob", "boxbraids", "braid", "curly", "fingerwave", "kira", "longafro", "short", "shortwavy", "straight", "undercut"];
currentHairIndex = irandom(array_length(global.hair_styles)-1);

//If randomly generated skintone is white, don't randomly give her a black hairstyle
if (global.skinColorIndex == 0 || global.skinColorIndex == 1) {
	if (currentHairIndex == 0 || currentHairIndex == 1 || currentHairIndex == 4 || currentHairIndex == 9) {
		currentHairIndex = 2;
	}
}
global.currentHairStyle = global.hair_styles[currentHairIndex];

function goNext() {
	with(instance_find(obj_hair_button_manager, 0)) {
		currentHairIndex++;
		if (currentHairIndex > array_length(global.hair_styles)-1) {
			currentHairIndex = 0;
		}
		var spriteString = "spr_" + global.hair_styles[currentHairIndex] + "_" + global.currentHairColor;
		button.sprite_index = asset_get_index(spriteString);
		button.hairStyle = global.hair_styles[currentHairIndex];
	}
}

function goBack() {
	with(instance_find(obj_hair_button_manager, 0)) {
		currentHairIndex--;
		if (currentHairIndex < 0) {
			currentHairIndex = array_length(global.hair_styles)-1;
		}
		var spriteString = "spr_" + global.hair_styles[currentHairIndex] + "_" + global.currentHairColor;
		button.sprite_index = asset_get_index(spriteString);
		button.hairStyle = global.hair_styles[currentHairIndex];
	}
}

changeHair();
global.hair.adjustPosition();
hair_color_sprites = [
	spr_haircolor_white, spr_haircolor_gray, spr_haircolor_platinum, spr_haircolor_blonde,
	spr_haircolor_red, spr_haircolor_auburn, spr_haircolor_light_brown, spr_haircolor_brown,
	spr_haircolor_dark_brown, spr_haircolor_black
];

//Create hair color buttons
for (var i = 0; i < array_length(hair_color_sprites); i++) {
	var buttonX = x + 40 * (i % 5);
	var buttonY = y + floor(i / 5) * 40;
	var colorButton = instance_create_layer(buttonX, buttonY, layer_get_id("Hair_Options"), obj_haircolor_button);
	colorButton.sprite_index = hair_color_sprites[i];
	colorButton.characterHairColor = global.hair_colors[i];
}

//Create style button and arrows
var spriteString = "spr_" + global.hair_styles[currentHairIndex] + "_" + global.currentHairColor;
button = instance_create_layer(x + 180, y + 400, layer_get_id("Hair_Options"), obj_hairButton);
button.sprite_index = asset_get_index(spriteString);
button.hairStyle = global.hair_styles[currentHairIndex];
rightArrow = instance_create_layer(x + 400, y + 400, layer_get_id("Hair_Options"), obj_arrow);
rightArrow.action = goNext;

leftArrow = instance_create_layer(x + -30, y + 400, layer_get_id("Hair_Options"), obj_arrow);
leftArrow.sprite_index = spr_leftarrow;
leftArrow.action = goBack;

function changeHairButtonColor() {
	var spriteString = "spr_" + global.hair_styles[currentHairIndex] + "_" + global.currentHairColor;
	button.sprite_index = asset_get_index(spriteString);
}