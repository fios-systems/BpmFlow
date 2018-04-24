test
testMatrixTakenAssignmentAndUserIdentity
	"Check sanity of Finished Assignments in the Matrix and in BpmUser inbox"

	BpmUser cache do: [:eachUser | 
		eachUser getCurrentAssignments do: [:userAssign | | takenMatrix takenAssignments |
			takenMatrix := userAssign process getTakenProcessMatrix.
			takenAssignments := takenMatrix getAllAssignments.
			self assert: (takenAssignments anySatisfy: [:eachAssign | eachAssign == userAssign]).
		].
	].