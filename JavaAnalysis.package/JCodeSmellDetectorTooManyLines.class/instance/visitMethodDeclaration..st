initialization
visitMethodDeclaration: aMethodDeclaration

((self methodSize: aMethodDeclaration) > maxLines)
	ifTrue:[
		methodMaxLines add: aMethodDeclaration 
		].
	
	 