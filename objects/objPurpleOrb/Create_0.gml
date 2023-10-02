angle = 0;
loopShow = 2;

function Interact() {
	if(!forceShow && global.loopCounter != loopShow) {
		return;
	}
	
	CreateTextboxSimple(["Picked up a glowing purple orb"]);
	
	objPlayerInventory.flagPurpleOrb = true;
	
	objPlayerInventory.addItem(
		"Purple orb", 
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
			x = 1736;
			y = 856;
		break;
		
		case 1:
			x = 2096;
			y = 1096;
		break;
		
		case 2:
			x = 2104;
			y = 712;
		break;
	}
}