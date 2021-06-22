initialization
visitBlock: aBlock 

	contextVars addAll: variables.
	variables removeAll.
	self visitStatement: aBlock.
	unusedVars addAll: variables.
	variables removeAll.
	variables addAll: contextVars.
	contextVars removeAll.