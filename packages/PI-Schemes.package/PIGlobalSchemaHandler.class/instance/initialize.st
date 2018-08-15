as yet unclassified
initialize

	super initialize.
	self handlers: Dictionary new.
	(self handlers)
		at: 'http' put: PIHttpScheme;
		at: 'local' put: PILocalScheme;
		at: 'instance' put: PIInstanceScheme.