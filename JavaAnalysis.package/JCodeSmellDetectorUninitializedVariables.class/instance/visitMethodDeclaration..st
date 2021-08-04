generated
visitMethodDeclaration: aMethodDeclaration

	self visitDeclaration: aMethodDeclaration.
	(variables isNotEmpty)
	ifTrue:[
		uninitialized addAll:variables.
		methods at:(aMethodDeclaration declarator name value) put:(Set withAll:uninitialized).
		uninitialized removeAll.
		initialized removeAll.
		variables removeAll.
	].
	
	