"Filed out from Dolphin Smalltalk"!

JQueryInstance subclass: #JQueryBootstrapTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQueryBootstrapTable guid: (GUID fromString: '{d7f9d503-46f5-458c-a590-e12686947641}')!

JQueryBootstrapTable comment: ''!

!JQueryBootstrapTable categoriesForClass!Objects! !

!JQueryBootstrapTable methodsFor!

append: aDictionary

	^self callMethod: 'append' with: (JSStream on: aDictionary asJson)!

callMethod: aString

	^self call: 'bootstrapTable' with: aString!

callMethod: aString with: arg

	^self call: 'bootstrapTable' with: aString with: arg!

collapseAll

	^self callMethod: 'collapseAllRows'!

collapseRow: anInteger

	^self callMethod: 'collapaseRow' with: anInteger - 1!

collapseRowByUniqueId: anInteger

	^self callMethod: 'collapseRowByUniqueId' with: anInteger!

data

	^self callMethod: 'getData'!

expandRow: anInteger

	^self callMethod: 'expandRow' with: anInteger - 1!

expandRowByUniqueId: anInteger

	^self callMethod: 'expandRowByUniqueId' with: anInteger!

hasNotSingleSelection

	"Implemented due to apparent issue when 'not' applied to hasSingleSelection test"

	^self selections access: 'length!!=1'!

hasSelection

	^self selections access: 'length>0'!

hasSingleSelection

	^self selections access: 'length==1'!

insertRow: aDictionary at: anInteger

	| params |

	params := 
		Dictionary new
			at: #index put: anInteger - 1;
			at: #row put: aDictionary;
			yourself.

	^self callMethod: 'insertRow' with: (JSStream on: params asJson)!

nextPage

	^self callMethod: 'nextPage'!

previousPage

	^self callMethod: 'prevPage'!

refresh

	^self callMethod: 'refresh'!

refreshSelectingPage: anInteger

	^self callMethod: 'refresh' with: (JSStream on: '{pageNumber:', anInteger displayString, '}')!

remove: aDictionary

	^self callMethod: 'remove' with: (JSStream on: aDictionary asJson)!

removeAll

	^self callMethod: 'removeAll'!

resetSearch

	^self callMethod: 'resetSearch'!

selectIndex: anInteger

	^self callMethod: 'check' with: anInteger - 1!

selections

	^self callMethod: 'getSelections'!

selectPage: anInteger

	^self callMethod: 'selectPage' with: anInteger!

unselectAll

	^self callMethod: 'uncheckAll'!

updateRow: aDictionary

	^self callMethod: 'updateRow' with: (JSStream on: aDictionary asJson)! !

!JQueryBootstrapTable categoriesForMethods!
append:!actions!public! !
callMethod:!actions!private! !
callMethod:with:!actions!private! !
collapseAll!actions!public! !
collapseRow:!actions!public! !
collapseRowByUniqueId:!actions!public! !
data!accessing!public! !
expandRow:!actions!public! !
expandRowByUniqueId:!actions!public! !
hasNotSingleSelection!public!testing! !
hasSelection!public!testing! !
hasSingleSelection!public!testing! !
insertRow:at:!actions!public! !
nextPage!actions!public! !
previousPage!actions!public! !
refresh!actions!public! !
refreshSelectingPage:!actions!public! !
remove:!actions!public! !
removeAll!actions!public! !
resetSearch!actions!public! !
selectIndex:!actions!public! !
selections!accessing!public! !
selectPage:!actions!public! !
unselectAll!actions!public! !
updateRow:!actions!public! !
!

