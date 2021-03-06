tests-refreshing
testSessionRefreshOnProxyExpiry
	"Check that we refresh correctly when an object has expired"
	| cachePolicy |
	cachePolicy := TimedStrongCachePolicy new.
	cachePolicy timeout: 0.
	cachePolicy expiryAction: #refresh.
	(session descriptorFor: GlorpAddress) cachePolicy: cachePolicy.
	self checkRefreshDoing: [:anAddress |
		session readOneOf: GlorpAddress where: [:each | each id = 123]].