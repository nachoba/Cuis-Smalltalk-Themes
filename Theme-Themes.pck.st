'From Cuis 4.2 of 25 July 2013 [latest update: #2568] on 2 November 2015 at 10:13:00.872581 pm'!
'Description Please enter a description for this package'!
!provides: 'Theme-Themes' 1 1!
!classDefinition: #AirTheme category: #'Theme-Themes'!
Theme subclass: #AirTheme
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Theme-Themes'!
!classDefinition: 'AirTheme class' category: #'Theme-Themes'!
AirTheme class
	instanceVariableNames: ''!

!classDefinition: #MonokaiTheme category: #'Theme-Themes'!
Theme subclass: #MonokaiTheme
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Theme-Themes'!
!classDefinition: 'MonokaiTheme class' category: #'Theme-Themes'!
MonokaiTheme class
	instanceVariableNames: ''!


!AirTheme commentStamp: '<historical>' prior: 0!
A nice deep blue theme.!

!MonokaiTheme commentStamp: 'cbr 10/15/2012 18:19' prior: 0!
A low contrast, darker gray theme with square corners and some alpha. The Shout configuration should be a good starting place for doing darker, lower contrast themes.!

!AirTheme methodsFor: 'colors' stamp: 'IS 10/30/2015 19:29'!
background
	^ Color r: 0.55  g: 0.65 b: 0.8! !

!AirTheme methodsFor: 'colors' stamp: 'IS 10/30/2015 19:29'!
buttonLabel
	^ Color hue: 0 chroma: 0 luminance: 0.13! !

!AirTheme methodsFor: 'tool colors' stamp: 'IS 10/30/2015 20:00'!
defaultWindowColor
	"^ Color hue: 0 chroma: 0 luminance: 1."
	^ Color r: 0.686 g: 0.796 b: 0.910 alpha: 0.6! !

!AirTheme methodsFor: 'other options' stamp: 'IS 10/30/2015 19:29'!
embossedTitles
	^true! !

!AirTheme methodsFor: 'initialization' stamp: 'IS 10/30/2015 20:19'!
initialize
	super initialize.
	self runningWorld backgroundImageData: nil.! !

!AirTheme methodsFor: 'widget colors' stamp: 'IS 10/30/2015 19:29'!
listSelectedRowText
	^ Color white! !

!AirTheme methodsFor: 'menu colors' stamp: 'IS 10/30/2015 20:07'!
menu
	"^ Color hue: 212 chroma: 0.6 luminance: 0.3"
		^ Color r: 0.686 g: 0.796 b: 0.910 alpha:0.90! !

!AirTheme methodsFor: 'menu colors' stamp: 'IS 10/30/2015 19:29'!
menuText
	"^ Color hue: 212 chroma: 0.3 luminance: 0.8"
		^ Color hue: 0 chroma: 0 luminance: 0.13! !

!AirTheme methodsFor: 'menu colors' stamp: 'IS 10/30/2015 19:29'!
menuTitleBar
	^ self menu twiceDarker! !

!AirTheme methodsFor: 'colors' stamp: 'IS 10/30/2015 20:11'!
paneBackgroundFrom: aColor
	"^ Color hue: 0 chroma: 0 luminance: 1."
	"^ (Color hue: 212 chroma: 0.8 luminance: 0.4) muchDarker"
	
	"^ (aColor alphaMixed: 0.2 with: Color blue ) alpha: 0.3"
	^ Color r: 0.686 g: 0.796 b: 0.910 alpha:0.6! !

!AirTheme methodsFor: 'other options' stamp: 'IS 10/30/2015 20:05'!
roundButtons
	^true! !

!AirTheme methodsFor: 'other options' stamp: 'IS 10/30/2015 20:05'!
roundWindowCorners
	^false! !

!AirTheme methodsFor: 'colors' stamp: 'IS 10/30/2015 20:14'!
shout
	"Color symbols as an association list."
	
	
	^ {
		#defaults 				     		-> #blue.
		#undefined 					-> #red.
		#methodTags 				-> #(green muchDarker).
		#pseudoVariables 			-> #(red muchDarker).
		#messages 					-> #(blue darker).
		#arguments 					-> #(cyan muchDarker).
		#instVar 				      	-> #(magenta muchDarker).
		#incompleteMessages 	 	-> #(gray veryMuchDarker).
		#blockLevelFour 				-> #(green darker).
		#blockLevelFive 				-> #(orange darker).
		#blockLevelSix 				-> #(magenta darker).
		#blockLevelSeven 			-> #blue.
		#tempBar 						-> #gray.
		#tempVars 					-> #(gray muchDarker).
	}! !

!AirTheme methodsFor: 'colors' stamp: 'IS 10/30/2015 19:29'!
text
	^ Color hue: 0 chroma: 0 luminance: 0.13! !

!AirTheme methodsFor: 'colors' stamp: 'IS 10/30/2015 19:29'!
textHighlight
	"^ Color hue: 0 chroma: 0.56 luminance: 0.45"
	^ Color r: 0 g: 0.584 b: 0.8.! !

!AirTheme methodsFor: 'colors' stamp: 'IS 10/30/2015 19:29'!
textHighlightFocused: focused
	"A nice light blue."
	| textHighlight |
	Display depth = 1 ifTrue: [^ Color veryLightGray].
	Display depth = 2 ifTrue: [^ Color gray: 0.87].
	textHighlight _ self textHighlight.
	^focused
		ifTrue: [ textHighlight ]
		ifFalse: [ self unfocusedTextHighlightFrom: textHighlight ]! !

!AirTheme methodsFor: 'colors' stamp: 'IS 10/30/2015 12:26'!
textPane
	^ Color lightBlue alpha:0.60.! !

!AirTheme methodsFor: 'colors' stamp: 'IS 10/30/2015 19:29'!
unfocusedTextHighlightFrom: aColor
	^aColor adjustSaturation: 0.0 brightness: 0.08! !

!AirTheme methodsFor: 'other options' stamp: 'IS 10/30/2015 20:05'!
useButtonGradient
	^false! !

!AirTheme methodsFor: 'other options' stamp: 'IS 10/30/2015 19:29'!
useUniformColors
	^true! !

!AirTheme methodsFor: 'other options' stamp: 'IS 10/30/2015 19:29'!
useWindowTitleGradient
	^true! !

!AirTheme methodsFor: 'colors' stamp: 'IS 10/30/2015 19:29'!
windowLabel
	"^ Color hue: 0 chroma: 0.56 luminance: 0.45	"
	^ Color r: 0.2 g: 0.2 b: 0.2! !

!MonokaiTheme methodsFor: 'colors' stamp: 'IS 11/2/2015 21:26'!
background
	
	
	^ Color gray muchDarker.! !

!MonokaiTheme methodsFor: 'tool colors' stamp: 'IS 11/2/2015 20:46'!
defaultWindowColor
	^ Color gray darker alpha: 0.5! !

!MonokaiTheme methodsFor: 'other options' stamp: 'IS 11/2/2015 20:52'!
embossedTitles
	^ false! !

!MonokaiTheme methodsFor: 'initialization' stamp: 'IS 11/2/2015 21:25'!
initialize.
	super initialize.
	self runningWorld backgroundImageData: nil.! !

!MonokaiTheme methodsFor: 'colors' stamp: 'IS 10/10/2012 20:18'!
missingCommentTextColor

	^ TextColor cyan! !

!MonokaiTheme methodsFor: 'colors' stamp: 'IS 11/2/2015 20:47'!
paneBackgroundFrom: aColor
	^ (aColor alphaMixed: 0.5 with: Color black) alpha: 0.7! !

!MonokaiTheme methodsFor: 'other options' stamp: 'IS 11/2/2015 20:52'!
roundButtons
	^ true! !

!MonokaiTheme methodsFor: 'other options' stamp: 'IS 11/2/2015 20:52'!
roundWindowCorners
	^ false! !

!MonokaiTheme methodsFor: 'colors' stamp: 'IS 11/2/2015 21:59'!
shout
	"Color symbols as an association list."
	
	^ {
		#defaults 					-> #(white darker).
		#undefined 				-> #cyan.
		#methodTags 			-> #(violet muchLighter).
		#pseudoVariables 		-> #(cyan darker).
		#messages 				-> #(yellow duller lighter lighter).
		#arguments 				-> #(cyan muchDarker).
		#instVar 					-> #(green lighter).
		#incompleteMessages -> #(gray muchLighter).
		#blockLevelFour 			-> #magenta.
		#blockLevelFive 			-> #(blue darker).
		#blockLevelSix 			-> #green.
		#blockLevelSeven 		-> #(yellow lighter).
		#tempBar 					-> #gray.
		#tempVars 				-> #(gray muchLighter).
	}! !

!MonokaiTheme methodsFor: 'colors' stamp: 'IS 10/10/2012 22:09'!
text
	^ Color white! !

!MonokaiTheme methodsFor: 'colors' stamp: 'IS 11/2/2015 21:16'!
textHighlight
	
	^ Color r: 0 g: 0.584 b: 0.8.! !

!MonokaiTheme methodsFor: 'colors' stamp: 'IS 10/15/2012 18:10'!
textPane
	^ Color gray! !

!MonokaiTheme methodsFor: 'other options' stamp: 'IS 10/10/2012 18:32'!
useUniformColors
	^ true! !

!MonokaiTheme methodsFor: 'colors' stamp: 'IS 11/2/2015 21:56'!
windowLabel
	^ Color white darker.! !
