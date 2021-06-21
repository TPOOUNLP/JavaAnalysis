initialization
removeVariable: aVariable
	
	(variables includes: aVariable) ifTrue:[
		variables remove:aVariable
	]
	ifFalse:[
		(contextVars includes: aVariable) ifTrue: [ 
			contextVars remove:aVariable
		]
	]