initialization
visitMethodInvocation: aMethodInvocation

	|vars|

	vars:=aMethodInvocation expressions select: [ :each | self isVariable:each ].
	vars do:[:var | 
		self removeVariable:var name value.
		].