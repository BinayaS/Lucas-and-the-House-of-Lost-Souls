function Interact() {
	CreateTextboxChoice(
		new TextboxChoicePayload(
			[
				"Look through the hole?", 
				"Walk away",
				"",
				"",
			],
			[
				function() {
					// Go to hole room
					room_goto(RoomHoleInWall);
				}, 
				function() {
					// Do nothing
				}
			]
		)
	);
}