//Resize the canvas, view and application surface to fill the browser

var widthToSet = browser_width;
var heightToSet = browser_height;

if (browser_height < browser_width / aspect_ratio) {
	widthToSet = browser_height * aspect_ratio;
}
else {
	heightToSet = browser_width * (1/aspect_ratio);
}
window_set_size(widthToSet, heightToSet);
//camera_set_view_size(view_camera[0],browser_width,browser_height);
surface_resize(application_surface, widthToSet, heightToSet);