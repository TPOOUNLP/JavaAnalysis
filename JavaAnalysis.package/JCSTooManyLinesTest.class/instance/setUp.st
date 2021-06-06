running
setUp 
	
	super setUp.
	detector:=JCodeSmellDetectorTooManyLines new.
	javaProject := parser parseJavaProject: './javaTestFiles'.
	parser addDetector: detector.