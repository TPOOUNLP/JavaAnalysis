initialization
visitMethodDeclaration: aMethodDeclaration
(aMethodDeclaration body statements size > maxLines)
	ifTrue:[
		methodMaxLines at: (aMethodDeclaration declarator name) put: (aMethodDeclaration body statements size)]
	