adding
checkVariable: aLocalVariableDecaration
	
	(aLocalVariableDecaration initializesVariable) 
	ifTrue: [ 
		(aLocalVariableDecaration initializer isLiteral)
		ifTrue:[
			(variables includes: (aLocalVariableDecaration initializer name value))
			ifTrue:[
				self removeVariable:(aLocalVariableDecaration initializer name value)
				]
			]
		 ].
	variables add:aLocalVariableDecaration variable name value