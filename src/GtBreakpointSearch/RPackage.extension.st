Extension { #name : #RPackage }

{ #category : #'*GtBreakpointSearch' }
RPackage >> gtBreakpointsFor: aView [
	<gtPackageView>
	<gtView>
	| breakpoints |
	breakpoints := self name gtPackageMatches
		&
			(#Halt gtReferences | #halt gtReferences | #halt: gtReferences
				| #haltIfNil gtReferences | #haltOnCount: gtReferences
				| #haltOnce gtReferences).
	breakpoints size = 0
		ifTrue: [ ^ aView empty ].
	^ aView explicit
		title: 'Breakpoints';
		priority: -2;
		stencil: [ breakpoints ]
]
