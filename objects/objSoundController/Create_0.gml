rain = audio_play_sound(Looped___Rain__Thunder__Residential_Neighborhood__Splashing_Concrete__Singapore, 1, 1);
wind = audio_play_sound(Ambient_Noise_1, 1, 1, 0.5);

function playPickupItemSound() {
	audio_play_sound(coin_6, 1, 0, 1, 0, 0.8);
}

function playRainWind() {
	rain = audio_play_sound(Looped___Rain__Thunder__Residential_Neighborhood__Splashing_Concrete__Singapore, 1, 1, 0);
	wind = audio_play_sound(Ambient_Noise_1, 1, 1, 0);
	
	audio_sound_gain(rain, 1, 500);
	audio_sound_gain(wind, 0.5, 500);
}