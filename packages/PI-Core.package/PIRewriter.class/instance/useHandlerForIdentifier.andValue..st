semantic actions
useHandlerForIdentifier: aPolymorphicIdentifier andValue: aValue

	^ '(PolymorphicIdentifierHandler set:''',aPolymorphicIdentifier withBlanksTrimmed,''' item: (',aValue,'))'