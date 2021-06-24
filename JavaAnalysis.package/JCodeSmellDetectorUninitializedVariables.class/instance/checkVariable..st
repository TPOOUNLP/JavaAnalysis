adding
checkVariable: aVariable

	(initialized includes: aVariable)
	ifFalse:[
		(variables includes:aVariable)
		ifTrue:[uninitialized add:(variables remove:aVariable)]
	]
	