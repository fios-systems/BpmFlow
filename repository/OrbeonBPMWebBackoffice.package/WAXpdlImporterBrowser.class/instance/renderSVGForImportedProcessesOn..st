svg
renderSVGForImportedProcessesOn: html

	processGenerator processes do: [:processDefinition |  
		html div class: 'imported-process'; with: [
			html anchor 
				class: 'cursor-pointer';
				callback: [self showSVGfor: processDefinition];
				with: [html image url: (SEWAFIconLibrary / #documentflowcharticonPng); 
						altText: (('View [', processDefinition processName, ']') translateFor: self session user); 
						title: (('View [', processDefinition processName, ']') translateFor: self session user).
			].
		].
	].

	html div id: 'imported-processes-confirmation'; with: [
		html anchor 
			class: 'cursor-pointer';
			callback: [self importBizagiFiles];
			with: [html image url: (SEWAFIconLibrary / #actionsdocumentsaveas48pngPng); 
					altText: ('Proceed with Import Process' translateFor: self session user); 
					title: ('Proceed with Import Process' translateFor: self session user).
			].
	].