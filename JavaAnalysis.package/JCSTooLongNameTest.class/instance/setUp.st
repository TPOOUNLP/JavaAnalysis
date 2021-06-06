running
setUp 
	
	super setUp.
	detector:=JCodeSmellDetectorTooLongName new.
	javaProject := parser parseJavaProject: './javaTestFiles'.
	parser addDetector: detector.
	

	