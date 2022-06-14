hairOffsets = ds_map_create();
ds_map_add(hairOffsets, "afro", {x: -6, y: -46});
ds_map_add(hairOffsets, "afropigtails", {x: 0, y: 0});
ds_map_add(hairOffsets, "bangs", {x: 0, y: 0});
ds_map_add(hairOffsets, "bob", {x: 0, y: 0});
ds_map_add(hairOffsets, "boxbraids", {x: 0, y: 0});
ds_map_add(hairOffsets, "braid", {x: 0, y: 0});
ds_map_add(hairOffsets, "curly", {x: 0, y: 0});
ds_map_add(hairOffsets, "fingerwave", {x: 0, y: 0});
ds_map_add(hairOffsets, "kira", {x: 0, y: 0});
ds_map_add(hairOffsets, "longafro", {x: 0, y: 0});
ds_map_add(hairOffsets, "short", {x: 0, y: 0});
ds_map_add(hairOffsets, "shortwavy", {x: -6, y: -28});
ds_map_add(hairOffsets, "straight", {x: 0, y: 0});
ds_map_add(hairOffsets, "undercut", {x: 0, y: 0});

startX = x;
startY = y;
function adjustPosition() {
	x = startX + ds_map_find_value(hairOffsets, global.currentHairStyle).x;
	y = startY + ds_map_find_value(hairOffsets, global.currentHairStyle).y;
}