as yet unclassified
initialize

	super initialize.
	PolymorphicIdentifierHandler addHandler: PIJsonScheme new forCompositeScheme: 'json'.
	PolymorphicIdentifierHandler addHandler: (PIRelativeScheme withBase: 'json://localhost:3000') forCompositeScheme: 'myBlog'.