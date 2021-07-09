generated
visitMethodDeclaration: aMethodDeclaration

	(aMethodDeclaration declarator name value size > maxLongName)
	ifTrue:[
		methodMaxLongName add: aMethodDeclaration 
	].
