topSprites = [spr_top_1, spr_top_2, spr_top_3, spr_top_4, spr_top_5, spr_top_6, spr_top_7, spr_top_8, spr_top_9, spr_top_10];
currentTopIndex = irandom(array_length(topSprites)-1);

function goNext() {
	with(instance_find(obj_top_button_manager, 0)) {
		currentTopIndex++;
		if (currentTopIndex > array_length(topSprites)-1) {
			currentTopIndex = 0;
		}
		button.sprite_index = topSprites[currentTopIndex];
	}
}

function goBack() {
	with(instance_find(obj_top_button_manager, 0)) {
		currentTopIndex--;
		if (currentTopIndex < 0) {
			currentTopIndex = array_length(topSprites)-1;
		}
		button.sprite_index = topSprites[currentTopIndex];
	}
}

//Create style button and arrows
button = instance_create_layer(x + 270, y + 280, layer_get_id("Top_Options"), obj_topButton);
button.sprite_index = topSprites[currentTopIndex];
rightArrow = instance_create_layer(x + 500, y + 280, layer_get_id("Top_Options"), obj_arrow);
rightArrow.action = goNext;

leftArrow = instance_create_layer(x + 50, y + 280, layer_get_id("Top_Options"), obj_arrow);
leftArrow.sprite_index = spr_leftarrow;
leftArrow.action = goBack;