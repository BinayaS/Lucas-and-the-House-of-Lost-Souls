function Interact() {
	
	if(objPlayerInventory.flagHouseKey) {
		room_goto(gotoRoom);
	} else {
		CreateTextboxSimple(["It's locked"]);
	}
	
}