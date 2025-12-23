"Filed out from Dolphin Smalltalk"!

JSFunction subclass: #JSNamedFunction
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSNamedFunction guid: (GUID fromString: '{3b639b2e-7357-46ed-bcdd-dc984aca2025}')!

JSNamedFunction comment: ''!

!JSNamedFunction categoriesForClass!Base! !

!JSNamedFunction methodsFor!

javascriptContentOn: aStream	aStream 
		nextPutAll: 'function ';
		nextPutAll: self name;
		nextPut: $(.	self arguments do: [ :each | aStream nextPutAll: each ] separatedBy: [ aStream nextPut: $, ].	aStream nextPutAll: '){'.	statements isEmpty ifFalse:			[ statements allButLast do:					[ :each | 					aStream						javascript: each;						nextPut: $; ].			self return ifTrue: [ aStream nextPutAll: 'return ' ].			aStream javascript: statements last ].	aStream nextPut: $}!

name
	^name!

name: anObject
	name := anObject! !

!JSNamedFunction categoriesForMethods!
javascriptContentOn:!printing!public! !
name!accessing!private! !
name:!accessing!private! !
!

!JSNamedFunction class methodsFor!

named: aString function: aJSFunction

	"Private - Answer an instance of the receiver named aString with the same internals as aJSFunction"

	| instance |

	instance := self new.
	instance name: aString.
	1 to: JSFunction instSize do: 
		[ :index || val |
		val := aJSFunction instVarAt: index.
		val == aJSFunction
			ifTrue: [instance instVarAt: index put: instance]
			ifFalse: [instance instVarAt: index put: val]].
	^instance! !

!JSNamedFunction class categoriesForMethods!
named:function:!instance creation!private! !
!

