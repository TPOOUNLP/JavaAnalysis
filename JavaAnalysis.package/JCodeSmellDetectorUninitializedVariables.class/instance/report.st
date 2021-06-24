enumerating
report 

	|text|
	
	text:=WriteStream with:''.
	methods associationsDo:[:assoc | 
		text nextPutAll:'El metodo ';
		nextPutAll:assoc key value;
		nextPutAll:' tiene las variables sin inicializar: '.
		assoc value do:[:each| text nextPutAll:each; nextPutAll:' - '.].
		].
	^text