"Filed out from Dolphin Smalltalk"!

JSJavascriptFunctionDefinitionBrush subclass: #JSJavascriptNamedFunctionDefinitionBrush
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSJavascriptNamedFunctionDefinitionBrush guid: (GUID fromString: '{0b27ae45-f87a-4690-bce0-37e8efa34b6c}')!

JSJavascriptNamedFunctionDefinitionBrush comment: ''!

!JSJavascriptNamedFunctionDefinitionBrush categoriesForClass!Javascript-Core-Brushes! !

!JSJavascriptNamedFunctionDefinitionBrush methodsFor!

name
	^name!

name: anObject
	name := anObject!

openBrush
	self document nextPutAll: 'function '; nextPutAll: self name; nextPutAll: '('.
	arguments isNil ifFalse: [
		arguments do: [ :each | self document identifier: each ]
		separatedBy: [ self document nextPut: $, ].].
	self document nextPut: $).
	self document openBlock! !

!JSJavascriptNamedFunctionDefinitionBrush categoriesForMethods!
name!accessing!private! !
name:!accessing!private! !
openBrush!operations!public! !
!

