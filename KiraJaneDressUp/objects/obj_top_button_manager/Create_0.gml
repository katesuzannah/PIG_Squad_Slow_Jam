global.topSprites = [spr_top_1, spr_top_2, spr_top_3, spr_top_4, spr_top_5, spr_top_6, spr_top_7, spr_top_8, spr_top_9, spr_top_10];
global.currentTopIndex = irandom(array_length(global.topSprites)-1);

function goNext() {
	with(instance_find(obj_top_button_manager, 0)) {
		global.currentTopIndex++;
		if (global.currentTopIndex > array_length(global.topSprites)-1) {
			global.currentTopIndex = 0;
		}
		button.sprite_index = global.topSprites[global.currentTopIndex];
	}
}

function goBack() {
	with(instance_find(obj_top_button_manager, 0)) {
		global.currentTopIndex--;
		if (global.currentTopIndex < 0) {
			global.currentTopIndex = array_length(global.topSprites)-1;
		}
		button.sprite_index = global.topSprites[global.currentTopIndex];
	}
}

//Create style button and arrows
button = instance_create_layer(x + 180, y + 400, layer_get_id("Top_Options"), obj_topButton);
button.sprite_index = global.topSprites[global.currentTopIndex];
rightArrow = instance_create_layer(x + 400, y + 400, layer_get_id("Top_Options"), obj_arrow);
rightArrow.action = goNext;

leftArrow = instance_create_layer(x + -30, y + 400, layer_get_id("Top_Options"), obj_arrow);
leftArrow.sprite_index = spr_leftarrow;
leftArrow.action = goBack;