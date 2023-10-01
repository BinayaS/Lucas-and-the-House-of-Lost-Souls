image_alpha = 0;

lightning = false;
randomlighting = false;

lightningLayer = layer_get_id("Lightning");
if(lightningLayer != -1) {
	layer_set_visible(lightningLayer, true);
}

function showLightning() {
	image_alpha = 1;
	audio_play_sound(sndThunder, 1, 0, 1, 0, random_range(0.8, 1.1));
	lightning = true;
	objLightingController.isInDark = false;
	
	if(!randomlighting) {
		var a = call_later(random_range(15, 60), time_source_units_seconds, function(){showLightning()}, true);
		randomlighting = true;
	}
}