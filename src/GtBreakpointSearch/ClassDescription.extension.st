Extension { #name : #ClassDescription }

{ #category : #'*GtBreakpointSearch' }
ClassDescription >> breakpointsInClass [
	^ self gtMethodsInClass & AllBreakpoints haltReferencesWithoutTests
]
