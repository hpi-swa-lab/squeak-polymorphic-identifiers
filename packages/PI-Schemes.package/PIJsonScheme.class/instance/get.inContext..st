polymorphic-identifier
get: aUri inContext: aContext

	| content newUri |
	newUri := self scheme, ':', (aUri copyFrom: (aUri indexOf: $:) + 1 to: aUri size).
	content := PolymorphicIdentifierHandler get: newUri inContext: aContext.
	^ Json readFrom: content readStream