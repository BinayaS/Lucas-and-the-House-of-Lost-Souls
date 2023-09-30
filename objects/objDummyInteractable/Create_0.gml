function Interact() {
	if(!instance_exists(objTextbox)) {
		CreateTextbox(
			new TextboxPayload(
				["Bob", "Bob", "Casey"], 
				["WTF is wrong with you", "Why can't you just be normal?", "AAAAAAAAAAAAAAAHHH"]
			)
		);
	}
}

angle = 0;