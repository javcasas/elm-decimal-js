
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
    neg,
    round,
    sin,
    sinh,
    sqrt,
    tan,
    tanh,
    trunc,
    absoluteValue,
    cosine,
    cubeRoot,
    hyperbolicCosine,
    hyperbolicSine,
    hyperbolicTangent,
    inverseCosine,
    inverseHyperbolicCosine,
    inverseHyperbolicSine,
    inverseHyperbolicTangent,
    inverseSine,
    inverseTangent,
    naturalExponential,
    naturalLogarithm,
    negated,
    sine,
    squareRoot,
    tangent,
    truncated,
    add,
    atan2,
    div,
    log,
    mod,
    mul,
    pow,
    sub,
    fromNumber,
    withDecimalsToFixed,
    precision,
    rounding,
    minE,
    maxE,
    toExpNeg,
    toExpPos,
    modulo,
    customDecimalFromNumber,
    toString,
    valueOf,
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
@docs neg
@docs round
@docs sin
@docs sinh
@docs sqrt
@docs tan
@docs tanh
@docs trunc
@docs absoluteValue
@docs cosine
@docs cubeRoot
@docs hyperbolicCosine
@docs hyperbolicSine
@docs hyperbolicTangent
@docs inverseCosine
@docs inverseHyperbolicCosine
@docs inverseHyperbolicSine
@docs inverseHyperbolicTangent
@docs inverseSine
@docs inverseTangent
@docs naturalExponential
@docs naturalLogarithm
@docs negated
@docs sine
@docs squareRoot
@docs tangent
@docs truncated
@docs add
@docs atan2
@docs div
@docs log
@docs mod
@docs mul
@docs pow
@docs sub
@docs fromNumber
@docs withDecimalsToFixed
@docs precision
@docs rounding
@docs minE
@docs maxE
@docs toExpNeg
@docs toExpPos
@docs modulo
@docs customDecimalFromNumber
@docs toString
@docs valueOf
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

{-| neg
-}
neg : Decimal -> Decimal
neg = Native.Decimal.neg

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

{-| absoluteValue
-}
absoluteValue : Decimal -> Decimal
absoluteValue = Native.Decimal.absoluteValue

{-| cosine
-}
cosine : Decimal -> Decimal
cosine = Native.Decimal.cosine

{-| cubeRoot
-}
cubeRoot : Decimal -> Decimal
cubeRoot = Native.Decimal.cubeRoot

{-| hyperbolicCosine
-}
hyperbolicCosine : Decimal -> Decimal
hyperbolicCosine = Native.Decimal.hyperbolicCosine

{-| hyperbolicSine
-}
hyperbolicSine : Decimal -> Decimal
hyperbolicSine = Native.Decimal.hyperbolicSine

{-| hyperbolicTangent
-}
hyperbolicTangent : Decimal -> Decimal
hyperbolicTangent = Native.Decimal.hyperbolicTangent

{-| inverseCosine
-}
inverseCosine : Decimal -> Decimal
inverseCosine = Native.Decimal.inverseCosine

{-| inverseHyperbolicCosine
-}
inverseHyperbolicCosine : Decimal -> Decimal
inverseHyperbolicCosine = Native.Decimal.inverseHyperbolicCosine

{-| inverseHyperbolicSine
-}
inverseHyperbolicSine : Decimal -> Decimal
inverseHyperbolicSine = Native.Decimal.inverseHyperbolicSine

{-| inverseHyperbolicTangent
-}
inverseHyperbolicTangent : Decimal -> Decimal
inverseHyperbolicTangent = Native.Decimal.inverseHyperbolicTangent

{-| inverseSine
-}
inverseSine : Decimal -> Decimal
inverseSine = Native.Decimal.inverseSine

{-| inverseTangent
-}
inverseTangent : Decimal -> Decimal
inverseTangent = Native.Decimal.inverseTangent

{-| naturalExponential
-}
naturalExponential : Decimal -> Decimal
naturalExponential = Native.Decimal.naturalExponential

{-| naturalLogarithm
-}
naturalLogarithm : Decimal -> Decimal
naturalLogarithm = Native.Decimal.naturalLogarithm

{-| negated
-}
negated : Decimal -> Decimal
negated = Native.Decimal.negated

{-| sine
-}
sine : Decimal -> Decimal
sine = Native.Decimal.sine

{-| squareRoot
-}
squareRoot : Decimal -> Decimal
squareRoot = Native.Decimal.squareRoot

{-| tangent
-}
tangent : Decimal -> Decimal
tangent = Native.Decimal.tangent

{-| truncated
-}
truncated : Decimal -> Decimal
truncated = Native.Decimal.truncated

{-| isFinite
-}
isFinite : Decimal -> Bool
isFinite = Native.Decimal.isFinite

{-| isInteger
-}
isInteger : Decimal -> Bool
isInteger = Native.Decimal.isInteger

{-| isInt
-}
isInt : Decimal -> Bool
isInt = Native.Decimal.isInt

{-| isNaN
-}
isNaN : Decimal -> Bool
isNaN = Native.Decimal.isNaN

{-| isNegative
-}
isNegative : Decimal -> Bool
isNegative = Native.Decimal.isNegative

{-| isNeg
-}
isNeg : Decimal -> Bool
isNeg = Native.Decimal.isNeg

{-| isPositive
-}
isPositive : Decimal -> Bool
isPositive = Native.Decimal.isPositive

{-| isPos
-}
isPos : Decimal -> Bool
isPos = Native.Decimal.isPos

{-| isZero
-}
isZero : Decimal -> Bool
isZero = Native.Decimal.isZero

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

{-| greaterThan
-}
greaterThan : Decimal -> Decimal -> Bool
greaterThan = Native.Decimal.greaterThan

{-| gt
-}
gt : Decimal -> Decimal -> Bool
gt = Native.Decimal.gt

{-| greaterThanOrEqualTo
-}
greaterThanOrEqualTo : Decimal -> Decimal -> Bool
greaterThanOrEqualTo = Native.Decimal.greaterThanOrEqualTo

{-| gte
-}
gte : Decimal -> Decimal -> Bool
gte = Native.Decimal.gte

{-| lessThan
-}
lessThan : Decimal -> Decimal -> Bool
lessThan = Native.Decimal.lessThan

{-| lt
-}
lt : Decimal -> Decimal -> Bool
lt = Native.Decimal.lt

{-| lessThanOrEqualTo
-}
lessThanOrEqualTo : Decimal -> Decimal -> Bool
lessThanOrEqualTo = Native.Decimal.lessThanOrEqualTo

{-| lte
-}
lte : Decimal -> Decimal -> Bool
lte = Native.Decimal.lte

{-| equals
-}
equals : Decimal -> Decimal -> Bool
equals = Native.Decimal.equals

{-| eq
-}
eq : Decimal -> Decimal -> Bool
eq = Native.Decimal.eq

{-| fromNumber
-}
fromNumber : number -> Decimal
fromNumber = Native.Decimal.fromNumber

{-| withDecimalsToFixed
-}
withDecimalsToFixed : Int -> Decimal -> String
withDecimalsToFixed = Native.Decimal.withDecimalsToFixed

{-| precision
-}
precision : Decimal -> Int
precision = Native.Decimal.precision

{-| rounding
-}
rounding : Decimal -> Int
rounding = Native.Decimal.rounding

{-| minE
-}
minE : Decimal -> Int
minE = Native.Decimal.minE

{-| maxE
-}
maxE : Decimal -> Int
maxE = Native.Decimal.maxE

{-| toExpNeg
-}
toExpNeg : Decimal -> Int
toExpNeg = Native.Decimal.toExpNeg

{-| toExpPos
-}
toExpPos : Decimal -> Int
toExpPos = Native.Decimal.toExpPos

{-| modulo
-}
modulo : Decimal -> Int
modulo = Native.Decimal.modulo

{-| customDecimalFromNumber
-}
customDecimalFromNumber : { precision: Int,
    rounding: Int,
    toExpNeg: Int,
    toExpPos: Int,
    maxE: number,
    minE: number,
    modulo: Int,
    crypto: Bool
    } -> number -> Decimal

customDecimalFromNumber = Native.Decimal.customDecimalFromNumber

{-| toString
-}
toString : Decimal -> String
toString = Native.Decimal.toString

{-| valueOf
-}
valueOf : Decimal -> String
valueOf = Native.Decimal.valueOf

