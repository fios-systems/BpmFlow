process definition creation
storeGeneratedProcessesOnCache
	"The receiver store on cache of class <BpmProcessDefinition> all new process definitions in <processes> instance variable"
	| newProcesses |

	newProcesses := processes collect: [:each | each addToCache].

	newProcesses do: [:eachDef | 
		(systemRoot getProcessDefinitionWith: eachDef id in: eachDef applicationName) isNil 
		ifTrue: [failedImportProcesses add: eachDef].
	].

	successfulImport := failedImportProcesses isEmpty.

	^newProcesses