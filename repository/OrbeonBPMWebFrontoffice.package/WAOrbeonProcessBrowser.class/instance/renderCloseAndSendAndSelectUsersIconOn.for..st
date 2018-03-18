process
renderCloseAndSendAndSelectUsersIconOn: html for: aBpmArtifactInstance
	| jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html 
							width: 500 
							height: 500 
							compositeInstance: (WAAssignTasksToUsers new selectedTask: aBpmArtifactInstance; yourself) 
							title: 'Assign Users'.

	html anchor "callback: [self closeSendAndSelectUsers: aBpmArtifactInstance]; "
			class: 'cursor-pointer';
			onClick: (html jQuery id: jQueryId) dialog open;
			with: [html image url: (SEWAFIconLibrary / #userarrowright32Png); 
			title: ('Close, Send & Select Users' translateFor: self session user);
			altText: ('Close, Send & Select Users' translateFor: self session user)].