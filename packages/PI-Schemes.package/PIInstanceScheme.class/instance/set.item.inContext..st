polymorphic-identifier
set: aUri item: anItem inContext: aContext

	| uri parts newReceiver newUri |
	uri := URI fromString: aUri.
	parts := uri schemeSpecificPart subStrings: '/'.
	(parts size > 1)
	ifFalse: [
		aContext receiver perform: ((uri schemeSpecificPart , ':') asSymbol) with: anItem.
		]
	ifTrue: [
		newReceiver := aContext receiver perform: ((parts at: 1) asSymbol).
		newUri := (uri scheme), ':' , (uri schemeSpecificPart copyFrom: (uri schemeSpecificPart indexOf: $/) + 1 to: uri schemeSpecificPart size).
		self set: newUri item: anItem inReceiver: newReceiver.
		].