if (topTucked) {
	top.depth = 998;
	bottom.depth = 999;
}
else {
	top.depth = 999;
	bottom.depth = 998;
}
topTucked = !topTucked;
event_inherited();