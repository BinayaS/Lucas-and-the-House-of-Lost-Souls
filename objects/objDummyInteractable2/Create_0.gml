function Interact() {
	if(!instance_exists(objTextbox)) {	
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
}

angle = 0;