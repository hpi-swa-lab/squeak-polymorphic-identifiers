as yet unclassified
evaluate: textOrString 
	
	| newSource |
	newSource := self rewrite: textOrString.
	^ super evaluate: newSource