bottomSprites = [spr_pant_1, spr_pant_2, spr_pant_3, spr_skirt_1, spr_skirt_2, spr_skirt_3, spr_skirt_4, spr_skirt_5, spr_skirt_6, spr_skirt_7];
currentBottomIndex = irandom(array_length(bottomSprites)-1);

function goNext() {
	with(instance_find(obj_bottom_button_manager, 0)) {
		currentBottomIndex++;
		if (currentBottomIndex > array_length(bottomSprites)-1) {
			currentBottomIndex = 0;
		}
		button.sprite_index = bottomSprites[currentBottomIndex];
	}
}

function goBack() {
	with(instance_find(obj_bottom_button_manager, 0)) {
		currentBottomIndex--;
		if (currentBottomIndex < 0) {
			currentBottomIndex = array_length(bottomSprites)-1;
		}
		button.sprite_index = bottomSprites[currentBottomIndex];
	}
}

//Create style button and arrows
button = instance_create_layer(x + 270, y + 280, layer_get_id("Bottom_Options"), obj_bottomButton);
button.sprite_index = bottomSprites[currentBottomIndex];
rightArrow = instance_create_layer(x + 500, y + 280, layer_get_id("Bottom_Options"), obj_arrow);
rightArrow.action = goNext;

leftArrow = instance_create_layer(x + 50, y + 280, layer_get_id("Bottom_Options"), obj_arrow);
leftArrow.sprite_index = spr_leftarrow;
leftArrow.action = goBack;