image_xscale = .35;
image_yscale = .35;
event_inherited();

offsets = ds_map_create();
ds_map_add(offsets, spr_dress_1, {x: 0, y: 0, scale: .35});
ds_map_add(offsets, spr_dress_2, {x: 0, y: 0, scale: .25});
ds_map_add(offsets, spr_dress_3, {x: 0, y: 0, scale: .35});
ds_map_add(offsets, spr_dress_4, {x: 0, y: -100, scale: .3});

startX = x;
startY = y;

function adjustPosition() {
	var dress = ds_map_find_value(offsets, sprite_index);
	x = startX + dress.x;
	y = startY + dress.y;
	image_xscale = dress.scale;
	image_yscale = dress.scale;
	startScale = dress.scale;
}