adding
checkVariableDeclaration: aVariableDeclaration
	
	(aVariableDeclaration initializesVariable) 
	ifTrue: [ 
		(aVariableDeclaration initializer isLiteral)
		ifTrue:[
			self checkVariable: aVariableDeclaration initializer name value.
			]
		 ].
	self checkVariable:aVariableDeclaration variable name value
	