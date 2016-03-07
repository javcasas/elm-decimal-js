import codecs
import requests

single_param_operations = [
    # Operations that receive a Decimal and return a Decimal
    "abs", "acos", "acosh", "asin", "asinh", "atan", "atanh",
    "cbrt", "ceil", "cos", "cosh", "exp", "floor", "ln", "log2",
    "log10", "neg", "round", "sin", "sinh", "sqrt", "tan", "tanh", "trunc",
    "absoluteValue", "cosine", "cubeRoot", "hyperbolicCosine",
    "hyperbolicSine", "hyperbolicTangent", "inverseCosine",
    "inverseHyperbolicCosine", "inverseHyperbolicSine",
    "inverseHyperbolicTangent", "inverseSine", "inverseTangent",
    "naturalExponential", "naturalLogarithm", "negated", "sine",
    "squareRoot", "tangent", "truncated",
]
two_param_operations = [
    # Operations that receive two Decimals and return a single Decimal
    "add", "atan2", "div", "log", "mod", "mul", "pow", "sub",
]

boolean_operations = [
    # Operations that convert a Decimal into a Bool
    "isFinite", "isInteger", "isInt", "isNaN", "isNegative", "isNeg",
    "isPositive", "isPos", "isZero",
]

compare_operations = [
    # Operations that convert two Decimals into a Bool
    "greaterThan", "gt", "greaterThanOrEqualTo", "gte",
    "lessThan", "lt", "lessThanOrEqualTo", "lte", "equals", "eq",
]

# name, elm signature, js operation
custom_bindings = [
    ("fromNumber", "number -> Decimal", "Decimal"),
    ("withDecimalsToFixed", "Int -> Decimal -> String",
        "F2(function(dp, d) {return d.toFixed(dp);})"),

    # JS Properties
    ("precision", "Decimal -> Int",
        "function(d) {return d.precision;}"),
    ("rounding", "Decimal -> Int",
        "function(d) {return d.rounding;}"),
    ("minE", "Decimal -> Int",
        "function(d) {return d.minE;}"),
    ("maxE", "Decimal -> Int",
        "function(d) {return d.maxE;}"),
    ("toExpNeg", "Decimal -> Int",
        "function(d) {return d.toExpNeg;}"),
    ("toExpPos", "Decimal -> Int",
        "function(d) {return d.toExpPos;}"),
    ("modulo", "Decimal -> Int",
        "function(d) {return d.modulo;}"),

    # Clone
    ("customDecimalFromNumber", """{ precision: Int,
    rounding: Int,
    toExpNeg: Int,
    toExpPos: Int,
    maxE: number,
    minE: number,
    modulo: Int,
    crypto: Bool
    } -> number -> Decimal
""",
        "function(config) {return Decimal.clone(config);}"),

    # To String
    ("toString", "Decimal -> String",
        "function(d) {return d.toString();}"),
    ("valueOf", "Decimal -> String",
        "function(d) {return d.valueOf();}"),
]

decimal_js_url = "https://raw.githubusercontent.com/MikeMcl/decimal.js/master/decimal.js"

###############################################
# Native module generation (Native.Decimal)
###############################################
native_module_template = u"""
// -------------------------------------------------------
// Begin decimal.js, copied from {decimal_js_url}
// See https://github.com/MikeMcl/decimal.js for usage, ownership & other stuff
// -------------------------------------------------------
{decimal_js}
// -------------------------------------------------------
// End decimal.js
// -------------------------------------------------------

Elm.Native.Decimal = {{}};
Elm.Native.Decimal.make = function(localRuntime) {{
    localRuntime.Native = localRuntime.Native || {{}};
    localRuntime.Native.Decimal = localRuntime.Native.Decimal || {{}};
    if (localRuntime.Native.Decimal.values)
    {{
        return localRuntime.Native.Decimal.values;
    }}

    var Utils = Elm.Native.Utils.make(localRuntime);

    return localRuntime.Native.Decimal.values = {{
{methods}
    }};
}};
"""


def gen_native():
    decimal_js = requests.get(decimal_js_url).text
    methods = []
    methods.extend(["        {op}: function(d) {{return d.{op}();}}".format(op=op)
                    for op in single_param_operations + boolean_operations])
    methods.extend(["        {op}: F2(function(a, b) {{return a.{op}(b);}})".format(op=op)
                    for op in two_param_operations + compare_operations])
    methods.extend(["        {name}: {op}".format(name=name, op=js_op)
                    for (name, elm_sign, js_op) in custom_bindings])
    methods.append("        Decimal: Decimal")
    methods_data = ",\n".join(methods)

    with codecs.open("src/Native/Decimal.js", "w", encoding='utf-8') as result:
        result.write(native_module_template.format(
            decimal_js_url=decimal_js_url,
            decimal_js=decimal_js,
            methods=methods_data))


###############################################
# Elm module generation (Data.Decimal)
###############################################
elm_module_template = """
module Data.Decimal (
{exports}
    ) where

{{- This module is automatically generated. Use gen_base.py to generate it -}}

{{-| Elm bindings for decimal.js
{documentation}
-}}

import Native.Decimal

{{-| Decimal type with arbitrary precision
-}}
type Decimal = Decimal

{operations}
"""


def gen_binding(name, signature):
    """
    Generates a binding for a single method with the specified signature
    """
    return """
{{-| {name}
-}}
{name} : {signature}
{name} = Native.Decimal.{name}
""".format(name=name, signature=signature)


def gen_bindings():
    all_operations = (
        single_param_operations +
        two_param_operations +
        [t[0] for t in custom_bindings] +
        ["Decimal"])

    exports = ",\n".join(["    {}".format(op) for op in all_operations])
    general_documentation = "\n".join(["@docs {}".format(op)
                                       for op in all_operations])

    operations = []
    operations.extend([gen_binding(op, "Decimal -> Decimal")
                       for op in single_param_operations])
    operations.extend([gen_binding(op, "Decimal -> Bool")
                       for op in boolean_operations])
    operations.extend([gen_binding(op, "Decimal -> Decimal -> Decimal")
                       for op in two_param_operations])
    operations.extend([gen_binding(op, "Decimal -> Decimal -> Bool")
                       for op in compare_operations])
    operations.extend([gen_binding(op, sign)
                       for (op, sign, js_op) in custom_bindings])

    operations = "".join(operations)
    with open("src/Data/Decimal.elm", "w") as result:
        result.write(
            elm_module_template.format(
                exports=exports,
                documentation=general_documentation,
                operations=operations))


if __name__ == '__main__':
    gen_native()
    gen_bindings()
