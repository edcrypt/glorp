api
AND: anExpression AND: otherExpression AND: thirdExpression
	"A convenience method to allow easy conjunction of multiple ANDs at the same level"
	^((self AND: anExpression) AND: otherExpression) AND: thirdExpression.