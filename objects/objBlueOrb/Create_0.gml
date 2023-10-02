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