shoeSprites = [spr_shoes, spr_shoes_1, spr_shoes_2, spr_shoes_3, spr_shoes_4, spr_shoes_5, spr_shoes_6, spr_shoes_7, spr_shoes_8, spr_shoes_9, spr_shoes_10, spr_shoes_11, spr_shoes_12];
currentShoeIndex = irandom(array_length(shoeSprites)-1);

function goNext() {
	with(instance_find(obj_shoe_button_manager, 0)) {
		currentShoeIndex++;
		if (currentShoeIndex > array_length(shoeSprites)-1) {
			currentShoeIndex = 0;
		}
		button.sprite_index = shoeSprites[currentShoeIndex];
	}
}

function goBack() {
	with(instance_find(obj_shoe_button_manager, 0)) {
		currentShoeIndex--;
		if (currentShoeIndex < 0) {
			currentShoeIndex = array_length(shoeSprites)-1;
		}
		button.sprite_index = shoeSprites[currentShoeIndex];
	}
}

//Create style button and arrows
button = instance_create_layer(x + 270, y + 280, layer_get_id("Shoe_Options"), obj_shoeButton);
button.sprite_index = shoeSprites[currentShoeIndex];
rightArrow = instance_create_layer(x + 500, y + 280, layer_get_id("Shoe_Options"), obj_arrow);
rightArrow.action = goNext;

leftArrow = instance_create_layer(x + 50, y + 280, layer_get_id("Shoe_Options"), obj_arrow);
leftArrow.sprite_index = spr_leftarrow;
leftArrow.action = goBack;
instance_activate_layer("Top_Options");
instance_deactivate_layer("Bottom_Options");
instance_deactivate_layer("Dress_Options");
instance_deactivate_layer("Shoe_Options");

//Tuck/untuck toggle
instance_create_layer(x + 268, y + 600, "Shoe_Options", obj_tuckToggleShoes);