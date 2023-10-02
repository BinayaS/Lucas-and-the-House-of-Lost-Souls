event_inherited();

angle = 0;

function Interact() {
	CreateTextboxSimple(["Picked up a key"]);
	
	objPlayerInventory.flagHouseKey = true;
	
	objPlayerInventory.addItem(
		"House key", 
		objEmpty, 
		function(){
			objPlayer.isInInventory = !objPlayer.isInInventory;
			objPlayerInventory.isHidden = !objPlayerInventory.isHidden;
			CreateTextboxSimple(["Just a normal key"]);
		}
	);
	
	objSoundController.playPickupItemSound();
	
	instance_destroy(self);
}