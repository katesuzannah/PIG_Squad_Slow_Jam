global.dressSprites = [spr_dress_1, spr_dress_2, spr_dress_3];
global.currentDressIndex = irandom(array_length(global.dressSprites)-1);

function goNext() {
	with(instance_find(obj_dress_button_manager, 0)) {
		global.currentDressIndex++;
		if (global.currentDressIndex > array_length(global.dressSprites)-1) {
			global.currentDressIndex = 0;
		}
		button.sprite_index = global.dressSprites[global.currentDressIndex];
	}
}

function goBack() {
	with(instance_find(obj_dress_button_manager, 0)) {
		global.currentDressIndex--;
		if (global.currentDressIndex < 0) {
			global.currentDressIndex = array_length(global.dressSprites)-1;
		}
		button.sprite_index = global.dressSprites[global.currentDressIndex];
	}
}

//Create style button and arrows
button = instance_create_layer(x + 180, y + 400, layer_get_id("Dress_Options"), obj_dressButton);
button.sprite_index = global.dressSprites[global.currentDressIndex];
rightArrow = instance_create_layer(x + 400, y + 400, layer_get_id("Dress_Options"), obj_arrow);
rightArrow.action = goNext;

leftArrow = instance_create_layer(x + -30, y + 400, layer_get_id("Dress_Options"), obj_arrow);
leftArrow.sprite_index = spr_leftarrow;
leftArrow.action = goBack;

