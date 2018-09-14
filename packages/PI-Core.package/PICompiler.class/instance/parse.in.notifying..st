public access
parse: textOrStream in: aClass notifying: req

	| newSource |
	newSource := self rewrite: textOrStream.
	self from: newSource class: aClass notifying: req.
	^self parser
		parseCue: cue
		noPattern: false
		ifFail: []