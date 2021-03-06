global.hair_colors = ["white", "gray", "platinum", "blonde", "red", "auburn", "light_brown", "brown", "dark_brown", "black"];;
global.currentHairColor = global.hair_colors[irandom(array_length(global.hair_colors)-1)];
global.hair_styles = ["afro", "afropigtails", "bangs", "bob", "boxbraids", "braid", "curly", "fingerwave", "kira", "longafro", "short", "shortwavy", "straight", "undercut", "bald"];
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
		buttonBrows.sprite_index = noone;
		if (global.hair_styles[currentHairIndex] == "bald") {
			spriteString = setBaldString();
		}
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
		buttonBrows.sprite_index = noone;
		if (global.hair_styles[currentHairIndex] == "bald") {
			spriteString = setBaldString();
		}
		button.sprite_index = asset_get_index(spriteString);
		button.hairStyle = global.hair_styles[currentHairIndex];
	}
}

changeHair();
instance_find(obj_hair, 0).adjustPosition();
hair_color_sprites = [
	spr_haircolor_white, spr_haircolor_gray, spr_haircolor_platinum, spr_haircolor_blonde,
	spr_haircolor_red, spr_haircolor_auburn, spr_haircolor_light_brown, spr_haircolor_brown,
	spr_haircolor_dark_brown, spr_haircolor_black
];

//Create hair color buttons
for (var i = 0; i < array_length(hair_color_sprites); i++) {
	var buttonX = x + 100 * (i % 5) - 48;
	var buttonY = y + floor(i / 5) * 100 + 100;
	var colorButton = instance_create_layer(buttonX, buttonY, layer_get_id("Hair_Options"), obj_haircolor_button);
	colorButton.sprite_index = hair_color_sprites[i];
	colorButton.characterHairColor = global.hair_colors[i];
}

//Create style button and arrows

button = instance_create_layer(x + 150, y + 430, layer_get_id("Hair_Options"), obj_hairButton);
button.hairStyle = global.hair_styles[currentHairIndex];

buttonBrows = instance_create_layer(button.x, button.y - 20, layer_get_id("Bald_Button_Brow_Layer"), obj_buttonBrows);
buttonBrows.sprite_index = noone;

function setBaldString() {
	buttonBrows.sprite_index = asset_get_index("spr_eyebrows_" + global.currentHairColor);
	var str = "spr_face_" + string(global.skinColorIndex + 1);
	return str;
}

rightArrow = instance_create_layer(x + 380, y + 430, layer_get_id("Hair_Options"), obj_arrow);
rightArrow.action = goNext;

leftArrow = instance_create_layer(x + -70, y + 430, layer_get_id("Hair_Options"), obj_arrow);
leftArrow.sprite_index = spr_leftarrow;
leftArrow.action = goBack;

//Set sprite for button and buttonBrows
var spriteString = "spr_" + global.hair_styles[currentHairIndex] + "_" + global.currentHairColor;
buttonBrows.sprite_index = noone;

//Account for bald option
if (global.hair_styles[currentHairIndex] == "bald") {
	spriteString = setBaldString();
}
button.sprite_index = asset_get_index(spriteString);

function changeHairButtonColor() {
	var spriteString = "spr_" + global.hair_styles[currentHairIndex] + "_" + global.currentHairColor;
	buttonBrows.sprite_index = noone;
	if (global.hair_styles[currentHairIndex] == "bald") {
		spriteString = setBaldString();
	}
	button.sprite_index = asset_get_index(spriteString);
}