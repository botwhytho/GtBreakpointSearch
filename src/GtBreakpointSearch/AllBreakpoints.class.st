Class {
	#name : #AllBreakpoints,
	#superclass : #Object,
	#category : #GtBreakpointSearch
}

{ #category : #views }
AllBreakpoints class >> gtBreakpointsFor: aView [
	<gtClassView>
	| breakpoints packages |
	breakpoints := #Halt gtReferences | #halt gtReferences
		| #halt: gtReferences | #haltIfNil gtReferences
		| #haltOnCount: gtReferences | #haltOnce gtReferences.
	breakpoints size = 0
		ifTrue: [ ^ aView empty ].
	packages := Set new.
	breakpoints do: [ :each | packages add: each package ].
	^ aView forward
		title: 'Breakpoints';
		priority: 1;
		object: packages asArray sorted;
		view: #gtItemsFor:
]
