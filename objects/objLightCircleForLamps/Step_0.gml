image_xscale = lerp(image_xscale, randomScale, 0.1);
image_yscale = lerp(image_yscale, randomScale, 0.1);

randomScale = random_range(0.9, 1.1);

if(!isOff) {
	image_alpha = 1;
	var a = irandom_range(0, 400);
	if(a == 13) {
		isOff = true;
		var _b = call_later(random_range(2, 4), time_source_units_seconds, function(){isOff = false});
	}
} else {
	image_alpha = 0;
}