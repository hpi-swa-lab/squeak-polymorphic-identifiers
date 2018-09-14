polymorphic-identifier
get: aUri inContext: aContext

	| document |
	document := HTTPClient httpGetDocument: aUri.
	^ document content