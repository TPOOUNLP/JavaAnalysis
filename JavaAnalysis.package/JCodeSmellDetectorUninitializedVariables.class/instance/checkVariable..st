adding
checkVariable: aLocalVariableDecaration
	
	(aLocalVariableDecaration respondsTo: #equals) 
	ifTrue: [ 
		(aLocalVariableDecaration initializer respondsTo:#name)
		ifTrue:[
			(variables includes: (aLocalVariableDecaration initializer name value))
			ifTrue:[
				variables remove:(aLocalVariableDecaration initializer name value)
				]
			]
		 ]
	ifFalse:[
		variables add:aLocalVariableDecaration variable name value
	]