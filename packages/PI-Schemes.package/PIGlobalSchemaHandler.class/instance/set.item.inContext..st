polymorphic-identifier
set: aUri item: anItem inContext: aContext

	| hUri |
	hUri := URI fromString: aUri.
	(self handlers at: hUri scheme) set: aUri item: anItem inContext: aContext.