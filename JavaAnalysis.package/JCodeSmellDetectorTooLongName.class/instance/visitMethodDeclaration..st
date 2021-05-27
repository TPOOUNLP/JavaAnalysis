generated
visitMethodDeclaration: aMethodDeclaration


	(aMethodDeclaration declarator name value size > maxLongName)
	ifTrue:[
		methodMaxLongName at: (aMethodDeclaration declarator name value) put: (aMethodDeclaration declarator name value size)]
	