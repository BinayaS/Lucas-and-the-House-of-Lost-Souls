isBroken = false;

function Interact() {
	if(!isBroken) {
		room_goto(RoomWindowWithGhost);
	} else {
		room_goto(RoomWindowBroken);
	}
}