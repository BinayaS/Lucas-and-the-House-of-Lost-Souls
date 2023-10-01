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

// Display content
if(displayContent != currentContent) {
	displayContent = string_copy(currentContent, 1, displayContentIndex);
	if(timer mod 2 == 0) {
		displayContentIndex += 1;
	}
	if(timer mod 4 == 0) {
		audio_play_sound(hitHurt, 0, false, 1, 0, random_range(0.8, 1));
	}
}

// Trigger next text
var _next = keyboard_check_pressed(ord("J")) || keyboard_check_pressed(ord("K"));
if(_next) {
	currentContentIndex += 1;
	displayContentIndex = 0;
	
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