detection
detectCodeSmells

	|reports|
	
	reports:= Set new.
	detectors do:[:detector |
		reports addAll:(detector detectCodeSmellFromCollection: javaAstCollection)
		].
	reports:= reports select:[:rep | (rep contents) isNotEmpty].
	self saveReports: reports.
	^reports