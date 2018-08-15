as yet unclassified
get: aUri inReceiver: aReceiver

	| uri parts newReceiver newUri |
	uri := URI fromString: aUri.
	parts := uri schemeSpecificPart subStrings: '/'.
	(parts size > 1)
	ifFalse: [
		^ aReceiver perform: (uri schemeSpecificPart asSymbol).
		]
	ifTrue: [
		newReceiver := aReceiver perform: (uri schemeSpecificPart asSymbol).
		newUri := (uri scheme) , ':' , (uri schemeSpecificPart copyFrom: (uri schemeSpecificPart indexOf: $/) + 1 to: uri schemeSpecificPart size).
		^ self get: newUri inReceiver: newReceiver.
		].