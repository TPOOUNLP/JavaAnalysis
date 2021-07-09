generated
visitAssignment: anAssignment 

	((anAssignment value) isLiteral)
	ifFalse: [ self checkVariable: anAssignment value name value ].
	initialized add:(variables remove:(anAssignment variable name value))