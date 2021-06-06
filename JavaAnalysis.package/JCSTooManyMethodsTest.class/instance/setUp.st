running
setUp 
	
	super setUp.
	detector:=JCodeSmellDetectorTooManyMethods new.
	javaProject := parser parseJavaProject: './javaTestFiles'.
	parser addDetector: detector.
	
	