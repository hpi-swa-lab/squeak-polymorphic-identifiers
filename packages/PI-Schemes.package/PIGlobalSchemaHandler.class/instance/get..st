as yet unclassified
get: aUri

	| hUri |
	hUri := URI fromString: aUri.
	^ (self handlers at: (hUri scheme)) get: aUri inContext: thisContext sender.