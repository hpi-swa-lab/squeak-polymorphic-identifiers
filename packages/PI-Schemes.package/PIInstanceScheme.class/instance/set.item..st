polymorphic-identifier
set: aUri item: anItem

	| context uri |
	uri := URI fromString: aUri.
	context := (thisContext sender) sender.
	context receiver perform: ((uri schemeSpecificPart , ':') asSymbol) with: anItem.