initialization
visitMethodDeclaration: aMethodDeclaration

	|unVar|
	
	unVar :=Set new.
	self visitDeclaration: aMethodDeclaration.
	unVar addAll:unusedVars.
	methods at:(aMethodDeclaration declarator name value) put:unVar.
	unusedVars removeAll.
	variables removeAll.
	