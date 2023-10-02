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