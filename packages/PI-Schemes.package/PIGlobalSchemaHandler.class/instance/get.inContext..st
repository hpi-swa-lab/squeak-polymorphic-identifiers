polymorphic-identifier
get: aUri inContext: aContext

	| hUri |
	hUri := URI fromString: aUri.
	^ (self handlers at: (hUri scheme)) get: aUri inContext: aContext.