polymorphic-identifier
set: aUri item: anItem

	| hUri |
	hUri := URI fromString: aUri.
	(self handlers at: hUri scheme) set: aUri item: anItem inContext: thisContext sender.