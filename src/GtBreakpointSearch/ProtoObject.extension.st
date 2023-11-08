Extension { #name : #ProtoObject }

{ #category : #'*GtBreakpointSearch' }
ProtoObject class >> gtBreakpointsFor: aView [
	<gtView>
	<gtClassView>
	| breakpoints |
	breakpoints := self breakpointsInClass.
	breakpoints size = 0 ifTrue: [ ^ aView empty ].
	^ aView explicit
		title: 'Breakpoints';
		priority: -2;
		stencil: [ breakpoints ]
]
