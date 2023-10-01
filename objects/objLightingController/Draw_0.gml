var _xoffset = room_width*1.5 - room_width;
var _yoffset = room_height*1.5 - room_height;

if(!surface_exists(lightingSurface)) {
	lightingSurface = surface_create(room_width*1.5, room_height*1.5);
}

surface_set_target(lightingSurface);

// Draw stuff
if(isInDark) {
	draw_clear_alpha(c_black, 1);
	
	with(objLightCircle) {
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(sprite_index, image_index, x + _xoffset, y + _yoffset, image_xscale, image_yscale, image_angle, c_white, image_alpha);
		gpu_set_blendmode(bm_normal);
	}
	
} else if(instance_exists(objLightning) && objLightning.image_alpha != 0) {
	draw_clear_alpha(c_black, 1-objLightning.image_alpha);
	
	with(objLightCircle) {
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(sprite_index, image_index, x + _xoffset, y + _yoffset, image_xscale, image_yscale, image_angle, c_white, 1-objLightning.image_alpha);
		gpu_set_blendmode(bm_normal);
	}
}


	
// End of Draw stuff
surface_reset_target();

draw_surface(lightingSurface, -_xoffset, -_yoffset);