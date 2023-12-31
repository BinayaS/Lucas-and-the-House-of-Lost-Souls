randomize();
image_speed = 0;

hspd = 0;
vspd = 0;
horizontal = 0;
vertical = 0;
walkSpd = global.debug ? 5 : 1.5;
dir = 0;

isInteracting = false;
isInInventory = false;
isTalking = false;
isFinalScene = false;
isPaused = false;

camera = noone;

if(instance_exists(objCamera)) {
	camera = instance_find(objCamera, 0)
} else {
	camera = instance_create_layer(x, y, layer, objCamera);
}

inventory = noone;

if(instance_exists(objPlayerInventory)) {
	inventory = instance_find(objPlayerInventory, 0)
} else {
	inventory = instance_create_layer(x, y, layer, objPlayerInventory);
}

soundController = noone;

if(instance_exists(objSoundController)) {
	soundController = instance_find(objSoundController, 0)
} else {
	soundController = instance_create_layer(x, y, layer, objSoundController);	
}