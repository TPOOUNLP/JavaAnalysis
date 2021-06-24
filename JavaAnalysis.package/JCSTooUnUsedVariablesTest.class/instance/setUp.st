running
setUp

	super setUp.
	detector:=JCodeSmellDetectorTooManyParameters new.
	parser addDetector: detector.
	javaProject := parser parseJavaProject: './javaTestFiles'.