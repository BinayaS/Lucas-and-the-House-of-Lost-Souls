objPlayer.isTalking = true;

var vertical = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));

if(vertical < 0) {
	index = max(index-1, 0);
} else if (vertical > 0) {
	index = min(index+1, 3);
}

var interact = keyboard_check_pressed(ord("J"));
if(interact) {
	functionsList[index]();
	destroySelf = true;
}

if(destroySelf) {
	destroySelf = false;
	alarm[0] = 1;
}