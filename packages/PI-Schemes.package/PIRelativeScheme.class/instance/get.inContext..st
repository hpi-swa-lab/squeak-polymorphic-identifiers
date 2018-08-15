as yet unclassified
get: aRelativeUri inContext: aContext
	"comment stating purpose of message"

	| uri |
	uri := self absoluteUriFromRelativeUri: aRelativeUri.
	^ PolymorphicIdentifierHandler get: uri inContext: aContext.