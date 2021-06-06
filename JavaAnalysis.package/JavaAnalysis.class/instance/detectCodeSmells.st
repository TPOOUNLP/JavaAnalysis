detection
detectCodeSmells

	|reports|

	reports := detectors collect:[:detector |
		detector detectCodeSmellFromCollection: javaAstCollection
		].
	reports:= reports select:[:rep | rep isNotNil]