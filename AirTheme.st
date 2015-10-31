'From Cuis 4.2 of 25 July 2013 [latest update: #2568] on 30 October 2015 at 8:20:37.547843 pm'!
!classDefinition: #AirTheme category: #'Theme-Themes'!
Theme subclass: #AirTheme
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Theme-Themes'!
!AirTheme commentStamp: '<historical>' prior: 0!
A nice deep blue theme.!


!AirTheme methodsFor: 'colors' stamp: 'IS 10/30/2015 19:29'!
background
	^ Color r: 0.55  g: 0.65 b: 0.8! !

!AirTheme methodsFor: 'colors' stamp: 'IS 10/30/2015 19:29'!
buttonLabel
	^ Color hue: 0 chroma: 0 luminance: 0.13! !

!AirTheme methodsFor: 'colors' stamp: 'IS 10/30/2015 20:11'!
paneBackgroundFrom: aColor
	"^ Color hue: 0 chroma: 0 luminance: 1."
	"^ (Color hue: 212 chroma: 0.8 luminance: 0.4) muchDarker"
	
	"^ (aColor alphaMixed: 0.2 with: Color blue ) alpha: 0.3"
	^ Color r: 0.686 g: 0.796 b: 0.910 alpha:0.6! !

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

!AirTheme methodsFor: 'colors' stamp: 'IS 10/30/2015 19:29'!
windowLabel
	"^ Color hue: 0 chroma: 0.56 luminance: 0.45	"
	^ Color r: 0.2 g: 0.2 b: 0.2! !


!AirTheme methodsFor: 'tool colors' stamp: 'IS 10/30/2015 20:00'!
defaultWindowColor
	"^ Color hue: 0 chroma: 0 luminance: 1."
	^ Color r: 0.686 g: 0.796 b: 0.910 alpha: 0.6! !


!AirTheme methodsFor: 'other options' stamp: 'IS 10/30/2015 19:29'!
embossedTitles
	^true! !

!AirTheme methodsFor: 'other options' stamp: 'IS 10/30/2015 20:05'!
roundButtons
	^true! !

!AirTheme methodsFor: 'other options' stamp: 'IS 10/30/2015 20:05'!
roundWindowCorners
	^false! !

!AirTheme methodsFor: 'other options' stamp: 'IS 10/30/2015 20:05'!
useButtonGradient
	^false! !

!AirTheme methodsFor: 'other options' stamp: 'IS 10/30/2015 19:29'!
useUniformColors
	^true! !

!AirTheme methodsFor: 'other options' stamp: 'IS 10/30/2015 19:29'!
useWindowTitleGradient
	^true! !


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


!AirTheme methodsFor: 'initialization' stamp: 'IS 10/30/2015 20:19'!
initialize
	super initialize.
	self runningWorld backgroundImageData: nil.! !
