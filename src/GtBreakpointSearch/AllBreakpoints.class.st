Class {
	#name : #AllBreakpoints,
	#superclass : #Object,
	#category : #GtBreakpointSearch
}

{ #category : #accessing }
AllBreakpoints class >> breakpoints [
	^ self haltReferencesWithoutTests result
]

{ #category : #views }
AllBreakpoints class >> gtBreakpointsFor: aView [
	<gtClassView>
	^ aView forward
		title: 'Breakpoints';
		priority: 1;
		object: [ self haltReferencesWithoutTests ];
		view: #gtItemsFor:
]

{ #category : #views }
AllBreakpoints class >> haltReferences [
	| haltSelectors |
	haltSelectors := self haltSelectors.
	^ GtSearchMethodConditionsFilter
		condition: [ :aMethod | aMethod messages includesAny: haltSelectors ]
]

{ #category : #accessing }
AllBreakpoints class >> haltReferencesWithoutTests [
	^ self haltReferences
		select: [ :aMethod | 
			(aMethod pragmaAt: #gtExample) isNil
				and: [ (aMethod methodClass isKindOf: TestCase class) not ] ]
]

{ #category : #views }
AllBreakpoints class >> haltSelectors [
	^ (Object gtMethodsInClass
		select: [ :aMethod | aMethod selector includesSubstring: 'halt' ]) contents
		collect: #selector
]
