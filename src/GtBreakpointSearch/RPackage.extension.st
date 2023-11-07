Extension { #name : #RPackage }

{ #category : #'*GtBreakpointSearch' }
RPackage >> gtBreakpointsFor: aView [
	<gtPackageView>
	<gtView>
	| breakpoints |
	breakpoints := self name gtPackageMatches
			& AllBreakpoints haltReferencesWithoutTests.
	breakpoints size = 0 ifTrue: [ ^ aView empty ].
	^ aView forward
		title: 'Breakpoints';
		priority: -2;
		object: [ breakpoints ];
		view: #gtItemsFor:
]
