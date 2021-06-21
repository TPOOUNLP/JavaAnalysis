initialization
visitBlock: aBlock 

	self visitStatement: aBlock.
	unusedVars addAll: variables.
	variables removeAll