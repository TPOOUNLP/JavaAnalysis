initialization
visitMethodDeclaration: aMethodDeclaration

(aMethodDeclaration body statements size > maxLines)
	ifTrue:[
		methodMaxLines add: aMethodDeclaration 
		].
	
	 