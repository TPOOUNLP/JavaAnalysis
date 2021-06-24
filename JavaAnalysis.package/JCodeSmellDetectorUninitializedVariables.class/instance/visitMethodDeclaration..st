generated
visitMethodDeclaration: aMethodDeclaration

	self visitDeclaration: aMethodDeclaration.
	uninitialized addAll:variables.
	methods at:(aMethodDeclaration declarator name value) put:(Set withAll:uninitialized).
	variables removeAll.
	initialized removeAll.
	uninitialized removeAll.
	
	