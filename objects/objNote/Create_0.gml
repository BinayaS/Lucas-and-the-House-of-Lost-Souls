event_inherited();

function Interact() {
	CreateTextboxSimple(["Picked up a torn page of a newspaper"]);
	
	objPlayerInventory.flagNewspaperPage = true;
	
	objPlayerInventory.addItem(
		"Newspaper", 
		objEmpty, 
		function(){
			objPlayer.isInInventory = !objPlayer.isInInventory;
			objPlayerInventory.isHidden = !objPlayerInventory.isHidden;
			CreateTextboxSimple(["A dramatic increase in the number of missing persons reports has local residents worried.", 
								 "Rumors of the recent missing persons being last seen at an abandoned house has yet to be verified.",
								 "Police are currently investingating ............ the rest is missing.",
								 "T U R N  B A C K     is sprawled over the page."]);
		}
	);
	
	objSoundController.playPickupItemSound();
	instance_destroy(self);
}