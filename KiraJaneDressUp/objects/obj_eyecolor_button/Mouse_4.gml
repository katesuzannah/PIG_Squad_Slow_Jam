/// @description Change character hair color when clicked
global.currentEyeColor = characterEyeColor;
changeEyes();
//Change all hair buttons to match the new color
instance_find(obj_eye_button_manager, 0).changeEyeButtonColor();
event_inherited();