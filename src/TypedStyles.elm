module TypedStyles where

{-|

# Typed Styles for Elm

Adds typed styles on top of elm-html. Example usage:

```haskell
import Html(..)
import Html.Attributes(..)
import TypedStyles(..)

main : Html
main = div [
    style [
        fontSize 30 px
      , backgroundColor blue
      , textCenter
      , padding 20 px
      , color white]
      ]
    [text "this is an example" ]

```

Primed variants of most functions are provided for use with my style effects
library.

* I will add more stuff as I have time; in particular I want to try to get
animation, transition, and transformation bindings.

-}

import Html(..)
import Html.Attributes(..)
import List(..)
import Color(..)
import String(join)

type alias CSSValue = String
type alias CSSKey   = String

-- BEGIN GENERATED BINDINGS
type Length = InEms Float
    | InExs Float
    | InChs Float
    | InRems Float
    | InVhs Float
    | InVws Float
    | InVmins Float
    | InPixels Float
    | InMillimeters Float
    | InCentimeters Float
    | InInchs Float
    | InPoints Float
    | InPicas Float
    | InPercents Float

{-| em - shorthand constructor for type Em.
-}
em : Float -> Length
em i = InEms i

{-| ex - shorthand constructor for type Ex.
-}
ex : Float -> Length
ex i = InExs i

{-| ch - shorthand constructor for type Ch.
-}
ch : Float -> Length
ch i = InChs i

{-| rem - shorthand constructor for type Rem.
-}
rem : Float -> Length
rem i = InRems i

{-| vh - shorthand constructor for type Vh.
-}
vh : Float -> Length
vh i = InVhs i

{-| vw - shorthand constructor for type Vw.
-}
vw : Float -> Length
vw i = InVws i

{-| vmax - shorthand constructor for type Vmin.
-}
vmax : Float -> Length
vmax i = InVmins i

{-| px - shorthand constructor for type Pixel.
-}
px : Float -> Length
px i = InPixels i

{-| mm - shorthand constructor for type Millimeter.
-}
mm : Float -> Length
mm i = InMillimeters i

{-| cm - shorthand constructor for type Centimeter.
-}
cm : Float -> Length
cm i = InCentimeters i

{-| inches - shorthand constructor for type Inch.
-}
inches : Float -> Length
inches i = InInchs i

{-| pt - shorthand constructor for type Point.
-}
pt : Float -> Length
pt i = InPoints i

{-| pica - shorthand constructor for type Pica.
-}
pica : Float -> Length
pica i = InPicas i

{-| prc - shorthand constructor for type Percent.
-}
prc : Float -> Length
prc i = InPercents i

{-| serializeLength - transform to CSSValue
-}
serializeLength : Length -> CSSValue
serializeLength x = case x of
    InEms a -> toString a ++ "em"
    InExs a -> toString a ++ "ex"
    InChs a -> toString a ++ "ch"
    InRems a -> toString a ++ "rem"
    InVhs a -> toString a ++ "vh"
    InVws a -> toString a ++ "vw"
    InVmins a -> toString a ++ "vmax"
    InPixels a -> toString a ++ "px"
    InMillimeters a -> toString a ++ "mm"
    InCentimeters a -> toString a ++ "cm"
    InInchs a -> toString a ++ "in"
    InPoints a -> toString a ++ "pt"
    InPicas a -> toString a ++ "pc"
    InPercents a -> toString a ++ "%"

{-| padding - shorthand for providing lengths to padding.
 Example: padding 10 px
-}
padding : Float -> (Float -> Length) -> (CSSKey,CSSValue)
padding x f = ("padding", serializeLength (f x))

{-| padding' - shorthand for providing lengths to padding for use with animation.
 Example: padding' 10 px 20 px
-}
padding' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
padding' x f y g = ("padding", serializeLength (f x), serializeLength (g y))


{-| paddingTop - shorthand for providing lengths to padding-top.
 Example: paddingTop 10 px
-}
paddingTop : Float -> (Float -> Length) -> (CSSKey,CSSValue)
paddingTop x f = ("padding-top", serializeLength (f x))

{-| paddingTop' - shorthand for providing lengths to padding-top for use with animation.
 Example: paddingTop' 10 px 20 px
-}
paddingTop' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
paddingTop' x f y g = ("padding-top", serializeLength (f x), serializeLength (g y))


{-| paddingBottom - shorthand for providing lengths to padding-bottom.
 Example: paddingBottom 10 px
-}
paddingBottom : Float -> (Float -> Length) -> (CSSKey,CSSValue)
paddingBottom x f = ("padding-bottom", serializeLength (f x))

{-| paddingBottom' - shorthand for providing lengths to padding-bottom for use with animation.
 Example: paddingBottom' 10 px 20 px
-}
paddingBottom' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
paddingBottom' x f y g = ("padding-bottom", serializeLength (f x), serializeLength (g y))


{-| paddingLeft - shorthand for providing lengths to padding-left.
 Example: paddingLeft 10 px
-}
paddingLeft : Float -> (Float -> Length) -> (CSSKey,CSSValue)
paddingLeft x f = ("padding-left", serializeLength (f x))

{-| paddingLeft' - shorthand for providing lengths to padding-left for use with animation.
 Example: paddingLeft' 10 px 20 px
-}
paddingLeft' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
paddingLeft' x f y g = ("padding-left", serializeLength (f x), serializeLength (g y))


{-| paddingRight - shorthand for providing lengths to padding-right.
 Example: paddingRight 10 px
-}
paddingRight : Float -> (Float -> Length) -> (CSSKey,CSSValue)
paddingRight x f = ("padding-right", serializeLength (f x))

{-| paddingRight' - shorthand for providing lengths to padding-right for use with animation.
 Example: paddingRight' 10 px 20 px
-}
paddingRight' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
paddingRight' x f y g = ("padding-right", serializeLength (f x), serializeLength (g y))


{-| margin - shorthand for providing lengths to margin.
 Example: margin 10 px
-}
margin : Float -> (Float -> Length) -> (CSSKey,CSSValue)
margin x f = ("margin", serializeLength (f x))

{-| margin' - shorthand for providing lengths to margin for use with animation.
 Example: margin' 10 px 20 px
-}
margin' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
margin' x f y g = ("margin", serializeLength (f x), serializeLength (g y))


{-| marginTop - shorthand for providing lengths to margin-top.
 Example: marginTop 10 px
-}
marginTop : Float -> (Float -> Length) -> (CSSKey,CSSValue)
marginTop x f = ("margin-top", serializeLength (f x))

{-| marginTop' - shorthand for providing lengths to margin-top for use with animation.
 Example: marginTop' 10 px 20 px
-}
marginTop' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
marginTop' x f y g = ("margin-top", serializeLength (f x), serializeLength (g y))


{-| marginBottom - shorthand for providing lengths to margin-bottom.
 Example: marginBottom 10 px
-}
marginBottom : Float -> (Float -> Length) -> (CSSKey,CSSValue)
marginBottom x f = ("margin-bottom", serializeLength (f x))

{-| marginBottom' - shorthand for providing lengths to margin-bottom for use with animation.
 Example: marginBottom' 10 px 20 px
-}
marginBottom' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
marginBottom' x f y g = ("margin-bottom", serializeLength (f x), serializeLength (g y))


{-| marginLeft - shorthand for providing lengths to margin-left.
 Example: marginLeft 10 px
-}
marginLeft : Float -> (Float -> Length) -> (CSSKey,CSSValue)
marginLeft x f = ("margin-left", serializeLength (f x))

{-| marginLeft' - shorthand for providing lengths to margin-left for use with animation.
 Example: marginLeft' 10 px 20 px
-}
marginLeft' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
marginLeft' x f y g = ("margin-left", serializeLength (f x), serializeLength (g y))


{-| marginRight - shorthand for providing lengths to margin-right.
 Example: marginRight 10 px
-}
marginRight : Float -> (Float -> Length) -> (CSSKey,CSSValue)
marginRight x f = ("margin-right", serializeLength (f x))

{-| marginRight' - shorthand for providing lengths to margin-right for use with animation.
 Example: marginRight' 10 px 20 px
-}
marginRight' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
marginRight' x f y g = ("margin-right", serializeLength (f x), serializeLength (g y))


{-| fontSize - shorthand for providing lengths to font-size.
 Example: fontSize 10 px
-}
fontSize : Float -> (Float -> Length) -> (CSSKey,CSSValue)
fontSize x f = ("font-size", serializeLength (f x))

{-| fontSize' - shorthand for providing lengths to font-size for use with animation.
 Example: fontSize' 10 px 20 px
-}
fontSize' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
fontSize' x f y g = ("font-size", serializeLength (f x), serializeLength (g y))


{-| height - shorthand for providing lengths to height.
 Example: height 10 px
-}
height : Float -> (Float -> Length) -> (CSSKey,CSSValue)
height x f = ("height", serializeLength (f x))

{-| height' - shorthand for providing lengths to height for use with animation.
 Example: height' 10 px 20 px
-}
height' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
height' x f y g = ("height", serializeLength (f x), serializeLength (g y))


{-| minHeight - shorthand for providing lengths to min-height.
 Example: minHeight 10 px
-}
minHeight : Float -> (Float -> Length) -> (CSSKey,CSSValue)
minHeight x f = ("min-height", serializeLength (f x))

{-| minHeight' - shorthand for providing lengths to min-height for use with animation.
 Example: minHeight' 10 px 20 px
-}
minHeight' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
minHeight' x f y g = ("min-height", serializeLength (f x), serializeLength (g y))


{-| maxHeight - shorthand for providing lengths to max-height.
 Example: maxHeight 10 px
-}
maxHeight : Float -> (Float -> Length) -> (CSSKey,CSSValue)
maxHeight x f = ("max-height", serializeLength (f x))

{-| maxHeight' - shorthand for providing lengths to max-height for use with animation.
 Example: maxHeight' 10 px 20 px
-}
maxHeight' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
maxHeight' x f y g = ("max-height", serializeLength (f x), serializeLength (g y))


{-| width - shorthand for providing lengths to width.
 Example: width 10 px
-}
width : Float -> (Float -> Length) -> (CSSKey,CSSValue)
width x f = ("width", serializeLength (f x))

{-| width' - shorthand for providing lengths to width for use with animation.
 Example: width' 10 px 20 px
-}
width' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
width' x f y g = ("width", serializeLength (f x), serializeLength (g y))


{-| borderTopWidth - shorthand for providing lengths to border-top-width.
 Example: borderTopWidth 10 px
-}
borderTopWidth : Float -> (Float -> Length) -> (CSSKey,CSSValue)
borderTopWidth x f = ("border-top-width", serializeLength (f x))

{-| borderTopWidth' - shorthand for providing lengths to border-top-width for use with animation.
 Example: borderTopWidth' 10 px 20 px
-}
borderTopWidth' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
borderTopWidth' x f y g = ("border-top-width", serializeLength (f x), serializeLength (g y))


{-| borderBottomWidth - shorthand for providing lengths to border-bottom-width.
 Example: borderBottomWidth 10 px
-}
borderBottomWidth : Float -> (Float -> Length) -> (CSSKey,CSSValue)
borderBottomWidth x f = ("border-bottom-width", serializeLength (f x))

{-| borderBottomWidth' - shorthand for providing lengths to border-bottom-width for use with animation.
 Example: borderBottomWidth' 10 px 20 px
-}
borderBottomWidth' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
borderBottomWidth' x f y g = ("border-bottom-width", serializeLength (f x), serializeLength (g y))


{-| borderLeftWidth - shorthand for providing lengths to border-left-width.
 Example: borderLeftWidth 10 px
-}
borderLeftWidth : Float -> (Float -> Length) -> (CSSKey,CSSValue)
borderLeftWidth x f = ("border-left-width", serializeLength (f x))

{-| borderLeftWidth' - shorthand for providing lengths to border-left-width for use with animation.
 Example: borderLeftWidth' 10 px 20 px
-}
borderLeftWidth' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
borderLeftWidth' x f y g = ("border-left-width", serializeLength (f x), serializeLength (g y))


{-| borderRightWidth - shorthand for providing lengths to border-right-width.
 Example: borderRightWidth 10 px
-}
borderRightWidth : Float -> (Float -> Length) -> (CSSKey,CSSValue)
borderRightWidth x f = ("border-right-width", serializeLength (f x))

{-| borderRightWidth' - shorthand for providing lengths to border-right-width for use with animation.
 Example: borderRightWidth' 10 px 20 px
-}
borderRightWidth' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
borderRightWidth' x f y g = ("border-right-width", serializeLength (f x), serializeLength (g y))


{-| letterSpacing - shorthand for providing lengths to letter-spacing.
 Example: letterSpacing 10 px
-}
letterSpacing : Float -> (Float -> Length) -> (CSSKey,CSSValue)
letterSpacing x f = ("letter-spacing", serializeLength (f x))

{-| letterSpacing' - shorthand for providing lengths to letter-spacing for use with animation.
 Example: letterSpacing' 10 px 20 px
-}
letterSpacing' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
letterSpacing' x f y g = ("letter-spacing", serializeLength (f x), serializeLength (g y))


{-| textIndent - shorthand for providing lengths to text-indent.
 Example: textIndent 10 px
-}
textIndent : Float -> (Float -> Length) -> (CSSKey,CSSValue)
textIndent x f = ("text-indent", serializeLength (f x))

{-| textIndent' - shorthand for providing lengths to text-indent for use with animation.
 Example: textIndent' 10 px 20 px
-}
textIndent' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
textIndent' x f y g = ("text-indent", serializeLength (f x), serializeLength (g y))


{-| wordSpacing - shorthand for providing lengths to word-spacing.
 Example: wordSpacing 10 px
-}
wordSpacing : Float -> (Float -> Length) -> (CSSKey,CSSValue)
wordSpacing x f = ("word-spacing", serializeLength (f x))

{-| wordSpacing' - shorthand for providing lengths to word-spacing for use with animation.
 Example: wordSpacing' 10 px 20 px
-}
wordSpacing' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
wordSpacing' x f y g = ("word-spacing", serializeLength (f x), serializeLength (g y))


{-| borderRadius - shorthand for providing lengths to border-radius.
 Example: borderRadius 10 px
-}
borderRadius : Float -> (Float -> Length) -> (CSSKey,CSSValue)
borderRadius x f = ("border-radius", serializeLength (f x))

{-| borderRadius' - shorthand for providing lengths to border-radius for use with animation.
 Example: borderRadius' 10 px 20 px
-}
borderRadius' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
borderRadius' x f y g = ("border-radius", serializeLength (f x), serializeLength (g y))


{-| borderTopLeftRadius - shorthand for providing lengths to border-top-left-radius.
 Example: borderTopLeftRadius 10 px
-}
borderTopLeftRadius : Float -> (Float -> Length) -> (CSSKey,CSSValue)
borderTopLeftRadius x f = ("border-top-left-radius", serializeLength (f x))

{-| borderTopLeftRadius' - shorthand for providing lengths to border-top-left-radius for use with animation.
 Example: borderTopLeftRadius' 10 px 20 px
-}
borderTopLeftRadius' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
borderTopLeftRadius' x f y g = ("border-top-left-radius", serializeLength (f x), serializeLength (g y))


{-| borderBottomLeftRadius - shorthand for providing lengths to border-bottom-left-radius.
 Example: borderBottomLeftRadius 10 px
-}
borderBottomLeftRadius : Float -> (Float -> Length) -> (CSSKey,CSSValue)
borderBottomLeftRadius x f = ("border-bottom-left-radius", serializeLength (f x))

{-| borderBottomLeftRadius' - shorthand for providing lengths to border-bottom-left-radius for use with animation.
 Example: borderBottomLeftRadius' 10 px 20 px
-}
borderBottomLeftRadius' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
borderBottomLeftRadius' x f y g = ("border-bottom-left-radius", serializeLength (f x), serializeLength (g y))


{-| borderTopRightRadius - shorthand for providing lengths to border-top-right-radius.
 Example: borderTopRightRadius 10 px
-}
borderTopRightRadius : Float -> (Float -> Length) -> (CSSKey,CSSValue)
borderTopRightRadius x f = ("border-top-right-radius", serializeLength (f x))

{-| borderTopRightRadius' - shorthand for providing lengths to border-top-right-radius for use with animation.
 Example: borderTopRightRadius' 10 px 20 px
-}
borderTopRightRadius' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
borderTopRightRadius' x f y g = ("border-top-right-radius", serializeLength (f x), serializeLength (g y))


{-| borderBottomRightRadius - shorthand for providing lengths to border-bottom-right-radius.
 Example: borderBottomRightRadius 10 px
-}
borderBottomRightRadius : Float -> (Float -> Length) -> (CSSKey,CSSValue)
borderBottomRightRadius x f = ("border-bottom-right-radius", serializeLength (f x))

{-| borderBottomRightRadius' - shorthand for providing lengths to border-bottom-right-radius for use with animation.
 Example: borderBottomRightRadius' 10 px 20 px
-}
borderBottomRightRadius' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
borderBottomRightRadius' x f y g = ("border-bottom-right-radius", serializeLength (f x), serializeLength (g y))


{-| bottom - shorthand for providing lengths to bottom.
 Example: bottom 10 px
-}
bottom : Float -> (Float -> Length) -> (CSSKey,CSSValue)
bottom x f = ("bottom", serializeLength (f x))

{-| bottom' - shorthand for providing lengths to bottom for use with animation.
 Example: bottom' 10 px 20 px
-}
bottom' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
bottom' x f y g = ("bottom", serializeLength (f x), serializeLength (g y))


{-| top - shorthand for providing lengths to top.
 Example: top 10 px
-}
top : Float -> (Float -> Length) -> (CSSKey,CSSValue)
top x f = ("top", serializeLength (f x))

{-| top' - shorthand for providing lengths to top for use with animation.
 Example: top' 10 px 20 px
-}
top' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
top' x f y g = ("top", serializeLength (f x), serializeLength (g y))


{-| left - shorthand for providing lengths to left.
 Example: left 10 px
-}
left : Float -> (Float -> Length) -> (CSSKey,CSSValue)
left x f = ("left", serializeLength (f x))

{-| left' - shorthand for providing lengths to left for use with animation.
 Example: left' 10 px 20 px
-}
left' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
left' x f y g = ("left", serializeLength (f x), serializeLength (g y))


{-| right - shorthand for providing lengths to right.
 Example: right 10 px
-}
right : Float -> (Float -> Length) -> (CSSKey,CSSValue)
right x f = ("right", serializeLength (f x))

{-| right' - shorthand for providing lengths to right for use with animation.
 Example: right' 10 px 20 px
-}
right' : Float -> (Float -> Length) -> Float -> (Float -> Length) -> (CSSKey,CSSValue,CSSValue)
right' x f y g = ("right", serializeLength (f x), serializeLength (g y))



{-| color - shorthand for providing colors to color.
 Example: color blue
-}
color : Color -> (CSSKey,CSSValue)
color x = ("color", cssColor x)

{-| color' - shorthand for providing colors to color for use with animation.
 Example: color' black blue
-}
color' : Color -> Color -> (CSSKey,CSSValue,CSSValue)
color' x y = ("color", cssColor x, cssColor y)


{-| backgroundColor - shorthand for providing colors to background-color.
 Example: backgroundColor blue
-}
backgroundColor : Color -> (CSSKey,CSSValue)
backgroundColor x = ("background-color", cssColor x)

{-| backgroundColor' - shorthand for providing colors to background-color for use with animation.
 Example: backgroundColor' black blue
-}
backgroundColor' : Color -> Color -> (CSSKey,CSSValue,CSSValue)
backgroundColor' x y = ("background-color", cssColor x, cssColor y)


{-| borderColor - shorthand for providing colors to border-color.
 Example: borderColor blue
-}
borderColor : Color -> (CSSKey,CSSValue)
borderColor x = ("border-color", cssColor x)

{-| borderColor' - shorthand for providing colors to border-color for use with animation.
 Example: borderColor' black blue
-}
borderColor' : Color -> Color -> (CSSKey,CSSValue,CSSValue)
borderColor' x y = ("border-color", cssColor x, cssColor y)


{-| borderLeftColor - shorthand for providing colors to border-left-color.
 Example: borderLeftColor blue
-}
borderLeftColor : Color -> (CSSKey,CSSValue)
borderLeftColor x = ("border-left-color", cssColor x)

{-| borderLeftColor' - shorthand for providing colors to border-left-color for use with animation.
 Example: borderLeftColor' black blue
-}
borderLeftColor' : Color -> Color -> (CSSKey,CSSValue,CSSValue)
borderLeftColor' x y = ("border-left-color", cssColor x, cssColor y)


{-| borderRightColor - shorthand for providing colors to border-right-color.
 Example: borderRightColor blue
-}
borderRightColor : Color -> (CSSKey,CSSValue)
borderRightColor x = ("border-right-color", cssColor x)

{-| borderRightColor' - shorthand for providing colors to border-right-color for use with animation.
 Example: borderRightColor' black blue
-}
borderRightColor' : Color -> Color -> (CSSKey,CSSValue,CSSValue)
borderRightColor' x y = ("border-right-color", cssColor x, cssColor y)


{-| borderTopColor - shorthand for providing colors to border-top-color.
 Example: borderTopColor blue
-}
borderTopColor : Color -> (CSSKey,CSSValue)
borderTopColor x = ("border-top-color", cssColor x)

{-| borderTopColor' - shorthand for providing colors to border-top-color for use with animation.
 Example: borderTopColor' black blue
-}
borderTopColor' : Color -> Color -> (CSSKey,CSSValue,CSSValue)
borderTopColor' x y = ("border-top-color", cssColor x, cssColor y)


{-| borderBottomColor - shorthand for providing colors to border-bottom-color.
 Example: borderBottomColor blue
-}
borderBottomColor : Color -> (CSSKey,CSSValue)
borderBottomColor x = ("border-bottom-color", cssColor x)

{-| borderBottomColor' - shorthand for providing colors to border-bottom-color for use with animation.
 Example: borderBottomColor' black blue
-}
borderBottomColor' : Color -> Color -> (CSSKey,CSSValue,CSSValue)
borderBottomColor' x y = ("border-bottom-color", cssColor x, cssColor y)


{-| outlineColor - shorthand for providing colors to outline-color.
 Example: outlineColor blue
-}
outlineColor : Color -> (CSSKey,CSSValue)
outlineColor x = ("outline-color", cssColor x)

{-| outlineColor' - shorthand for providing colors to outline-color for use with animation.
 Example: outlineColor' black blue
-}
outlineColor' : Color -> Color -> (CSSKey,CSSValue,CSSValue)
outlineColor' x y = ("outline-color", cssColor x, cssColor y)


-- END GENERATED BINDINGS

{-| cssColor - convert from a standard Elm color into a CSS color
 Example: cssColor blue
-}
cssColor : Color -> CSSValue
cssColor c = let x = (toRgb c) in
    "rgba(" ++ toString x.red ++ "," ++ toString x.green ++ "," ++ toString x.blue ++ "," ++ toString x.alpha ++ ")"

{-| textLeft - align text to the left
-}
textLeft : (CSSKey,CSSValue)
textLeft = ("text-align","left")

{-| textRight - align text to the right
-}
textRight : (CSSKey,CSSValue)
textRight = ("text-align","right")

{-| textCenter - center text
-}
textCenter : (CSSKey,CSSValue)
textCenter = ("text-align","center")

{-| textJustify - justify text
-}
textJustify : (CSSKey,CSSValue)
textJustify = ("text-align","justify")

{-| opacity - alpha from 0.0 to 1.0. Example: opacity 0.5
-}
opacity : Float -> (CSSKey,CSSValue)
opacity x = ("opacity",toString x)

{-| opacity' - two-state opacity for animation. Example: opacity' 0.5 1.0
-}
opacity' : Float -> Float -> (CSSKey,CSSValue,CSSValue)
opacity' x y = ("opacity",toString x,toString y)
