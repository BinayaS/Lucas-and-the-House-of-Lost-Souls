angle = 0;
loopShow = 2;

function Interact() {
	if(!forceShow && global.loopCounter != loopShow) {
		return;
	}
	
	CreateTextboxSimple(["Picked up a glowing blue orb"]);
	
	objPlayerInventory.flagBlueOrb = true;
	
	objPlayerInventory.addItem(
		"Blue orb", 
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
			x = 408;
			y = 1000;
		break;
		
		case 1:
			x = 664;
			y = 1544;
		break;
		
		case 2:
			x = 296;
			y = 1640;
		break;
	}
}