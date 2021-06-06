enumerating
report 

	|text|
	
	text:= WriteStream with:''.
	methodsWithParameters do: [ :method |
		text nextPutAll: 'The method ';
		nextPutAll: method name value;
		nextPutAll: ' of the class ';
		nextPutAll: method parent parent name value;
		nextPutAll: ' has ';
		nextPutAll: (method parameters size) asString;
		nextPutAll: ' parameters.'.
	].
	^text