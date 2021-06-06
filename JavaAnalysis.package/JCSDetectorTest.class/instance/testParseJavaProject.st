running
testParseJavaProject

	self should: [ parser parseJavaProject: './NonExistantJavaProject' ] raise: Error.
	self shouldnt: [ parser parseJavaProject: './JavaProjectTest' ] raise: Error.