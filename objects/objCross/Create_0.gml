isfliped = false;

function Interact() {
	
	if(!isfliped) {
		CreateTextboxSimple(["A wooden cross"]);
	} else {
		isfliped = false;
		image_index = 0;
		CreateTextboxSimple(["Flipped the wooden cross"]);
		objPlayerInventory.flagNumberFlippedCrosses += 1;
	}
}

function FlipCross() {
	isfliped = true;
	image_index = 1;
}