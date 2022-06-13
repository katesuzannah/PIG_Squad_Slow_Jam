hairOffsets = ds_map_create();
ds_map_add(hairOffsets, "afro", {x: -6, y: -46});
ds_map_add(hairOffsets, "bangs", {x: 0, y: 0});

startX = x;
startY = y;
function adjustPosition() {
	x = startX + ds_map_find_value(hairOffsets, global.currentHairStyle).x;
	y = startY + ds_map_find_value(hairOffsets, global.currentHairStyle).y;
}