dressSprites = [spr_dress_1, spr_dress_2, spr_dress_3, spr_dress_4];
currentDressIndex = irandom(array_length(dressSprites)-1);

function goNext() {
	with(instance_find(obj_dress_button_manager, 0)) {
		currentDressIndex++;
		if (currentDressIndex > array_length(dressSprites)-1) {
			currentDressIndex = 0;
		}
		button.sprite_index = dressSprites[currentDressIndex];
	}
}

function goBack() {
	with(instance_find(obj_dress_button_manager, 0)) {
		currentDressIndex--;
		if (currentDressIndex < 0) {
			currentDressIndex = array_length(dressSprites)-1;
		}
		button.sprite_index = dressSprites[currentDressIndex];
	}
}

//Create style button and arrows
button = instance_create_layer(x + 270, y + 280, layer_get_id("Dress_Options"), obj_dressButton);
button.sprite_index = dressSprites[currentDressIndex];
rightArrow = instance_create_layer(x + 500, y + 280, layer_get_id("Dress_Options"), obj_arrow);
rightArrow.action = goNext;

leftArrow = instance_create_layer(x + 50, y + 280, layer_get_id("Dress_Options"), obj_arrow);
leftArrow.sprite_index = spr_leftarrow;
leftArrow.action = goBack;

