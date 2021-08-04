running
testDetect

	|detections|
	
	detections:=parser detectCodeSmells.
	self assert:[detections isNotEmpty].
	parser parseJavaProject: './JavaTestFiles/JavaTestFilesNoSmells'.
	detections:=parser detectCodeSmells.
	self assert:[detections isEmpty].