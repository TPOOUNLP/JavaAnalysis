*JavaAnalysis
statementsSize 

	^ statements inject: 0 into: [ :statSize :statement | statSize + (statement statementsSize) ]