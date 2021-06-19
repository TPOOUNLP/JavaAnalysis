initialization
visitMethodInvocation: aMethodInvocation

	|vars|

	vars:=aMethodInvocation expressions select: [ :each | each respondsTo: #name ].
	vars do:[:var | 
		self removeVariable:var
		].