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

import Html            exposing (..)
import Html.Attributes exposing (..)
import List            exposing (..)
import Color           exposing (..)
import String          exposing (join)

type alias CSSValue = String
type alias CSSKey   = String

type CssOptionalValue a = CssOptionalJust a | None

{-| none - used with optional css values (e.g., display none)
-}
none : CssOptionalValue a
none = None

{-| serializeCssOptionalValue - serializer for CssOptionalValue
-}
serializeCssOptionalValue : CssOptionalValue a -> (a -> CSSValue) -> CSSValue
serializeCssOptionalValue x s = case x of
    None -> "none"
    CssOptionalJust v -> s v

-- BEGIN GENERATED BINDINGS
type Length = InEms Int
    | InExs Int
    | InChs Int
    | InRems Int
    | InVhs Int
    | InVws Int
    | InVmins Int
    | InPixels Int
    | InMillimeters Int
    | InCentimeters Int
    | InInchs Int
    | InPoints Int
    | InPicas Int
    | InPercents Int

{-| em - shorthand constructor for type Em.
-}
em : Int -> Length
em i = InEms i

{-| ex - shorthand constructor for type Ex.
-}
ex : Int -> Length
ex i = InExs i

{-| ch - shorthand constructor for type Ch.
-}
ch : Int -> Length
ch i = InChs i

{-| rem - shorthand constructor for type Rem.
-}
rem : Int -> Length
rem i = InRems i

{-| vh - shorthand constructor for type Vh.
-}
vh : Int -> Length
vh i = InVhs i

{-| vw - shorthand constructor for type Vw.
-}
vw : Int -> Length
vw i = InVws i

{-| vmax - shorthand constructor for type Vmin.
-}
vmax : Int -> Length
vmax i = InVmins i

{-| px - shorthand constructor for type Pixel.
-}
px : Int -> Length
px i = InPixels i

{-| mm - shorthand constructor for type Millimeter.
-}
mm : Int -> Length
mm i = InMillimeters i

{-| cm - shorthand constructor for type Centimeter.
-}
cm : Int -> Length
cm i = InCentimeters i

{-| inches - shorthand constructor for type Inch.
-}
inches : Int -> Length
inches i = InInchs i

{-| pt - shorthand constructor for type Point.
-}
pt : Int -> Length
pt i = InPoints i

{-| pica - shorthand constructor for type Pica.
-}
pica : Int -> Length
pica i = InPicas i

{-| prc - shorthand constructor for type Percent.
-}
prc : Int -> Length
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
padding : Int -> (Int -> Length) -> (CSSKey,CSSValue)
padding x f = ("padding", serializeLength (f x))

{-| padding_ - shorthand for providing lengths to padding for use with animation.
 Example: padding_ 10 px 20 px
-}
padding_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
padding_ x f y g = ("padding", serializeLength (f x), serializeLength (g y))


{-| paddingTop - shorthand for providing lengths to padding-top.
 Example: paddingTop 10 px
-}
paddingTop : Int -> (Int -> Length) -> (CSSKey,CSSValue)
paddingTop x f = ("padding-top", serializeLength (f x))

{-| paddingTop_ - shorthand for providing lengths to padding-top for use with animation.
 Example: paddingTop_ 10 px 20 px
-}
paddingTop_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
paddingTop_ x f y g = ("padding-top", serializeLength (f x), serializeLength (g y))


{-| paddingBottom - shorthand for providing lengths to padding-bottom.
 Example: paddingBottom 10 px
-}
paddingBottom : Int -> (Int -> Length) -> (CSSKey,CSSValue)
paddingBottom x f = ("padding-bottom", serializeLength (f x))

{-| paddingBottom_ - shorthand for providing lengths to padding-bottom for use with animation.
 Example: paddingBottom_ 10 px 20 px
-}
paddingBottom_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
paddingBottom_ x f y g = ("padding-bottom", serializeLength (f x), serializeLength (g y))


{-| paddingLeft - shorthand for providing lengths to padding-left.
 Example: paddingLeft 10 px
-}
paddingLeft : Int -> (Int -> Length) -> (CSSKey,CSSValue)
paddingLeft x f = ("padding-left", serializeLength (f x))

{-| paddingLeft_ - shorthand for providing lengths to padding-left for use with animation.
 Example: paddingLeft_ 10 px 20 px
-}
paddingLeft_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
paddingLeft_ x f y g = ("padding-left", serializeLength (f x), serializeLength (g y))


{-| paddingRight - shorthand for providing lengths to padding-right.
 Example: paddingRight 10 px
-}
paddingRight : Int -> (Int -> Length) -> (CSSKey,CSSValue)
paddingRight x f = ("padding-right", serializeLength (f x))

{-| paddingRight_ - shorthand for providing lengths to padding-right for use with animation.
 Example: paddingRight_ 10 px 20 px
-}
paddingRight_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
paddingRight_ x f y g = ("padding-right", serializeLength (f x), serializeLength (g y))


{-| margin - shorthand for providing lengths to margin.
 Example: margin 10 px
-}
margin : Int -> (Int -> Length) -> (CSSKey,CSSValue)
margin x f = ("margin", serializeLength (f x))

{-| margin_ - shorthand for providing lengths to margin for use with animation.
 Example: margin_ 10 px 20 px
-}
margin_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
margin_ x f y g = ("margin", serializeLength (f x), serializeLength (g y))


{-| marginTop - shorthand for providing lengths to margin-top.
 Example: marginTop 10 px
-}
marginTop : Int -> (Int -> Length) -> (CSSKey,CSSValue)
marginTop x f = ("margin-top", serializeLength (f x))

{-| marginTop_ - shorthand for providing lengths to margin-top for use with animation.
 Example: marginTop_ 10 px 20 px
-}
marginTop_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
marginTop_ x f y g = ("margin-top", serializeLength (f x), serializeLength (g y))


{-| marginBottom - shorthand for providing lengths to margin-bottom.
 Example: marginBottom 10 px
-}
marginBottom : Int -> (Int -> Length) -> (CSSKey,CSSValue)
marginBottom x f = ("margin-bottom", serializeLength (f x))

{-| marginBottom_ - shorthand for providing lengths to margin-bottom for use with animation.
 Example: marginBottom_ 10 px 20 px
-}
marginBottom_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
marginBottom_ x f y g = ("margin-bottom", serializeLength (f x), serializeLength (g y))


{-| marginLeft - shorthand for providing lengths to margin-left.
 Example: marginLeft 10 px
-}
marginLeft : Int -> (Int -> Length) -> (CSSKey,CSSValue)
marginLeft x f = ("margin-left", serializeLength (f x))

{-| marginLeft_ - shorthand for providing lengths to margin-left for use with animation.
 Example: marginLeft_ 10 px 20 px
-}
marginLeft_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
marginLeft_ x f y g = ("margin-left", serializeLength (f x), serializeLength (g y))


{-| marginRight - shorthand for providing lengths to margin-right.
 Example: marginRight 10 px
-}
marginRight : Int -> (Int -> Length) -> (CSSKey,CSSValue)
marginRight x f = ("margin-right", serializeLength (f x))

{-| marginRight_ - shorthand for providing lengths to margin-right for use with animation.
 Example: marginRight_ 10 px 20 px
-}
marginRight_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
marginRight_ x f y g = ("margin-right", serializeLength (f x), serializeLength (g y))


{-| fontSize - shorthand for providing lengths to font-size.
 Example: fontSize 10 px
-}
fontSize : Int -> (Int -> Length) -> (CSSKey,CSSValue)
fontSize x f = ("font-size", serializeLength (f x))

{-| fontSize_ - shorthand for providing lengths to font-size for use with animation.
 Example: fontSize_ 10 px 20 px
-}
fontSize_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
fontSize_ x f y g = ("font-size", serializeLength (f x), serializeLength (g y))


{-| height - shorthand for providing lengths to height.
 Example: height 10 px
-}
height : Int -> (Int -> Length) -> (CSSKey,CSSValue)
height x f = ("height", serializeLength (f x))

{-| height_ - shorthand for providing lengths to height for use with animation.
 Example: height_ 10 px 20 px
-}
height_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
height_ x f y g = ("height", serializeLength (f x), serializeLength (g y))


{-| minHeight - shorthand for providing lengths to min-height.
 Example: minHeight 10 px
-}
minHeight : Int -> (Int -> Length) -> (CSSKey,CSSValue)
minHeight x f = ("min-height", serializeLength (f x))

{-| minHeight_ - shorthand for providing lengths to min-height for use with animation.
 Example: minHeight_ 10 px 20 px
-}
minHeight_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
minHeight_ x f y g = ("min-height", serializeLength (f x), serializeLength (g y))


{-| maxHeight - shorthand for providing lengths to max-height.
 Example: maxHeight 10 px
-}
maxHeight : Int -> (Int -> Length) -> (CSSKey,CSSValue)
maxHeight x f = ("max-height", serializeLength (f x))

{-| maxHeight_ - shorthand for providing lengths to max-height for use with animation.
 Example: maxHeight_ 10 px 20 px
-}
maxHeight_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
maxHeight_ x f y g = ("max-height", serializeLength (f x), serializeLength (g y))


{-| width - shorthand for providing lengths to width.
 Example: width 10 px
-}
width : Int -> (Int -> Length) -> (CSSKey,CSSValue)
width x f = ("width", serializeLength (f x))

{-| width_ - shorthand for providing lengths to width for use with animation.
 Example: width_ 10 px 20 px
-}
width_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
width_ x f y g = ("width", serializeLength (f x), serializeLength (g y))


{-| borderTopWidth - shorthand for providing lengths to border-top-width.
 Example: borderTopWidth 10 px
-}
borderTopWidth : Int -> (Int -> Length) -> (CSSKey,CSSValue)
borderTopWidth x f = ("border-top-width", serializeLength (f x))

{-| borderTopWidth_ - shorthand for providing lengths to border-top-width for use with animation.
 Example: borderTopWidth_ 10 px 20 px
-}
borderTopWidth_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
borderTopWidth_ x f y g = ("border-top-width", serializeLength (f x), serializeLength (g y))


{-| borderBottomWidth - shorthand for providing lengths to border-bottom-width.
 Example: borderBottomWidth 10 px
-}
borderBottomWidth : Int -> (Int -> Length) -> (CSSKey,CSSValue)
borderBottomWidth x f = ("border-bottom-width", serializeLength (f x))

{-| borderBottomWidth_ - shorthand for providing lengths to border-bottom-width for use with animation.
 Example: borderBottomWidth_ 10 px 20 px
-}
borderBottomWidth_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
borderBottomWidth_ x f y g = ("border-bottom-width", serializeLength (f x), serializeLength (g y))


{-| borderLeftWidth - shorthand for providing lengths to border-left-width.
 Example: borderLeftWidth 10 px
-}
borderLeftWidth : Int -> (Int -> Length) -> (CSSKey,CSSValue)
borderLeftWidth x f = ("border-left-width", serializeLength (f x))

{-| borderLeftWidth_ - shorthand for providing lengths to border-left-width for use with animation.
 Example: borderLeftWidth_ 10 px 20 px
-}
borderLeftWidth_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
borderLeftWidth_ x f y g = ("border-left-width", serializeLength (f x), serializeLength (g y))


{-| borderRightWidth - shorthand for providing lengths to border-right-width.
 Example: borderRightWidth 10 px
-}
borderRightWidth : Int -> (Int -> Length) -> (CSSKey,CSSValue)
borderRightWidth x f = ("border-right-width", serializeLength (f x))

{-| borderRightWidth_ - shorthand for providing lengths to border-right-width for use with animation.
 Example: borderRightWidth_ 10 px 20 px
-}
borderRightWidth_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
borderRightWidth_ x f y g = ("border-right-width", serializeLength (f x), serializeLength (g y))


{-| letterSpacing - shorthand for providing lengths to letter-spacing.
 Example: letterSpacing 10 px
-}
letterSpacing : Int -> (Int -> Length) -> (CSSKey,CSSValue)
letterSpacing x f = ("letter-spacing", serializeLength (f x))

{-| letterSpacing_ - shorthand for providing lengths to letter-spacing for use with animation.
 Example: letterSpacing_ 10 px 20 px
-}
letterSpacing_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
letterSpacing_ x f y g = ("letter-spacing", serializeLength (f x), serializeLength (g y))


{-| textIndent - shorthand for providing lengths to text-indent.
 Example: textIndent 10 px
-}
textIndent : Int -> (Int -> Length) -> (CSSKey,CSSValue)
textIndent x f = ("text-indent", serializeLength (f x))

{-| textIndent_ - shorthand for providing lengths to text-indent for use with animation.
 Example: textIndent_ 10 px 20 px
-}
textIndent_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
textIndent_ x f y g = ("text-indent", serializeLength (f x), serializeLength (g y))


{-| wordSpacing - shorthand for providing lengths to word-spacing.
 Example: wordSpacing 10 px
-}
wordSpacing : Int -> (Int -> Length) -> (CSSKey,CSSValue)
wordSpacing x f = ("word-spacing", serializeLength (f x))

{-| wordSpacing_ - shorthand for providing lengths to word-spacing for use with animation.
 Example: wordSpacing_ 10 px 20 px
-}
wordSpacing_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
wordSpacing_ x f y g = ("word-spacing", serializeLength (f x), serializeLength (g y))


{-| borderRadius - shorthand for providing lengths to border-radius.
 Example: borderRadius 10 px
-}
borderRadius : Int -> (Int -> Length) -> (CSSKey,CSSValue)
borderRadius x f = ("border-radius", serializeLength (f x))

{-| borderRadius_ - shorthand for providing lengths to border-radius for use with animation.
 Example: borderRadius_ 10 px 20 px
-}
borderRadius_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
borderRadius_ x f y g = ("border-radius", serializeLength (f x), serializeLength (g y))


{-| borderTopLeftRadius - shorthand for providing lengths to border-top-left-radius.
 Example: borderTopLeftRadius 10 px
-}
borderTopLeftRadius : Int -> (Int -> Length) -> (CSSKey,CSSValue)
borderTopLeftRadius x f = ("border-top-left-radius", serializeLength (f x))

{-| borderTopLeftRadius_ - shorthand for providing lengths to border-top-left-radius for use with animation.
 Example: borderTopLeftRadius_ 10 px 20 px
-}
borderTopLeftRadius_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
borderTopLeftRadius_ x f y g = ("border-top-left-radius", serializeLength (f x), serializeLength (g y))


{-| borderBottomLeftRadius - shorthand for providing lengths to border-bottom-left-radius.
 Example: borderBottomLeftRadius 10 px
-}
borderBottomLeftRadius : Int -> (Int -> Length) -> (CSSKey,CSSValue)
borderBottomLeftRadius x f = ("border-bottom-left-radius", serializeLength (f x))

{-| borderBottomLeftRadius_ - shorthand for providing lengths to border-bottom-left-radius for use with animation.
 Example: borderBottomLeftRadius_ 10 px 20 px
-}
borderBottomLeftRadius_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
borderBottomLeftRadius_ x f y g = ("border-bottom-left-radius", serializeLength (f x), serializeLength (g y))


{-| borderTopRightRadius - shorthand for providing lengths to border-top-right-radius.
 Example: borderTopRightRadius 10 px
-}
borderTopRightRadius : Int -> (Int -> Length) -> (CSSKey,CSSValue)
borderTopRightRadius x f = ("border-top-right-radius", serializeLength (f x))

{-| borderTopRightRadius_ - shorthand for providing lengths to border-top-right-radius for use with animation.
 Example: borderTopRightRadius_ 10 px 20 px
-}
borderTopRightRadius_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
borderTopRightRadius_ x f y g = ("border-top-right-radius", serializeLength (f x), serializeLength (g y))


{-| borderBottomRightRadius - shorthand for providing lengths to border-bottom-right-radius.
 Example: borderBottomRightRadius 10 px
-}
borderBottomRightRadius : Int -> (Int -> Length) -> (CSSKey,CSSValue)
borderBottomRightRadius x f = ("border-bottom-right-radius", serializeLength (f x))

{-| borderBottomRightRadius_ - shorthand for providing lengths to border-bottom-right-radius for use with animation.
 Example: borderBottomRightRadius_ 10 px 20 px
-}
borderBottomRightRadius_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
borderBottomRightRadius_ x f y g = ("border-bottom-right-radius", serializeLength (f x), serializeLength (g y))


{-| borderWidth - shorthand for providing lengths to border-width.
 Example: borderWidth 10 px
-}
borderWidth : Int -> (Int -> Length) -> (CSSKey,CSSValue)
borderWidth x f = ("border-width", serializeLength (f x))

{-| borderWidth_ - shorthand for providing lengths to border-width for use with animation.
 Example: borderWidth_ 10 px 20 px
-}
borderWidth_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
borderWidth_ x f y g = ("border-width", serializeLength (f x), serializeLength (g y))


{-| bottom - shorthand for providing lengths to bottom.
 Example: bottom 10 px
-}
bottom : Int -> (Int -> Length) -> (CSSKey,CSSValue)
bottom x f = ("bottom", serializeLength (f x))

{-| bottom_ - shorthand for providing lengths to bottom for use with animation.
 Example: bottom_ 10 px 20 px
-}
bottom_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
bottom_ x f y g = ("bottom", serializeLength (f x), serializeLength (g y))


{-| top - shorthand for providing lengths to top.
 Example: top 10 px
-}
top : Int -> (Int -> Length) -> (CSSKey,CSSValue)
top x f = ("top", serializeLength (f x))

{-| top_ - shorthand for providing lengths to top for use with animation.
 Example: top_ 10 px 20 px
-}
top_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
top_ x f y g = ("top", serializeLength (f x), serializeLength (g y))


{-| left - shorthand for providing lengths to left.
 Example: left 10 px
-}
left : Int -> (Int -> Length) -> (CSSKey,CSSValue)
left x f = ("left", serializeLength (f x))

{-| left_ - shorthand for providing lengths to left for use with animation.
 Example: left_ 10 px 20 px
-}
left_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
left_ x f y g = ("left", serializeLength (f x), serializeLength (g y))


{-| right - shorthand for providing lengths to right.
 Example: right 10 px
-}
right : Int -> (Int -> Length) -> (CSSKey,CSSValue)
right x f = ("right", serializeLength (f x))

{-| right_ - shorthand for providing lengths to right for use with animation.
 Example: right_ 10 px 20 px
-}
right_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
right_ x f y g = ("right", serializeLength (f x), serializeLength (g y))


{-| lineHeight - shorthand for providing lengths to line-height.
 Example: lineHeight 10 px
-}
lineHeight : Int -> (Int -> Length) -> (CSSKey,CSSValue)
lineHeight x f = ("line-height", serializeLength (f x))

{-| lineHeight_ - shorthand for providing lengths to line-height for use with animation.
 Example: lineHeight_ 10 px 20 px
-}
lineHeight_ : Int -> (Int -> Length) -> Int -> (Int -> Length) -> (CSSKey,CSSValue,CSSValue)
lineHeight_ x f y g = ("line-height", serializeLength (f x), serializeLength (g y))



{-| color - shorthand for providing colors to color.
 Example: color blue
-}
color : Color -> (CSSKey,CSSValue)
color x = ("color", cssColor x)

{-| color_ - shorthand for providing colors to color for use with animation.
 Example: color_ black blue
-}
color_ : Color -> Color -> (CSSKey,CSSValue,CSSValue)
color_ x y = ("color", cssColor x, cssColor y)


{-| backgroundColor - shorthand for providing colors to background-color.
 Example: backgroundColor blue
-}
backgroundColor : Color -> (CSSKey,CSSValue)
backgroundColor x = ("background-color", cssColor x)

{-| backgroundColor_ - shorthand for providing colors to background-color for use with animation.
 Example: backgroundColor_ black blue
-}
backgroundColor_ : Color -> Color -> (CSSKey,CSSValue,CSSValue)
backgroundColor_ x y = ("background-color", cssColor x, cssColor y)


{-| borderColor - shorthand for providing colors to border-color.
 Example: borderColor blue
-}
borderColor : Color -> (CSSKey,CSSValue)
borderColor x = ("border-color", cssColor x)

{-| borderColor_ - shorthand for providing colors to border-color for use with animation.
 Example: borderColor_ black blue
-}
borderColor_ : Color -> Color -> (CSSKey,CSSValue,CSSValue)
borderColor_ x y = ("border-color", cssColor x, cssColor y)


{-| borderLeftColor - shorthand for providing colors to border-left-color.
 Example: borderLeftColor blue
-}
borderLeftColor : Color -> (CSSKey,CSSValue)
borderLeftColor x = ("border-left-color", cssColor x)

{-| borderLeftColor_ - shorthand for providing colors to border-left-color for use with animation.
 Example: borderLeftColor_ black blue
-}
borderLeftColor_ : Color -> Color -> (CSSKey,CSSValue,CSSValue)
borderLeftColor_ x y = ("border-left-color", cssColor x, cssColor y)


{-| borderRightColor - shorthand for providing colors to border-right-color.
 Example: borderRightColor blue
-}
borderRightColor : Color -> (CSSKey,CSSValue)
borderRightColor x = ("border-right-color", cssColor x)

{-| borderRightColor_ - shorthand for providing colors to border-right-color for use with animation.
 Example: borderRightColor_ black blue
-}
borderRightColor_ : Color -> Color -> (CSSKey,CSSValue,CSSValue)
borderRightColor_ x y = ("border-right-color", cssColor x, cssColor y)


{-| borderTopColor - shorthand for providing colors to border-top-color.
 Example: borderTopColor blue
-}
borderTopColor : Color -> (CSSKey,CSSValue)
borderTopColor x = ("border-top-color", cssColor x)

{-| borderTopColor_ - shorthand for providing colors to border-top-color for use with animation.
 Example: borderTopColor_ black blue
-}
borderTopColor_ : Color -> Color -> (CSSKey,CSSValue,CSSValue)
borderTopColor_ x y = ("border-top-color", cssColor x, cssColor y)


{-| borderBottomColor - shorthand for providing colors to border-bottom-color.
 Example: borderBottomColor blue
-}
borderBottomColor : Color -> (CSSKey,CSSValue)
borderBottomColor x = ("border-bottom-color", cssColor x)

{-| borderBottomColor_ - shorthand for providing colors to border-bottom-color for use with animation.
 Example: borderBottomColor_ black blue
-}
borderBottomColor_ : Color -> Color -> (CSSKey,CSSValue,CSSValue)
borderBottomColor_ x y = ("border-bottom-color", cssColor x, cssColor y)


{-| outlineColor - shorthand for providing colors to outline-color.
 Example: outlineColor blue
-}
outlineColor : Color -> (CSSKey,CSSValue)
outlineColor x = ("outline-color", cssColor x)

{-| outlineColor_ - shorthand for providing colors to outline-color for use with animation.
 Example: outlineColor_ black blue
-}
outlineColor_ : Color -> Color -> (CSSKey,CSSValue,CSSValue)
outlineColor_ x y = ("outline-color", cssColor x, cssColor y)


{-| BorderStyle - static type enumeration
-}
type BorderStyle =
      Solid
    | Dotted
    | Dashed
    | Double
    | Groove
    | Ridge
    | Inset
    | Outset

{-| BorderStyleSerializer - serializer for BorderStyle
-}
borderStyleSerializer : BorderStyle -> String
borderStyleSerializer x = case x of
    Solid -> "Solid"
    Dotted -> "Dotted"
    Dashed -> "Dashed"
    Double -> "Double"
    Groove -> "Groove"
    Ridge -> "Ridge"
    Inset -> "Inset"
    Outset -> "Outset"

{-| solid - shorthand constructor for CSSOptional Solid
-}
solid : CssOptionalValue BorderStyle
solid = CssOptionalJust Solid

{-| dotted - shorthand constructor for CSSOptional Dotted
-}
dotted : CssOptionalValue BorderStyle
dotted = CssOptionalJust Dotted

{-| dashed - shorthand constructor for CSSOptional Dashed
-}
dashed : CssOptionalValue BorderStyle
dashed = CssOptionalJust Dashed

{-| double - shorthand constructor for CSSOptional Double
-}
double : CssOptionalValue BorderStyle
double = CssOptionalJust Double

{-| groove - shorthand constructor for CSSOptional Groove
-}
groove : CssOptionalValue BorderStyle
groove = CssOptionalJust Groove

{-| ridge - shorthand constructor for CSSOptional Ridge
-}
ridge : CssOptionalValue BorderStyle
ridge = CssOptionalJust Ridge

{-| inset - shorthand constructor for CSSOptional Inset
-}
inset : CssOptionalValue BorderStyle
inset = CssOptionalJust Inset

{-| outset - shorthand constructor for CSSOptional Outset
-}
outset : CssOptionalValue BorderStyle
outset = CssOptionalJust Outset


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

{-| opacity_ - two-state opacity for animation. Example: opacity_ 0.5 1.0
-}
opacity_ : Float -> Float -> (CSSKey,CSSValue,CSSValue)
opacity_ x y = ("opacity",toString x,toString y)

{-| borderStyle - optional border style. Example: borderStyle solid
-}
borderStyle : CssOptionalValue BorderStyle -> (CSSKey,CSSValue)
borderStyle x = ("border-style",serializeCssOptionalValue x borderStyleSerializer)

{-| border - shorthand syntax. Example: border 10 px solid white
-}
border : Int -> (Int -> Length) -> CssOptionalValue BorderStyle -> Color -> (CSSKey,CSSValue)
border w f s c =
    ("border", (serializeLength (f w)) ++ " "
     ++ (serializeCssOptionalValue s borderStyleSerializer) ++ " "
     ++ (cssColor c))
