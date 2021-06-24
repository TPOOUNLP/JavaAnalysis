running
setUp 

	super setUp.
	detector:=JCodeSmellDetectorUninitializedVariables new.
	parser addDetector: detector.
	javaProject := parser parseJavaProject: './javaTestFiles'.