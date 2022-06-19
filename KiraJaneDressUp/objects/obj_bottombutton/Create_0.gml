image_xscale = .35;
image_yscale = .35;
event_inherited();

offsets = ds_map_create();
ds_map_add(offsets, spr_pant_1, {x: 0, y: 50});
ds_map_add(offsets, spr_pant_2, {x: 0, y: 0});
ds_map_add(offsets, spr_pant_3, {x: 0, y: 150});
ds_map_add(offsets, spr_skirt_1, {x: 0, y: 100});
ds_map_add(offsets, spr_skirt_2, {x: 0, y: 150});
ds_map_add(offsets, spr_skirt_3, {x: 0, y: 150});
ds_map_add(offsets, spr_skirt_4, {x: 0, y: 150});
ds_map_add(offsets, spr_skirt_5, {x: 0, y: 150});
ds_map_add(offsets, spr_skirt_6, {x: 0, y: 250});
ds_map_add(offsets, spr_skirt_7, {x: 0, y: 30});

startX = x;
startY = y;

function adjustPosition() {
	var bottom = ds_map_find_value(offsets, sprite_index);
	x = startX + bottom.x;
	y = startY + bottom.y;
}