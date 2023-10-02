var night = audio_play_sound(Nature_night_ambiance, 1, 1, 1, random_range(0, 12), 0.7);

var a = call_later(7, time_source_units_seconds, function() {
	audio_stop_sound(Nature_night_ambiance);
	room_goto(RoomLoop);
});