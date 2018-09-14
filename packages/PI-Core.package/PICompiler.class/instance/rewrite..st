private
rewrite: aCue

	| cst |
	cst := PIOhmPolymorphicIdentifier match: aCue startingFrom: #MethodDeclaration.
	^ (PIOhmPolymorphicIdentifier synthesizedAttribute: PIRewriter new) value: cst