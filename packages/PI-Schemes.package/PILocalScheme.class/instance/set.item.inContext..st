polymorphic-identifier
set: aUri item: anItem inContext: aContext

	| uri tempIndex |
	uri := URI fromString: aUri.
	tempIndex := (aContext methodNode temporaries detect: [ :var | var key = uri schemeSpecificPart ]) index + 1.
	aContext tempAt: tempIndex put: anItem