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

javascriptContentOn: aRenderer
	aRenderer defineNamedFunction 
		name: self name; 
		arguments: self arguments;
		with:
		[ statements isEmpty ifFalse:
			[self return 
			ifTrue:
				[ statements allButLast do:
					[ :each | 
					aRenderer render: each.
					aRenderer document separator].
					aRenderer return: statements last ]
			ifFalse: 
				[ statements do:
					[ :each | 
					aRenderer render: each.
					aRenderer document separator] ]]]!

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

