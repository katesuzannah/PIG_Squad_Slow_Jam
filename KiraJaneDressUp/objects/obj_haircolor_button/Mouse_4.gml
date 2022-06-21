/// @description Change character hair color when clicked
global.currentHairColor = characterHairColor;
changeHair();
//Change all hair buttons to match the new color
instance_find(obj_hair_button_manager, 0).changeHairButtonColor();
event_inherited();