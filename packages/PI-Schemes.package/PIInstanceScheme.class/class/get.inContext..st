as yet unclassified
get: aUri inContext: aContext

	| uri parts newReceiver newUri |
	uri := URI fromString: aUri.
	parts := uri schemeSpecificPart subStrings: '/'.
	(parts size > 1)
	ifFalse: [
		^ aContext receiver perform: (uri schemeSpecificPart asSymbol).
		]
	ifTrue: [
		newReceiver := aContext receiver perform: (uri schemeSpecificPart asSymbol).
		newUri := (uri scheme) , ':' , (uri schemeSpecificPart copyFrom: (uri schemeSpecificPart indexOf: $/) + 1 to: uri schemeSpecificPart size).
		^ self get: newUri inReceiver: newReceiver.
		].