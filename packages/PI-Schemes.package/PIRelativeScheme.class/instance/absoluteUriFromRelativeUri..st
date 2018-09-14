convenience
absoluteUriFromRelativeUri: aRelativeUri

	^ self base, '/', (URI fromString: aRelativeUri) schemeSpecificPart.