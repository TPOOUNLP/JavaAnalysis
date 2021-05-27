enumerating
detectCodeSmellFromCollection: aJavaNodeCollection

	|reports|
	reports:= aJavaNodeCollection collect:[ :aNode | self detect: aNode].
	reports:= reports select: [ :report | report isNotNil ].
	^reports