as yet unclassified
useHandlerForIdentifier: aPolymorphicIdentifier andValue: aValue

	^ '(PolymorphicIdentifierHandler set:''',aPolymorphicIdentifier withBlanksTrimmed,''' item: (',aValue,'))'