loopShow = 5;

function Interact() {
	if(global.loopCounter != loopShow) {
		return;
	}
	
	objPlayer.isFinalScene = true;
	objWindow.isFinal = true;
	objWindow.isBroken = false;
	var _wlight = instance_create_layer(x, y, layer, objFinalWhiteLight);
	_wlight.image_xscale = 20;
	_wlight.image_yscale = 20;
}