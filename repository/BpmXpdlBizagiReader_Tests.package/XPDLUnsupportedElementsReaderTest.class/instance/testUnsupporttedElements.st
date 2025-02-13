other
testUnsupporttedElements
	| visitor map testRoot environment application |

	testRoot := BpmSystemRoot newWithBasicObjects.
	map := Dictionary new.
	environment := testRoot getExistingEnvironmentOrCreateNewNamed: 'env-ue'.
	application := testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue'.

	reader xpdlPackages do: [:pack | map at: pack put: application].

	visitor := XPDLStructureAnalyzerVisitor newWithMapping: map in: environment.
	visitor visitAllXpdlPackages.

	self assert: ((visitor detectedItems select: [:each | each title = 'Unsupported Element'] ) size = 13).

	self assert: ((visitor detectedItems select: [:each | each code = 700]) size = 1).
	self assert: ((visitor detectedItems select: [:each | each code = 704]) size = 1).
	self assert: ((visitor detectedItems select: [:each | each code = 708]) size = 1).
	self assert: ((visitor detectedItems select: [:each | each code = 712]) size = 1).
	self assert: ((visitor detectedItems select: [:each | each code = 716]) size = 1).
	"self assert: ((visitor detectedItems select: [:each | each code = 720]) size = 1)." "Error Events are supported now"
	self assert: ((visitor detectedItems select: [:each | each code = 724]) size = 1).
	self assert: ((visitor detectedItems select: [:each | each code = 728]) size = 1).
	self assert: ((visitor detectedItems select: [:each | each code = 732]) size = 1).
	self assert: ((visitor detectedItems select: [:each | each code = 736]) size = 1).
	self assert: ((visitor detectedItems select: [:each | each code = 740]) size = 1).
	self assert: ((visitor detectedItems select: [:each | each code = 744]) size = 1).
	self assert: ((visitor detectedItems select: [:each | each code = 748]) size = 1).
	self assert: ((visitor detectedItems select: [:each | each code = 752]) size = 1).