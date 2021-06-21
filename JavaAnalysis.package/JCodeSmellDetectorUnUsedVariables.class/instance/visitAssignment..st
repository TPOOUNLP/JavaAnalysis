initialization
visitAssignment: anAssignment 

	(self isVariable: anAssignment value)
	ifTrue:[self removeVariable: anAssignment]
	