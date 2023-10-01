image_alpha = max(image_alpha-0.01, 0);

if(image_alpha == 0 && lightning) {
	lightning = false;
	objLightingController.isInDark = true;
}