initialization
visitMethodInvocation: aMethodInvocation

	|vars|

	vars:=aMethodInvocation expressions reject: [ :each | each isLiteral ].
	vars do:[:var | 
		self removeVariable:var name value.
		].