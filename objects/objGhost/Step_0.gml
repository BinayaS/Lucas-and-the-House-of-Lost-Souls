mp_linear_step(objPlayer.x, objPlayer.y, 0.25, false);

if(distance_to_object(objPlayer) <= 64) {
	instance_destroy(self);
}