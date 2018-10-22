send
send
	"The receiver is sent from the sender process <aBpmProcessInstance> to the receiver process <aBpmProcessInstance>.
	The sender must have a <BpmSendTaskInstance> in order to send a meessage and the receiver must have a <BpmEventBasedGateway>.
	The gateway must have a transition to <aBpmEventDefinition> with a <BpmMessageComponentDefinition>"

	targetProcesses := self getReceiverProcessesInstances.

	targetProcesses ifEmpty: [^self throwNoProcessesException]. 

	targetProcesses do: [:procInstance | | gatewayInstance transitionDefinition transitionInstance eventInstance |
		gatewayInstance := procInstance getRunningGatewayNamed: receiverGatewayName ifNone: [^self throwNoGatewayException].
		transitionDefinition := gatewayInstance getNextTransitionDefinitionForArtifactNamed: receiverEventName ifNone: [^self throwNoEventException].
		"the event instance is created here"
		transitionInstance := procInstance createNewTransition: transitionDefinition from: gatewayInstance.
		eventInstance := transitionInstance endArtifact.
		eventInstance processMessage: self inTarget: procInstance.
	]