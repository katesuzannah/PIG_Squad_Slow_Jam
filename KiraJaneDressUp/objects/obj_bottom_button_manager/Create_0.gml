global.bottomSprites = [spr_pant_1, spr_pant_2, spr_pant_3, spr_skirt_1, spr_skirt_2, spr_skirt_3, spr_skirt_4, spr_skirt_5, spr_skirt_6, spr_skirt_7];
global.currentBottomIndex = irandom(array_length(global.bottomSprites)-1);

function goNext() {
	with(instance_find(obj_bottom_button_manager, 0)) {
		global.currentBottomIndex++;
		if (global.currentBottomIndex > array_length(global.bottomSprites)-1) {
			global.currentBottomIndex = 0;
		}
		button.sprite_index = global.bottomSprites[global.currentBottomIndex];
	}
}

function goBack() {
	with(instance_find(obj_bottom_button_manager, 0)) {
		global.currentBottomIndex--;
		if (global.currentBottomIndex < 0) {
			global.currentBottomIndex = array_length(global.bottomSprites)-1;
		}
		button.sprite_index = global.bottomSprites[global.currentBottomIndex];
	}
}

//Create style button and arrows
button = instance_create_layer(x + 180, y + 400, layer_get_id("Bottom_Options"), obj_bottomButton);
button.sprite_index = global.bottomSprites[global.currentBottomIndex];
rightArrow = instance_create_layer(x + 400, y + 400, layer_get_id("Bottom_Options"), obj_arrow);
rightArrow.action = goNext;

leftArrow = instance_create_layer(x + -30, y + 400, layer_get_id("Bottom_Options"), obj_arrow);
leftArrow.sprite_index = spr_leftarrow;
leftArrow.action = goBack;

instance_activate_layer("Top_Options");
instance_deactivate_layer("Bottom_Options");
instance_deactivate_layer("Dress_Options");