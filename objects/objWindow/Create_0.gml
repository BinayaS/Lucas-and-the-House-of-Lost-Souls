hasInteracted = false;
isBroken = false;

function Interact() {
	if(!isBroken) {
		if(!hasInteracted) {
			hasInteracted = true;
			room_goto(RoomWindowWithGhost);
		} else {
			room_goto(RoomWindowNormal);
		}		
	} else {
		room_goto(RoomWindowBroken);
	}
}