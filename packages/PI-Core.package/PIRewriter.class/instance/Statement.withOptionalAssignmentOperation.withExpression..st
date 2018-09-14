semantic actions
Statement: aNode withOptionalAssignmentOperation: optionalAssignmentOperation withExpression: Expression 

	| assignedVariableName |
	(optionalAssignmentOperation isNil 
		or: [optionalAssignmentOperation interval contents isEmpty])
			ifTrue: [^ (self value: Expression)].
	
	assignedVariableName := self value: optionalAssignmentOperation.
	
	^ ((assignedVariableName includes: $:) ifTrue: [ ^ self useHandlerForIdentifier: assignedVariableName andValue: (self value: Expression) ] 
	ifFalse: [ assignedVariableName , ' := ' , (self value: Expression) ])