as yet unclassified
absoluteUriFromRelativeUri: aRelativeUri

	^ self base, '/', (URI fromString: aRelativeUri) schemeSpecificPart.