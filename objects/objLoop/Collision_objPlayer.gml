other.y = 1736;
other.x = other.x - (480*3);

global.loopCounter += 1;
audio_play_sound(Door_close, 0, 0, 1, 0, random_range(0.8, 1));

// Did we progress the loop?
if(global.loopCounter != internalLoopCounter) {
	internalLoopCounter = global.loopCounter;
	instance_create_layer(0, 0, layer, objCircle);
} else {
	instance_create_layer(0, 0, layer, objX);
}

