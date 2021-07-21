enumerating
report
	|text|
	text := WriteStream on: ''.

	
	methodMaxLines do: [ :class |
			text nextPutAll: ' Method name:';
			nextPutAll: class declarator name value;
			nextPutAll: ' number of lines';
			nextPutAll: (self methodSize: class) asString].
			
	^text