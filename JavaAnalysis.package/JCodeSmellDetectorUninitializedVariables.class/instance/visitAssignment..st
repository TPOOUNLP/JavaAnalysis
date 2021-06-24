generated
visitAssignment: anAssignment 

	(self isVariable:anAssignment value)
	ifTrue: [ self checkVariable: anAssignment value name value ].
	initialized add:(variables remove:(anAssignment variable name value))