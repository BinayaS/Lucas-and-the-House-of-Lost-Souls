if(isInInventory || isTalking || isFinalScene) {
	image_speed = 0;
	image_index = 0;
	
	if(isFinalScene) {
		image_xscale = max(image_xscale - 0.001, 0);
		image_yscale = max(image_yscale - 0.001, 0);
	}
	
	return;
}

horizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vertical = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if(horizontal > 0) {
	sprite_index = sprPlayerForward;
} else if(horizontal < 0) {
	sprite_index = sprPlayer;
}

hspd = walkSpd;
vspd = walkSpd;

if(horizontal != 0 || vertical != 0) {
	dir = point_direction(0, 0, horizontal*hspd, vertical*vspd);
	image_speed = 1;
} else {
	image_speed = 0;
	image_index = 0;
}

// If we are walking in a diagonal then we need to normalize
if(horizontal != 0 && vertical != 0) {
	var _factor = normalize(walkSpd, walkSpd);
	hspd = _factor.x*walkSpd;
	vspd = _factor.y*walkSpd;
}

if(!isInteracting) {
	var _solids = [];
	with(objSolid) {
		if(loopShow == -1 || global.loopCounter == loopShow) {
			array_push(_solids, id);
		}
	}
	move_and_collide(horizontal*hspd, vertical*vspd, _solids);
}

var _interact = keyboard_check_pressed(ord("J"));

if(_interact && !isInteracting) {
	isInteracting = true;
	if(!instance_exists(objPlayerInteractionBox)) {
		var _interactBox = instance_create_layer(x, y, layer, objPlayerInteractionBox);
		_interactBox.image_angle = dir;
		//instance_create_layer(x + lengthdir_x(16, dir), y + lengthdir_y(16, dir), layer, objPlayerInteractionBox);
	}
}