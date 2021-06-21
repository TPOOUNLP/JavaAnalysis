initialization
visitAssignment: anAssignment 

	self removeVariable:(anAssignment variable name value)