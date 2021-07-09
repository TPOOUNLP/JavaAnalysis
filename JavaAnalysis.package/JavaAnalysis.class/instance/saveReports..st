as yet unclassified
saveReports:aReportCollection

	|file|
	
	file:=(((Date today) asString),'.txt') asFileReference writeStream.
	(aReportCollection isEmpty)
	ifTrue:[
		file nextPutAll:'No code smells detected. Good job!'
		]
	ifFalse:[
		aReportCollection do:[:rep |
			file nextPutAll: rep contents.
			file cr.
			]
		].
	file close. 