code analyzer
checkUseOfInvalidClasses

	isValidClassesEnabled ifFalse: [^self].

	(self getReferencedClasses reject: [:each | validClasses includes: each]) do: [:each | self addBlockWarning: 'Invalid class used [', each , ']']