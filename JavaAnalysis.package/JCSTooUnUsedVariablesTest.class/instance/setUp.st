running
setUp

	super setUp.
	detector:=JCodeSmellDetectorUnUsedVariables new.
	parser addDetector: detector.
	javaProject := parser parseJavaProject: './javaTestFiles'.