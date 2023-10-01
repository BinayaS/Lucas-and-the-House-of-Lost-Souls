function Interact() {
	CreateTextboxSimple(["Found a key"]);
	
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
	
	instance_destroy(self);
}