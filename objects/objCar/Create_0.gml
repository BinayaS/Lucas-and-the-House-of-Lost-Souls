event_inherited();

function Interact() {
	if(objPlayerInventory.flagNewspaperPage) {
		objPlayer.isPaused = true;
		
		instance_create_layer(x - 480, y, layer, objGhostFastChase);
		global.isEnd = true;
		
	} else {
		CreateTextboxSimple(["I've come this far, I can't turn back now"]);
	}
}