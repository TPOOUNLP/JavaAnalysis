generated
visitLocalVariableDeclaration: aLocalVariableDeclaration

	aLocalVariableDeclaration variableDeclarations do:[:var | 
		(var initializesVariable)
		ifTrue: [
			(var initializer isLiteral)
			ifTrue: [
				(var initializer invokes)
				ifTrue:[
					var initializer expressions do:[:exp | self checkVariable: exp name value]
				]
				ifFalse:[		
					self checkVariable:var initializer name value.
				].
			].
			initialized add:var variable name value.
		].
		((variables includes:var variable name value) or: (initialized includes:var variable name value))
		ifFalse:[variables add:var variable name value.]
	]