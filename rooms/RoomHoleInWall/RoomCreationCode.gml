var a = call_later(global.debug ? 2 : 12, time_source_units_seconds, function(){
	room_goto(RoomLoop);
	var b = call_later(2, time_source_units_frames, function(){
		if(room != RoomLoop) {
			return;
		}
		
		objPlayerInventory.flagLookedThroughHole = true;
		objSoundController.playRainWind();
		objSoundController.StartIsInRain();
		objLightning.showLightning();
		objLightingController.isInDark = true;
		objWindow.isBroken = true;
	});
});