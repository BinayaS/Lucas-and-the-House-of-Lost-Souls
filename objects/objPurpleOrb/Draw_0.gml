if(!forceShow && global.loopCounter != loopShow) {
	return;
}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, angle, c_white, image_alpha);