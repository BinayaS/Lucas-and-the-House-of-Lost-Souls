loopShow = 4;

function Interact() {
	if(global.loopCounter != loopShow) {
		return;
	}
	
	if(objPlayerInventory.flagPurpleOrb) {
		if(image_index == 0) {
			image_index = 1;
			CreateTextboxSimple(["Put the purple orb into the angel statue's hand"]);
			objPlayerInventory.removeItem("Purple orb");
			objPlayerInventory.flagPurpleOrb = false;
		}
		
	} else {
		if(image_index == 1) {
			image_index = 0;
			CreateTextboxSimple(["Took the purple orb from the angel statue's hand"]);
			objPlayerInventory.flagPurpleOrb = true;
			objPlayerInventory.addItem(
				"purple orb", 
				objEmpty, 
				function() {
					objPlayer.isInInventory = !objPlayer.isInInventory;
					objPlayerInventory.isHidden = !objPlayerInventory.isHidden;
					CreateTextboxSimple(["It's warm. I wonder where this goes"]);
				}
			);
		} else {
			CreateTextboxSimple(["An angel statue reaching up to the sky. It's hand looks empty"]);
		}
	}
}