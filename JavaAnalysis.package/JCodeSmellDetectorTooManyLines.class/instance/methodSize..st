as yet unclassified
methodSize:aMethodDeclaration

	^(aMethodDeclaration body statements) inject:0 into:[:methLine :stat | methLine + stat statementsSize]