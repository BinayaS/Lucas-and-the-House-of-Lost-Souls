customWidth = global.res_width;
customHeight = global.res_height;
zoom = 1;
zoomTarget = 1;

follow = noone;

if(instance_exists(objPlayer)) {
	follow = objPlayer;
	xTo = x;
	yTo = y;
} else {
	follow = noone;
	xTo = 0;
	yTo = 0;
}

camera = camera_create();

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(customWidth, customHeight, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

window_set_size(customWidth * 2, customHeight * 2);

audio_play_sound(Retro_Action_Loop__1, 0, 1, 0.75);