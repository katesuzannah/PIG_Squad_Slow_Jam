global.eye_colors = ["gray", "hazel", "iceblue", "lightbrown", "black", "blue", "darkbrown", "green"];
global.currentEyeColor = global.eye_colors[irandom(array_length(global.eye_colors)-1)];
total_eye_styles = 3;
currentEyeStyleIndex = irandom_range(1, 3);
global.hair = instance_find(obj_hair, 0);

function goNext() {
	with(instance_find(obj_eye_button_manager, 0)) {
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
	with(instance_find(obj_eye_button_manager, 0)) {
		currentHairIndex--;
		if (currentHairIndex < 0) {
			currentHairIndex = array_length(global.hair_styles)-1;
		}
		var spriteString = "spr_" + global.hair_styles[currentHairIndex] + "_" + global.currentHairColor;
		button.sprite_index = asset_get_index(spriteString);
		button.hairStyle = global.hair_styles[currentHairIndex];
	}
}

//changeEyes();
//global.eyes.adjustPosition();

/*
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
button = instance_create_layer(x + 120, y + 150, layer_get_id("Hair_Options"), obj_hairButton);
button.sprite_index = asset_get_index(spriteString);
button.hairStyle = global.hair_styles[currentHairIndex];
rightArrow = instance_create_layer(x + 220, y + 150, layer_get_id("Hair_Options"), obj_arrow);
rightArrow.action = goNext;

leftArrow = instance_create_layer(x + 20, y + 150, layer_get_id("Hair_Options"), obj_arrow);
leftArrow.image_xscale = -1;
leftArrow.action = goBack;

instance_activate_layer(layer_get_id("Skin_Options"));
instance_deactivate_layer(layer_get_id("Hair_Options"));

function changeHairButtonColor() {
	var spriteString = "spr_" + global.hair_styles[currentHairIndex] + "_" + global.currentHairColor;
	button.sprite_index = asset_get_index(spriteString);
}
*/