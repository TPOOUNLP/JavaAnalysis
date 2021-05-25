initialization
visitClassDeclaration: aClassDeclaration


	(aClassDeclaration declarations size > maxMethods )
	ifTrue:[
		methodCount add: aClassDeclaration.
	]	

	
	