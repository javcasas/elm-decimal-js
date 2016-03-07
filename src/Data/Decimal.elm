module Data.Decimal
    ( Decimal
    , fromInt
    , toFixed
    , withDecimalsToFixed

    ) where

{-| Elm bindings for decimal.js

# Decimal
@docs Decimal

# From Int
@docs fromInt
@docs toFixed
@docs withDecimalsToFixed

-}
import Native.Decimal

{-| Decimal type with arbitrary precision
-}
type Decimal = Decimal

{-| fromInt
-}
fromInt : Int -> Decimal
fromInt = Native.Decimal.Decimal

{-| fromInt
-}
toFixed : Decimal -> String
toFixed = Native.Decimal.toFixed

{-| fromInt
-}
withDecimalsToFixed : Int -> Decimal -> String
withDecimalsToFixed = Native.Decimal.withDecimalsToFixed
