initialization
report
	
	|text|
	
	methodCount do: [ :class |
			text := WriteStream on: ''.
			text nextPutAll: class name value;
			nextPutAll: ' class has ';
			nextPutAll: (class declarations size) asString;
			nextPutAll: ' methods'.
		 ].
	^text
	