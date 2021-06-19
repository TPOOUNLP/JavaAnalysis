generated
visitLocalVariableDeclaration: aLocalVariableDeclaration

	
	aLocalVariableDeclaration variableDeclarations do:[:var | self checkVariable:var ]