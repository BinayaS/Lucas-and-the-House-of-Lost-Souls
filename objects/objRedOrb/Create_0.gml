angle = 0;
loopShow = 2;

function Interact() {
	if(global.loopCounter != loopShow) {
		return;
	}
	
	CreateTextboxSimple(["Picked up a glowing red orb"]);
	
	objPlayerInventory.flagRedOrb = true;
	objHideBlockLock.isLocked = false;
	
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