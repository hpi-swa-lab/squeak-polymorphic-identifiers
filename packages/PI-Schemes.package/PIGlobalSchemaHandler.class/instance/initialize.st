initialize-release
initialize

	super initialize.
	self handlers: Dictionary new.
	self handlers
		at: 'http' put: PIHttpScheme new;
		at: 'local' put: PILocalScheme new;
		at: 'instance' put: PIInstanceScheme new.