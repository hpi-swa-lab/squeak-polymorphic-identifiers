public access
compile: textOrStream in: aClass notifying: aRequestor ifFail: failBlock 
	"Overwrites default compile method to rewrite sourceString"
	
	| newSource |
	newSource := self rewrite: textOrStream.
	^ super compile: newSource in: aClass notifying: aRequestor ifFail: failBlock 