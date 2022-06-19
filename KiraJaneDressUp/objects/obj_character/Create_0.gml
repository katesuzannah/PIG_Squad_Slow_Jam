randomize();
global.character_sprites = [spr_character_skincolor_1, spr_character_skincolor_2, spr_character_skincolor_3, spr_character_skincolor_4, spr_character_skincolor_5];
global.skinColorIndex = irandom(array_length(global.character_sprites)-1);
sprite_index = global.character_sprites[global.skinColorIndex];