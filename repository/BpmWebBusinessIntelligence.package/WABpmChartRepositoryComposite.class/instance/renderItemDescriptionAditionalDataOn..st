subclass responsibility
renderItemDescriptionAditionalDataOn: html

	html span: [html strong: ('Created Time:' translateFor: self session user)].
	html output: selectedLateralItem createdTime.
	html span: [html strong: ('Report Creator:' translateFor: self session user)].
	html output: selectedLateralItem creatorName.
	html span: [html strong: ('Time to Build:' translateFor: self session user)].
	html output: selectedLateralItem printSecondsToConstruct.