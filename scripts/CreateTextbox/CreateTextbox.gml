// Textbox
function TextboxPayload(_nameList, _contentList) constructor {
	nameList = _nameList ?? [];
	contentList = _contentList ?? [];
}

function CreateTextbox(_textboxPayload) {
	var _t = instance_create_layer(0, 0, objPlayer.layer, objTextbox);
	_t.nameList = _textboxPayload.nameList;
	_t.contentList = _textboxPayload.contentList;
	_t.updateText();
}

function CreateTextboxSimple(_textList) {
	CreateTextbox(
	new TextboxPayload(
		[""],
		_textList)
	);
}

// Textbox Choice
function TextboxChoicePayload(_contentList, _functionsList) constructor {
	contentList = _contentList;
	functionList = _functionsList;
}

function CreateTextboxChoice(_textboxChoicePayload) {
	var _tc = instance_create_layer(0, 0, objPlayer.layer, objTextboxChoice);
	_tc.displayContentList = _textboxChoicePayload.contentList;
	_tc.functionsList = _textboxChoicePayload.functionList;
}