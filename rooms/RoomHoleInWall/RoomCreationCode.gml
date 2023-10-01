var a = call_later(12, time_source_units_seconds, function(){
	room_goto(RoomLoop);
	var b = call_later(0.1, time_source_units_seconds, function(){
		objHideBlockLock.isLocked = false;
		objSoundController.playRainWind();
		objLightning.showLightning();
		objLightingController.isInDark = true;
	});
});