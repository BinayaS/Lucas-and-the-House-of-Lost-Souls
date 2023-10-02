image_alpha = min(image_alpha+0.0005, 1);

if(image_alpha == 1) {
	room_goto(RoomEnd);
}