other
initialize

	super initialize.

	name := ''. 
	description := ''.
	isActive := true.
	items := OrderedCollection new.
	instanceRecursion := BpmDashboardRecursionDefinition new.
	isPrivate := false.
	creationTime := TimeStamp now.