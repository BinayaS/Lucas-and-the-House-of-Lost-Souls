if(isInInventory || isTalking) {
	return;
}

horizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vertical = keyboard_check(ord("S")) - keyboard_check(ord("W"));

hspd = walkSpd;
vspd = walkSpd;

//if(horizontal != 0 && vertical != 0) {
//	hspd = 0;
//}

if(horizontal != 0 || vertical != 0) {
	dir = point_direction(0, 0, horizontal*hspd, vertical*vspd);
}

// If we are walking in a diagonal then we need to normalize
if(horizontal != 0 && vertical != 0) {
	var _factor = normalize(walkSpd, walkSpd);
	hspd = _factor.x*walkSpd;
	vspd = _factor.y*walkSpd;
}

if(!isInteracting) {
	move_and_collide(horizontal*hspd, vertical*vspd, objSolid);
}

var _interact = keyboard_check_pressed(ord("J"));

if(_interact && !isInteracting) {
	isInteracting = true;
	if(!instance_exists(objPlayerInteractionBox)) {
		instance_create_layer(x + lengthdir_x(16, dir), y + lengthdir_y(16, dir), layer, objPlayerInteractionBox);
	}
}