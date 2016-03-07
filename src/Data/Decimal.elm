
module Data.Decimal (
    abs,
    acos,
    acosh,
    asin,
    asinh,
    atan,
    atanh,
    cbrt,
    ceil,
    cos,
    cosh,
    exp,
    floor,
    ln,
    log2,
    log10,
    round,
    sin,
    sinh,
    sqrt,
    tan,
    tanh,
    trunc,
    add,
    atan2,
    div,
    log,
    mod,
    mul,
    pow,
    sub,
    fromInt,
    fromFloat,
    withDecimalsToFixed,
    Decimal
    ) where

{- This module is automatically generated. Use gen_base.py to generate it -}

{-| Elm bindings for decimal.js
@docs abs
@docs acos
@docs acosh
@docs asin
@docs asinh
@docs atan
@docs atanh
@docs cbrt
@docs ceil
@docs cos
@docs cosh
@docs exp
@docs floor
@docs ln
@docs log2
@docs log10
@docs round
@docs sin
@docs sinh
@docs sqrt
@docs tan
@docs tanh
@docs trunc
@docs add
@docs atan2
@docs div
@docs log
@docs mod
@docs mul
@docs pow
@docs sub
@docs fromInt
@docs fromFloat
@docs withDecimalsToFixed
@docs Decimal
-}

import Native.Decimal

{-| Decimal type with arbitrary precision
-}
type Decimal = Decimal


{-| abs
-}
abs : Decimal -> Decimal
abs = Native.Decimal.abs

{-| acos
-}
acos : Decimal -> Decimal
acos = Native.Decimal.acos

{-| acosh
-}
acosh : Decimal -> Decimal
acosh = Native.Decimal.acosh

{-| asin
-}
asin : Decimal -> Decimal
asin = Native.Decimal.asin

{-| asinh
-}
asinh : Decimal -> Decimal
asinh = Native.Decimal.asinh

{-| atan
-}
atan : Decimal -> Decimal
atan = Native.Decimal.atan

{-| atanh
-}
atanh : Decimal -> Decimal
atanh = Native.Decimal.atanh

{-| cbrt
-}
cbrt : Decimal -> Decimal
cbrt = Native.Decimal.cbrt

{-| ceil
-}
ceil : Decimal -> Decimal
ceil = Native.Decimal.ceil

{-| cos
-}
cos : Decimal -> Decimal
cos = Native.Decimal.cos

{-| cosh
-}
cosh : Decimal -> Decimal
cosh = Native.Decimal.cosh

{-| exp
-}
exp : Decimal -> Decimal
exp = Native.Decimal.exp

{-| floor
-}
floor : Decimal -> Decimal
floor = Native.Decimal.floor

{-| ln
-}
ln : Decimal -> Decimal
ln = Native.Decimal.ln

{-| log2
-}
log2 : Decimal -> Decimal
log2 = Native.Decimal.log2

{-| log10
-}
log10 : Decimal -> Decimal
log10 = Native.Decimal.log10

{-| round
-}
round : Decimal -> Decimal
round = Native.Decimal.round

{-| sin
-}
sin : Decimal -> Decimal
sin = Native.Decimal.sin

{-| sinh
-}
sinh : Decimal -> Decimal
sinh = Native.Decimal.sinh

{-| sqrt
-}
sqrt : Decimal -> Decimal
sqrt = Native.Decimal.sqrt

{-| tan
-}
tan : Decimal -> Decimal
tan = Native.Decimal.tan

{-| tanh
-}
tanh : Decimal -> Decimal
tanh = Native.Decimal.tanh

{-| trunc
-}
trunc : Decimal -> Decimal
trunc = Native.Decimal.trunc

{-| add
-}
add : Decimal -> Decimal -> Decimal
add = Native.Decimal.add

{-| atan2
-}
atan2 : Decimal -> Decimal -> Decimal
atan2 = Native.Decimal.atan2

{-| div
-}
div : Decimal -> Decimal -> Decimal
div = Native.Decimal.div

{-| log
-}
log : Decimal -> Decimal -> Decimal
log = Native.Decimal.log

{-| mod
-}
mod : Decimal -> Decimal -> Decimal
mod = Native.Decimal.mod

{-| mul
-}
mul : Decimal -> Decimal -> Decimal
mul = Native.Decimal.mul

{-| pow
-}
pow : Decimal -> Decimal -> Decimal
pow = Native.Decimal.pow

{-| sub
-}
sub : Decimal -> Decimal -> Decimal
sub = Native.Decimal.sub

{-| fromInt
-}
fromInt : Int -> Decimal
fromInt = Native.Decimal.fromInt

{-| fromFloat
-}
fromFloat : Float -> Decimal
fromFloat = Native.Decimal.fromFloat

{-| withDecimalsToFixed
-}
withDecimalsToFixed : Int -> Decimal -> String
withDecimalsToFixed = Native.Decimal.withDecimalsToFixed

