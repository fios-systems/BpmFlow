components creation
createExtendedAttributes
	"The receiver create -extended attributes- at workflow level"
	| policyNode assigPolicyName |

	policyNode := (xmlSegment xPath: 'ExtendedAttributes/ExtendedAttribute') detect: [:each | (each attributeAt: 'Name') = 'assignationPolicy'] ifNone: [^Dictionary new].

	assigPolicyName := policyNode attributeAt: 'Name' ifAbsent: [^Dictionary new].

	^Dictionary new
		at: 'assignationPolicy' put: assigPolicyName value;
		yourself