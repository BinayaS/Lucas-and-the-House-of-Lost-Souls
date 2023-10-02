angle = 0;
loopShow = 2;

function Interact() {
	if(!forceShow && global.loopCounter != loopShow) {
		return;
	}
	
	CreateTextboxSimple(["Picked up a glowing red orb"]);
	
	objPlayerInventory.flagRedOrb = true;
	
	objPlayerInventory.addItem(
		"Red orb", 
		objEmpty, 
		function() {
			objPlayer.isInInventory = !objPlayer.isInInventory;
			objPlayerInventory.isHidden = !objPlayerInventory.isHidden;
			CreateTextboxSimple(["It's warm. I wonder where this goes"]);
		}
	);
	
	objSoundController.playPickupItemSound();
	
	instance_destroy(self);
}

function randomizeOrbs() {
	var _r = irandom_range(0, 2);
	
	switch(_r) {
		case 0:
			x = 1072;
			y = 1080;
		break;
		
		case 1:
			x = 1272;
			y = 1000;
		break;
		
		case 2:
			x = 1688;
			y = 1168;
		break;
	}
}