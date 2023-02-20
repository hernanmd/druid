Extension { #name : #Symbol }

{ #category : #'*Druid' }
Symbol >> asCompilationUnitIn: aDRInterpreterCompiler for: aDRCompilationUnit [ 

	[ (aDRInterpreterCompiler newPrimitive: self)
		ifNotNil: [ : newPrimitive | aDRCompilationUnit addPrimitive: newPrimitive ] ]
	on: Exception 
	do: [ : ex | ex debug. Transcript crShow: ex messageText ].

]

{ #category : #'*Druid' }
Symbol >> numberOfArgumentsIn: aDRPrimitiveCompilerCompiler [

	^ aDRPrimitiveCompilerCompiler sourceMethod numberOfArguments
]

{ #category : #'*Druid' }
Symbol >> prettyPrint [
	
	^ self
]
