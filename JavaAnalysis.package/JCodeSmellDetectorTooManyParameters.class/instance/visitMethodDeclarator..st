generated
visitMethodDeclarator:aMethodDeclarator


	(aMethodDeclarator parameters size > maxParameters )
	ifTrue:[
		methodsWithParameters add: aMethodDeclarator parent.
	]