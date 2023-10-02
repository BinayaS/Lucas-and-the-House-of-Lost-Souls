function Interact() {
	if(withGhost) {
		room_goto(RoomWindowWithGhost);
	} else {
		room_goto(RoomWindowNormal);
	}
	
}