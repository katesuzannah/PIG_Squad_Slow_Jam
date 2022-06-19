global.eye_colors = ["gray", "hazel", "iceblue", "lightbrown", "black", "blue", "darkbrown", "green"];
global.currentEyeColor = global.eye_colors[irandom(array_length(global.eye_colors)-1)];
total_eye_styles = 3;
global.currentEyeStyleIndex = irandom_range(1, 3);
global.currentEyeStyle = global.currentEyeStyleIndex;

function goNext() {
	with(instance_find(obj_eye_button_manager, 0)) {
		global.currentEyeStyleIndex++;
		if (global.currentEyeStyleIndex > total_eye_styles) {
			global.currentEyeStyleIndex = 1;
		}
		var spriteString = "spr_eyes_" + string(global.currentEyeStyleIndex) + "_" + global.currentEyeColor;
		button.sprite_index = asset_get_index(spriteString);
		button.eyeStyle = global.currentEyeStyleIndex;
	}
}

function goBack() {
	with(instance_find(obj_eye_button_manager, 0)) {
		global.currentEyeStyleIndex--;
		if (global.currentEyeStyleIndex < 1) {
			global.currentEyeStyleIndex = total_eye_styles;
		}
		var spriteString = "spr_eyes_" + string(global.currentEyeStyleIndex) + "_" + global.currentEyeColor;
		button.sprite_index = asset_get_index(spriteString);
		button.eyeStyle = global.currentEyeStyleIndex;
	}
}

changeEyes();

//Create eye color buttons
for (var i = 0; i < array_length(global.eye_colors); i++) {
	var buttonX = x + 100 * (i % 5) - 48;
	var buttonY = y + floor(i / 5) * 100 + 100;
	var colorButton = instance_create_layer(buttonX, buttonY, layer_get_id("Eye_Options"), obj_eyecolor_button);
	var spriteString = "spr_eyecolor_" + global.eye_colors[i];
	colorButton.sprite_index = asset_get_index(spriteString);
	colorButton.characterEyeColor = global.eye_colors[i];
}


//Create style button and arrows
var spriteString = "spr_eyes_" + string(global.currentEyeStyleIndex) + "_" + global.currentEyeColor;
button = instance_create_layer(x + 150, y + 430, layer_get_id("Eye_Options"), obj_eyeButton);
button.sprite_index = asset_get_index(spriteString);
button.eyeStyle = global.currentEyeStyleIndex;
rightArrow = instance_create_layer(x + 380, y + 430, layer_get_id("Eye_Options"), obj_arrow);
rightArrow.action = goNext;

leftArrow = instance_create_layer(x + -70, y + 430, layer_get_id("Eye_Options"), obj_arrow);
leftArrow.sprite_index = spr_leftarrow;
leftArrow.action = goBack;

function changeEyeButtonColor() {
	var spriteString = "spr_eyes_" + string(global.currentEyeStyleIndex) + "_" + global.currentEyeColor;
	button.sprite_index = asset_get_index(spriteString);
}