initialization
visitIfElseStatement: anIfElseStatement 

	self visitIfStatement: anIfElseStatement.
	self visitStatement: anIfElseStatement.