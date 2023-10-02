isfliped = false;
loopShow = -1;

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
	
	var _r = irandom_range(0, 3);
	
	switch(_r) {
		case 0:
			if(indexNumber == 0) {
				x = 656;
				y = 1200;
			}
			if(indexNumber == 1) {
				x = 896;
				y = 976;
			}
			if(indexNumber == 2) {
				x = 1744;
				y = 808;
			}
		break;
		
		case 1:
			if(indexNumber == 0) {
				x = 304;
				y = 1248;
			}
			if(indexNumber == 1) {
				x = 1336;
				y = 1168;
			}
			if(indexNumber == 2) {
				x = 1920;
				y = 544;
			}
		break;
		
		case 2:
			if(indexNumber == 0) {
				x = 688;
				y = 1168;
			}
			if(indexNumber == 1) {
				x = 1496;
				y = 976;
			}
			if(indexNumber == 2) {
				x = 2072;
				y = 968;
			}
		break;
		
		case 3:
			if(indexNumber == 0) {
				x = 304;
				y = 976;
			}
			if(indexNumber == 1) {
				x = 1760;
				y = 1168;
			}
			if(indexNumber == 2) {
				x = 1328;
				y = 976;
			}
		break;
	}
	
}