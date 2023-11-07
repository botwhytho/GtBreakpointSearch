Class {
	#name : #AllBreakpoints,
	#superclass : #Object,
	#category : #GtBreakpointSearch
}

{ #category : #views }
AllBreakpoints class >> gtBreakpointsFor: aView [
	<gtClassView>
	^ aView forward
		title: 'Breakpoints';
		priority: 1;
		object: (MessageSend receiver: self selector: #haltReferencesWithoutTests);
		view: #gtItemsFor:
]

{ #category : #views }
AllBreakpoints class >> haltReferences [
	^ Halt gtReferences | #Halt gtReferences | #halt gtReferences
		| #halt: gtReferences | #haltIfNil gtReferences | #haltOnCount: gtReferences
		| #haltOnce gtReferences
]

{ #category : #accessing }
AllBreakpoints class >> haltReferencesWithoutTests [
	^ (self haltReferences
		select: [ :aMethod | 
			(aMethod pragmaAt: #gtExample) isNil
				and: [ (aMethod methodClass isKindOf: TestCase class) not ] ]) result
]
