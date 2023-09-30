// Show hide inventory
var _inventory = keyboard_check_pressed(ord("I"));

if(_inventory && !instance_exists(objTextbox) && !instance_exists(objTextboxChoice)) {
	objPlayer.isInInventory = !objPlayer.isInInventory;
	isHidden = !isHidden;
}

if(isHidden) {
	return;
}

// Move up and down list
lastVertical = vertical;
vertical = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var _inventoryTick = false;

if(vertical != 0) {
	timer = min(timer+1, timerMax);
	if(timer == timerMax) {
		_inventoryTick = true;
		timer = 0;
	}
} else if(vertical == 0) {
	if(timer != 0) {
		_inventoryTick = true;
		timer = 0;
	}
}

if(_inventoryTick) {
	if(vertical != 0) {
		if(vertical > 0) {
			index += 1;
			index = min(index, ds_list_size(stuffList)-1);
		} else if(vertical < 0) {
			index -= 1;
			index = max(index, 0);
		}
	} else {
		if(lastVertical > 0) {
			index += 1;
			index = min(index, ds_list_size(stuffList)-1);
		} else if(lastVertical < 0) {
			index -= 1;
			index = max(index, 0);
		}
	}
}

// Interact with object
if(keyboard_check_pressed(ord("J"))) {
	if(ds_list_size(stuffList) > 0) {
		stuffList[| index].interact();
	}
}