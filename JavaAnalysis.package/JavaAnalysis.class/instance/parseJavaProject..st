parsing
parseJavaProject: aProject

	|jFolder jFiles failed jAst|
	
	jAst:= Set new.
	failed:= Set new. 
	jFolder:= aProject asFileReference.
	jFolder exists ifFalse: [ self error: 'The directory does not exist' ].
	jFiles:= jFolder allChildrenMatching: '*.java'.
	jFiles isEmpty ifTrue: [ self error: 'The directory does not have Java files to parse.' ].
	self javaAstCollection: (jFiles collect: [ :file |
		|parsed|
		parsed:= JavaParser parse: (file contents) onError: [ :desc :tag |
			|text|
			text := WriteStream with: 'Error parsing '.
			text nextPutAll: file fullName.
			JavaProgramNode new.
			failed add: text.
			].
		jAst add: parsed
		]).
	
	^ jAst