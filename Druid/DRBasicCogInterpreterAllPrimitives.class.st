Class {
	#name : #DRBasicCogInterpreterAllPrimitives,
	#superclass : #CogVMSimulatorLSB,
	#category : #'Druid-InterpreterBuilder'
}

{ #category : #constants }
DRBasicCogInterpreterAllPrimitives class >> basicPrimitiveTable [

	MaxPrimitiveIndex := 23.
	PrimitiveTable := Array new: MaxPrimitiveIndex + 1.
	self primitivesClass
		table: PrimitiveTable
		from: #(	"Integer Primitives (0-19)"
			(0 0 "a.k.a. primitiveFail but faster because primitiveFail won't even be called")
			(1 primitiveAsCharacter)
			(2 primitiveAsFloat)
			(3 primitiveAdd)
			(4 primitiveSubtract)
			(5 primitiveLessThan)
			(6 primitiveGreaterThan)
			(7 primitiveLessOrEqual)
			(8 primitiveGreaterOrEqual)
			(9 primitiveEqual)
			(10 primitiveNotEqual)
			(11 primitiveMultiply)
			(12 primitiveDivide)
			
			(13 primitiveAt)
		).
	^ PrimitiveTable
]
