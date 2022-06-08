skin_color_sprites = [spr_skincolor_1, spr_skincolor_2, spr_skincolor_3, spr_skincolor_4, spr_skincolor_5];
for (var i = 0; i < array_length(skin_color_sprites); i++) {
	var button = instance_create_depth(x + 40 * i, y, -2, obj_skincolor_button);
	button.sprite_index = skin_color_sprites[i];
	button.characterSkinColor = global.character_sprites[i];
}
