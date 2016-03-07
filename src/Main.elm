import Html exposing (Html, text, div)
import Data.Decimal

d = Data.Decimal.customDecimalFromNumber
    { precision = 1
    , rounding = 4
    , toExpNeg = -7
    , toExpPos = 21
    , maxE = 9e15
    , minE = -9e15
    , modulo = 1
    , crypto = False
    }

main = text ( Data.Decimal.toString (d 44.4444444))

