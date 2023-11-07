Extension { #name : #Object }

{ #category : #'*GtBreakpointSearch' }
Object class >> breakpointsInClass [
	^ self gtMethodsInClass & AllBreakpoints haltReferencesWithoutTests
]

{ #category : #'*GtBreakpointSearch' }
Object class >> gtBreakpointsFor: aView [
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
