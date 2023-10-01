view_enabled = true;
view_visible[0] = true;
view_camera[0] = camera;

var _solidsLayer = layer_get_id("Solids");
if(_solidsLayer != -1) {
	layer_set_visible(_solidsLayer, false);
}

var _backgroundLayer = layer_get_id("Backgrounds_1");
if(_backgroundLayer != -1) {
	layer_set_visible(_backgroundLayer, false);
}