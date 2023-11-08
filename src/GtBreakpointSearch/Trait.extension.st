Extension { #name : #Trait }

{ #category : #'*GtBreakpointSearch' }
Trait >> gtBreakpointsFor: aView [
	<gtView>
	<gtClassView>
	| breakpoints |
	breakpoints := self breakpointsInClass.
	breakpoints size = 0 ifTrue: [ ^ aView empty ].
	^ aView forward
		title: 'Breakpoints';
		priority: -2;
		object: [ breakpoints ];
		view: #gtItemsFor:
]
