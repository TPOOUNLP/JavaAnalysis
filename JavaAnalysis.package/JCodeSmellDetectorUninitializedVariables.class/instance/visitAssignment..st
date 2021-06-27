generated
visitAssignment: anAssignment 

	((anAssignment value) isLiteral)
	ifTrue: [ self checkVariable: anAssignment value name value ].
	initialized add:(variables remove:(anAssignment variable name value))