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
