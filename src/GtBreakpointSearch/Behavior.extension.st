Extension { #name : #Behavior }

{ #category : #'*GtBreakpointSearch' }
Behavior >> gtBreakpointsFor: aView [
	"<gtClassView>
	<gtView>"
	| breakpoints |
	self flag: #TODO. "Think this is redundant with defining it on `Object`. Can't get the view to show on a Trait though"
	breakpoints := self name gtReferences
			& AllBreakpoints haltReferencesWithoutTests.
	breakpoints size = 0 ifTrue: [ ^ aView empty ].
	^ aView explicit
		title: 'Breakpoints';
		priority: -2;
		stencil: [ breakpoints ]
]
