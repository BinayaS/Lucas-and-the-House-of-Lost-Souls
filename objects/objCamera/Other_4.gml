view_enabled = true;
view_visible[0] = true;
view_camera[0] = camera;

var _solidsLayer = layer_get_id("Solids");
if(_solidsLayer != -1) {
	layer_set_visible(_solidsLayer, false);
}