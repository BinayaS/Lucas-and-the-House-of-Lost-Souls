objPlayer.isTalking = true;

arrowImageIndex = 0;
timer = 0;
destroySelf = false;
finishedTyping = false;

currentName = "";
currentContent = "";
currentContentIndex = 0;
displayContent = "";
displayContentIndex = 0;

function updateText() {
	currentName = nameList[currentContentIndex];
	currentContent = contentList[currentContentIndex];
}

// Dummy Text
nameList = [
	"BS",
	"Gary",
	"BS",
];
contentList = [
	"Who goes there",
	"It's me, a Mario",
	"Oh, it's just you",
];

updateText();