if (pantTucked) {
	//bottom.depth = 998;
	shoes.depth = 1000;
}
else {
	//bottom.depth = 999;
	shoes.depth = 997;
}
pantTucked = !pantTucked;
event_inherited();