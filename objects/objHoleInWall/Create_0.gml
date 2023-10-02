loopShow = 1;

function Interact() {
	if(global.loopCounter != loopShow) {
		return;
	}
	
	room_goto(RoomHoleInWall);
}