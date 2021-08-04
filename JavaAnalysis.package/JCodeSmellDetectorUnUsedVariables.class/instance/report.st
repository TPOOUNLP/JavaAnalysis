initialization
report
|text|
	text := WriteStream on: ''.
	methods  associationsDo: [ :pos |
			text nextPutAll: ' Method name:';
			nextPutAll: pos key;
			nextPutAll: ' '; cr;
			nextPutAll: 'unused variables: '.
		   pos value do:[:e2| text nextPutAll:e2]
		].
	
			
	^text
