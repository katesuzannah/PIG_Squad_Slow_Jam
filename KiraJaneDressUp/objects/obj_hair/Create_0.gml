hairOffsets = ds_map_create();
ds_map_add(hairOffsets, "afro", {x: -6, y: -67, scale: image_xscale * .92});
ds_map_add(hairOffsets, "afropigtails", {x: -7, y: -40, scale: image_xscale * .9});
ds_map_add(hairOffsets, "bangs", {x: 0, y: 5, scale: image_xscale * .9});
ds_map_add(hairOffsets, "bob", {x: 0, y: -40, scale: image_xscale});
ds_map_add(hairOffsets, "boxbraids", {x: 4, y: -8, scale: image_xscale * .9});
ds_map_add(hairOffsets, "braid", {x: -4, y: -15, scale: image_xscale * .9});
ds_map_add(hairOffsets, "curly", {x: 0, y: -13, scale: image_xscale * .9});
ds_map_add(hairOffsets, "fingerwave", {x: 0, y: -30, scale: image_xscale * .9});
ds_map_add(hairOffsets, "kira", {x: 8, y: -1, scale: image_xscale * .9});
ds_map_add(hairOffsets, "longafro", {x: -2, y: -25, scale: image_xscale * .9});
ds_map_add(hairOffsets, "short", {x: -2, y: -35, scale: image_xscale * .9});
ds_map_add(hairOffsets, "shortwavy", {x: -1, y: -30, scale: image_xscale * .9});
ds_map_add(hairOffsets, "straight", {x: -5, y: -2, scale: image_xscale * .9});
ds_map_add(hairOffsets, "undercut", {x: -1, y: -32, scale: image_xscale * .9});

startX = x;
startY = y;

function adjustPosition() {
	var hair = ds_map_find_value(hairOffsets, global.currentHairStyle);
	x = startX + hair.x;
	y = startY + hair.y;
	image_xscale = hair.scale;
	image_yscale = hair.scale;
}