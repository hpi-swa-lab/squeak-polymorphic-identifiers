as yet unclassified
set: aUri item: anItem inReceiver: aReceiver

	| uri parts newReceiver newUri |
	uri := URI fromString: aUri.
	parts := uri schemeSpecificPart subStrings: '/'.
	(parts size > 1)
	ifFalse: [
		aReceiver perform: ((uri schemeSpecificPart , ':') asSymbol) with: anItem.
		]
	ifTrue: [
		newReceiver := aReceiver perform: ((parts at: 1) asSymbol).
		newUri := (uri scheme) , ':' , (uri schemeSpecificPart copyFrom: (uri schemeSpecificPart indexOf: $/) + 1 to: uri schemeSpecificPart size).
		self set: newUri item: anItem inReceiver: newReceiver.
		].