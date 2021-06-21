initialization
visitIfStatement: anIfStatement 

	contextVars addAll: variables.
	variables removeAll.
	self visitStatement: anIfStatement.
	variables addAll: contextVars.
	contextVars removeAll.