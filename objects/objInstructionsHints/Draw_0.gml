if(!show) {
	return;
}

if(fadeInFlag) {
	image_alpha = min(image_alpha+0.01, 1);
	if(image_alpha == 1) {
		fadeInFlag = false;
	}
} else {
	image_alpha = max(image_alpha-0.005, 0);
}


draw_self();