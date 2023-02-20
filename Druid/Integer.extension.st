Extension { #name : #Integer }

{ #category : #'*Druid' }
Integer >> asCompilationUnitIn: aDRInterpreterCompiler for: aDRCompilationUnit [ 

]

{ #category : #'*Druid' }
Integer >> maskOfBytes [

	| res |
	res := 0.
	self timesRepeat: [ res := res << 8 + 16rFF ].
	^ res
]
