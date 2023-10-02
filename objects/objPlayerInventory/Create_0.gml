stuffList = ds_list_create();
isHidden = true;
index = 0;
timer = 0;
timerMax = 6;
vertical = 0;
lastVertical = 0;

// Flags
flagHouseKey = false;
flagLookedThroughHole = false;
flagRedOrb = false;

function _interactDefault() {
	show_message("ERROR: no inventory object interaction set")
}

function item(_name, _obj = objEmpty, _interact = _interactDefault) constructor {
	name = _name;
	obj = _obj;
	interact = _interact;
}

function addItem(_name, _obj, _interaction) {
	ds_list_add(stuffList, new item(_name, _obj, _interaction));
}

// test inventory
{
	/*
	// Dummy list
	function _itemasdf() {
		// Toggle inventory
		objPlayer.isInInventory = !objPlayer.isInInventory;
		objPlayerInventory.isHidden = !objPlayerInventory.isHidden;
	
		// Create textbox
		CreateTextboxSimple(["Some type of item. I don't know what this is tho."]);
	}

	function _itemasdf0() {
		// Toggle inventory
		objPlayer.isInInventory = !objPlayer.isInInventory;
		objPlayerInventory.isHidden = !objPlayerInventory.isHidden;
	
		// Create textboxChoice
		CreateTextboxChoice(
			new TextboxChoicePayload(
			["A", "B", "C", "D"],
			[
				function(){
					CreateTextboxSimple(["A was choosen"]);
				},
				function(){
					CreateTextboxSimple(["B was choosen"]);
				},
				function(){
					CreateTextboxSimple(["C was choosen"]);
				},
				function(){
					CreateTextboxSimple(["D was choosen"]);
				},
			])
		);
	}

	ds_list_add(stuffList, new item("Test Textbox", objEmpty, _itemasdf));
	ds_list_add(stuffList, new item("Text Textbox Choice", objEmpty, _itemasdf0));
	ds_list_add(stuffList, new item("asdf1"));
	ds_list_add(stuffList, new item("asdf2"));
	ds_list_add(stuffList, new item("asdf3"));
	ds_list_add(stuffList, new item("asdf4"));
	ds_list_add(stuffList, new item("asdf5"));
	ds_list_add(stuffList, new item("asdf6"));
	ds_list_add(stuffList, new item("asdf7"));
	ds_list_add(stuffList, new item("asdf8"));
	ds_list_add(stuffList, new item("asdf9"));
	ds_list_add(stuffList, new item("asdf10"));
	ds_list_add(stuffList, new item("asdf11"));
	ds_list_add(stuffList, new item("asdf12"));
	ds_list_add(stuffList, new item("asdf13"));
	ds_list_add(stuffList, new item("asdf14"));
	ds_list_add(stuffList, new item("asdf"));
	ds_list_add(stuffList, new item("asdf0"));
	ds_list_add(stuffList, new item("asdf1"));
	ds_list_add(stuffList, new item("asdf2"));
	ds_list_add(stuffList, new item("asdf3"));
	ds_list_add(stuffList, new item("asdf4"));
	ds_list_add(stuffList, new item("asdf5"));
	ds_list_add(stuffList, new item("asdf6"));
	ds_list_add(stuffList, new item("asdf7"));
	ds_list_add(stuffList, new item("asdf8"));
	ds_list_add(stuffList, new item("asdf9"));
	ds_list_add(stuffList, new item("asdf10"));
	ds_list_add(stuffList, new item("asdf11"));
	ds_list_add(stuffList, new item("asdf12"));
	ds_list_add(stuffList, new item("asdf13"));
	ds_list_add(stuffList, new item("asdf14"));
	*/
}

