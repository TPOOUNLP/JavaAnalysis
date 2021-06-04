generated
visitMethodDeclaration: aMethodDeclaration
"Transcript show: 'nombre del metodo'.
Transcript show: aMethodDeclaration declarator name value.
"
	(aMethodDeclaration declarator name value size > maxLongName)
	ifTrue:[
		methodMaxLongName add: aMethodDeclaration 
	].

		"
		(aMethodDeclaration declarator name value size > maxLongName)
	ifTrue:[
		methodMaxLongName at: (aMethodDeclaration declarator name value) put: (aMethodDeclaration declarator name value size)]"