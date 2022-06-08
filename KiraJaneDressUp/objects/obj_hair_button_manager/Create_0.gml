for (var i = 0; i < ds_list_size(button_sprites); i++) {
	var button = instance_create_depth(x + 40 * i, y, -2, obj_skincolor_button);
	button.sprite_index = button_sprites[i];
	button.characterSkinColor = global.character_sprites[i];
}
