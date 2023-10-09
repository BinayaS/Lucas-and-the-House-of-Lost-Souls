isInRain = false;
wind = audio_play_sound(Ambient_Noise_1, 1, 1, 0.5);

function playPickupItemSound() {
	audio_play_sound(coin_6, 1, 0, 0.7, 0, random_range(0.7, 1));
}

function playRainWind() {
	if(!audio_is_playing(Looped___Rain__Thunder__Residential_Neighborhood__Splashing_Concrete__Singapore)) {
		rain = audio_play_sound(Looped___Rain__Thunder__Residential_Neighborhood__Splashing_Concrete__Singapore, 1, 1, 0);
	}
	
	if(!audio_is_playing(Ambient_Noise_1)) {
		wind = audio_play_sound(Ambient_Noise_1, 1, 1, 0);
	}
	
	audio_sound_gain(rain, 1, 500);
	audio_sound_gain(wind, 0.5, 500);
}

function StartIsInRain() {
	isInRain = true;
	var _a = call_later(global.debug ? 20 : random_range(120, 240), time_source_units_seconds, function(){
			
		var num = irandom_range(0, 9);
		
		switch(num) {
			case 0:
				audio_play_sound(Alien_Clicks_02, 1, 0, 0.45, 0, random_range(0.5, 1.3));
			break;
			
			case 2:
				audio_play_sound(Cutting_on_cutting_board, 1, 0, 0.8, 0, random_range(0.5, 0.8));
			break;
			
			case 3:
				audio_play_sound(Metal_Trap_Opening_5, 1, 0, 0.8, 0, random_range(0.5, 1.1));
			break;
			
			case 5:
				audio_play_sound(Percussive_Atmosphere, 1, 0, 0.25, 0, random_range(0.5, 1.1));
			break;
			
			case 7:
				audio_play_sound(Strange_Glass_Sound, 1, 0, 0.7, 0, random_range(0.5, 1));
			break;
			
			case 8:
				audio_play_sound(Atmosphere_05, 1, 0, 0.5, 0, random_range(0.5, 1));
			break;
			
			default:
				// Empty
			break;
		}
	}, true);
}