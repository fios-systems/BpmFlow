test
testApplicationsIdentity
	"Check identity between <AbstractApplication> in the cache and the <AbstractApplication> of each <BpmProcessDefinition>"
	| applications |

	applications := AbstractApplication cache asArray.

	BpmEnvironment cache do: [:environment |
		(BpmProcessDefinition getAllProcessDefinitionIn: environment) do: [:eachProcDef | 
			self assert: (applications anySatisfy: [:eachApp | eachApp == eachProcDef application]).
		]
	].