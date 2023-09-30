objPlayer.isTalking = true;

// Corner Arrow
timer = min(timer+1, 60);

if(timer mod 6 == 0) {	
	arrowImageIndex = min(arrowImageIndex+1, 3);
	if(arrowImageIndex = 3) {
		arrowImageIndex = 0;
	}
}

if(timer == 60) {
	timer = 0;
}

// Trigger next text
var _next = keyboard_check_pressed(ord("J")) || keyboard_check_pressed(ord("K"));
if(_next) {
	currentContentIndex += 1;
	
	if(currentContentIndex >= array_length(nameList)) {
		destroySelf = true;
		return;
	}
	
	currentName = nameList[currentContentIndex];
	currentContent = contentList[currentContentIndex];
}

if(destroySelf) {
	destroySelf = false;
	alarm[0] = 1;
}