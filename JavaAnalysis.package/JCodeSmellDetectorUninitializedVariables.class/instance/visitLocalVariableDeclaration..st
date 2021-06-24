generated
visitLocalVariableDeclaration: aLocalVariableDeclaration

	
	aLocalVariableDeclaration variableDeclarations do:[:var | 
		(var respondsTo:#equals) 
		ifTrue: [
			(self isVariable:var value)
			ifTrue: [ 
				self checkVariable:var value name value.
			].
			(var initializer respondsTo:#arguments)
			ifTrue:[
				var initializer expressions do:[:exp | self checkVariable: exp]
				].
			initialized add:var variable name value.
		].
		((variables includes:var variable name value) or: (initialized includes:var variable name value))
		ifFalse:[variables add:var variable name value.]
	]