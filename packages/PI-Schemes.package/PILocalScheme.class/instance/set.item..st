polymorphic-identifier
set: aUri item: anItem

	| context uri tempIndex |
	uri := URI fromString: aUri.
	context := (thisContext sender) sender.
	tempIndex := (context methodNode temporaries detect: [ :var | var key = uri schemeSpecificPart ]) index + 1.
	context tempAt: tempIndex put: anItem