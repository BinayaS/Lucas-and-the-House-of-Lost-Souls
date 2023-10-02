event_inherited();

function Interact() {
	CreateTextboxSimple(["Picked up a torn page of a newspaper"]);
	
	objPlayerInventory.flagNewspaperPage = true;
	
	objPlayerInventory.addItem(
		"Outside newspaper", 
		objEmpty, 
		function(){
			objPlayer.isInInventory = !objPlayer.isInInventory;
			objPlayerInventory.isHidden = !objPlayerInventory.isHidden;
			CreateTextboxSimple(["A dramatic increase in the number of missing persons reports has local residents worried.", 
								 "Rumors of the recent missing persons being last seen at a mysterious house has yet to be verified.",
								 "Police are currently investingating ... the rest is missing.",
								 "TURN BACK is sprawled over the page in dried blood."]);
		}
	);
	
	objSoundController.playPickupItemSound();
	instance_destroy(self);
}