adding
checkVariableDeclaration: aVariableDeclaration
	
	(aVariableDeclaration respondsTo: #equals) 
	ifTrue: [ 
		(aVariableDeclaration initializer respondsTo:#name)
		ifTrue:[
			self checkVariable: aVariableDeclaration initializer name value.
			]
		 ].
	self checkVariable:aVariableDeclaration variable name value
	