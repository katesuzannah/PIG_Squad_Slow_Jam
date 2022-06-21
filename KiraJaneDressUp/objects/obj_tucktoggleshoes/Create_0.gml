image_xscale = .7;
image_yscale = .7;
event_inherited();

pantTucked = false;
shoes = instance_find(obj_shoes, 0);
bottom = instance_find(obj_bottom, 0);
instance_find(obj_character, 0).depth = 1001;