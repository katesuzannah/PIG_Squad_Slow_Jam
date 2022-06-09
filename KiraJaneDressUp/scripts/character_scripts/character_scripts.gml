// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function changeSkinColor(sprite) {
	instance_find(obj_character, 0).sprite_index = sprite;
}

function changeHairColor(color) {//color is a string
	var hairString = "spr_" + global.currentHairStyle;
	//instance_find(obj_hair, 0).sprite_index = 
}
