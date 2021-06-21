adding
checkVariable: aLocalVariableDecaration
	
	(aLocalVariableDecaration respondsTo: #equals) 
	ifTrue: [ 
		(aLocalVariableDecaration initializer respondsTo:#name)
		ifTrue:[
			(variables includes: (aLocalVariableDecaration initializer name value))
			ifTrue:[
				self removeVariable:(aLocalVariableDecaration initializer name value)
				]
			]
		 ].
	variables add:aLocalVariableDecaration variable name value