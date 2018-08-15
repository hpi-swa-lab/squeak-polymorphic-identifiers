as yet unclassified
set: aUri item: anItem inContext: aContext

	| args newUri preparedArg |
	newUri := (self scheme), ':', (aUri copyFrom: (aUri indexOf: $:) + 1 to: aUri size).
	args := anItem collect: [ :arg | 
		preparedArg := Array new: 1.
		preparedArg at: 1 put: arg asString.
		preparedArg. ].
	PolymorphicIdentifierHandler set: newUri item: args inContext: aContext.