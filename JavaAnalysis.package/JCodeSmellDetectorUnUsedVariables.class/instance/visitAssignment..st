initialization
visitAssignment: anAssignment 

	((anAssignment value) isLiteral)
	ifTrue:[self removeVariable: anAssignment]
	