enumerating
detectCodeSmell: aJavaNode

	|reports|
	reports:= aJavaNode collect:[ :aNode | self detect: aNode].
	reports:= reports select: [ :report | report isNotNil ].
	^reports