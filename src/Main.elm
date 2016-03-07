import Html exposing (Html, text, div)
import Data.Decimal

main = text ((Data.Decimal.withDecimalsToFixed 2 (Data.Decimal.fromInt 4)))

