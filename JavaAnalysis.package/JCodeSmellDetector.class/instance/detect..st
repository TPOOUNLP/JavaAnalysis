enumerating
detect: aJavaNode

	|report|
	aJavaNode acceptVisitor: self.
	report:= self report.
	self reset.
	^report