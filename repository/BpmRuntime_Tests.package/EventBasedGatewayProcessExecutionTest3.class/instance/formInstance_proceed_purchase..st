form instances
formInstance_proceed_purchase: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'proceed-purchase'
			withXml: self newInstanceTemplate formInstance_ue_proceed_purchase 
			definitionXml: self newDefinitionTemplate formDefinition_ue_proceed_purchase 
			in: 'ue' 
			process: aBpmProcessInstance