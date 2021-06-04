enumerating
report
|text|
	text := WriteStream on: ''.
	
	methodMaxLongName do: [ :class |
			text nextPutAll: ' Method name:';
			nextPutAll: class declarator name value;
			nextPutAll: ' Length:';
			nextPutAll: (class declarator name value size) asString].
			
	^text
