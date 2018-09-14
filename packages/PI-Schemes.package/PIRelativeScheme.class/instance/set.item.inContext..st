polymorphic-identifier
set: aRelativeUri item: anItem inContext: aContext
	"comment stating purpose of message"

	| uri |
	uri := self absoluteUriFromRelativeUri: aRelativeUri.
	PolymorphicIdentifierHandler set: uri item: anItem inContext: aContext.