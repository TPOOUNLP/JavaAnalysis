running
detectTest

	|detections|
	
	detections:=parser detectCodeSmells.
	self assert:[detections isNotEmpty]