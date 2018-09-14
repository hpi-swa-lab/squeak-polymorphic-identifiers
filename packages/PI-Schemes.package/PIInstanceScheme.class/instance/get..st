polymorphic-identifier
get: aUri

	| context uri |
	uri := URI fromString: aUri.
	context := (thisContext sender) sender.
	^ context receiver perform: (uri schemeSpecificPart asSymbol).