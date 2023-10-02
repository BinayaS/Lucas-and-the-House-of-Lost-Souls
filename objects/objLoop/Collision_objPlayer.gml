other.y = 1736;
other.x = other.x - (480*3);

audio_play_sound(Door_close, 0, 0, 1, 0, random_range(0.8, 1));

switch(global.loopCounter) {
	// First loop
	case 0:
		global.loopCounter += 1;
	break;
	
	// Left room
	case 1:
		if(objPlayerInventory.flagLookedThroughHole) {
			global.loopCounter += 1;
		}
	break;
	
	// Bottom room
	case 2:
		if(objPlayerInventory.flagRedOrb) {
			global.loopCounter += 1;
		}
	break;
	
	case 3:
	break;
	
	case 4:
	break;
	
	case 5:
	break;
	
	default:
	break;
}

// Did we progress the loop?
if(global.loopCounter != internalLoopCounter) {
	internalLoopCounter = global.loopCounter;
	instance_create_layer(0, 0, layer, objCircle);
} else {
	instance_create_layer(0, 0, layer, objX);
}

// One time call for next loop
//switch(global.loopCounter) {
//	// Left room
//	case 1:
//		objHideBlockLock.isLocked = true;
//	break;
	
//	// Bottom room
//	case 2:
//		objHideBlockLock.isLocked = true;
//	break;
	
//	case 3:
//	break;
	
//	default:
//	break;
//}