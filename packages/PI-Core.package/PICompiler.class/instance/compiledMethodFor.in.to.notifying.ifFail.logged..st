public access logging
compiledMethodFor: textOrStream in: aContext to: receiver notifying: aRequestor ifFail: failBlock logged: logFlag

	| newSource |
	newSource := self rewrite: textOrStream.
	^ super compiledMethodFor: newSource in: aContext to: receiver notifying: aRequestor ifFail: failBlock logged: logFlag