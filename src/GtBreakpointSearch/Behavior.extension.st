Extension { #name : #Behavior }

{ #category : #'*GtBreakpointSearch' }
Behavior >> gtBreakpointsFor: aView [
	<gtClassView>
	| breakpoints |
	breakpoints := self name gtClassMatches
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
