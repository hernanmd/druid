Class {
	#name : #DRCTranspileCommand,
	#superclass : #DRDispatchTableMenuCommand,
	#category : #'Druid-DispatchTable-Commands'
}

{ #category : #'accessing - defaults' }
DRCTranspileCommand class >> defaultDescription [

	^ 'Translate to C'
]

{ #category : #'accessing - defaults' }
DRCTranspileCommand class >> defaultIconName [

	^ #smallCogInitialState
]

{ #category : #'accessing - defaults' }
DRCTranspileCommand class >> defaultName [

	^ 'Translate'
]

{ #category : #executing }
DRCTranspileCommand >> execute [
	"Private - Open a Browser on the selected method"

	Smalltalk tools workspace openContents: (self translatedEntry surroundedBy: '"')
]

{ #category : #executing }
DRCTranspileCommand >> translatedEntry [
	" Answer a <String> with a translated representation of the receiver's selection "

	^ String streamContents: [ : stream | 
			| cg tm |		
			cg := CCodeGenerator new.
			tm := cg
				compileToTMethodSelector: self selectedEntry selector
				in: self selectedEntry methodClass.
			(tm asCASTIn: cg) prettyPrintOn: stream 	].

]
