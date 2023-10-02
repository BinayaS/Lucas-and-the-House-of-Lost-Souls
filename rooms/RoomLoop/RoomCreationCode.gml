audio_stop_all();
audio_play_sound(Door_close, 0, 0);
var a = call_later(0.1, time_source_units_seconds, function(){
	CreateTextboxSimple(["**The door locks behind you**"]);
});
var b = call_later(0.5, time_source_units_seconds, function(){
	audio_play_sound(Distant_RISER, 0, 0);
});