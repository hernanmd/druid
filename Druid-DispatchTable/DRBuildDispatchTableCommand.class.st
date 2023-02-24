Class {
	#name : #DRBuildDispatchTableCommand,
	#superclass : #DRDispatchTableMenuCommand,
	#category : #'Druid-DispatchTable-Commands'
}

{ #category : #'accessing - defaults' }
DRBuildDispatchTableCommand class >> defaultDescription [

	^ 'Browse entry'
]

{ #category : #'accessing - defaults' }
DRBuildDispatchTableCommand class >> defaultIconName [

	^ #glamorousBrowse
]

{ #category : #'accessing - defaults' }
DRBuildDispatchTableCommand class >> defaultName [

	^ 'Browse'
]

{ #category : #testing }
DRBuildDispatchTableCommand >> canBeExecuted [
	"Receiver can be executed if there are entries selected"

	^ self application selectedEntries notEmpty
]

{ #category : #executing }
DRBuildDispatchTableCommand >> execute [
	"Private - Open a Browser on the selected method"

	self stBrowser
		openOnClass: self selectedEntry methodClass
		selector: self selectedEntry selector
]
