if(isTitle) {
	var _fx_struct = layer_get_fx("Effect_1");

	if (_fx_struct != -1)
	{
	    var _params = fx_get_parameters(_fx_struct);
	    _params.g_CellSize = max(_params.g_CellSize - 1, 1);
	    fx_set_parameters(_fx_struct, _params);
	}
}

if(follow == noone && instance_exists(objPlayer)) {
	follow = objPlayer;
	x = objPlayer.x;
	y = objPlayer.y;
	xTo = x;
	yTo = y;
}

// Set zoom
zoom = lerp(zoom, zoomTarget, 0.05);

// Move camera
x += ((xTo - x)/1);
y += ((yTo - y)/1);

// Update follow target
if(follow != noone && instance_exists(follow)) {
	xTo = (round(follow.x / customWidth) * customWidth);
	yTo = (round(follow.y / customHeight) * customHeight);
}

// Don't go outside the room
x = clamp(x, customWidth/2, room_width-(customWidth/2));
y = clamp(y, customHeight/2, room_height-(customHeight/2));

// Camera step
camera_set_view_size(camera, customWidth * zoom, customHeight * zoom);
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);