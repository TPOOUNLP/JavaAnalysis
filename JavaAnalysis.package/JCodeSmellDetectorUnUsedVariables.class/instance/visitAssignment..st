initialization
visitAssignment: anAssignment 

	variables remove:(anAssignment variable name value)