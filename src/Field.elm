module Field exposing
    ( Field
    , complexField
    , realField
    )

{-| A module for Fields

# Types
@docs Field

@docs realField
@docs complexField

-}

import ComplexNumbers


{-| Field type
-}
type alias Field a =
    { zero : a
    , one : a
    , add : a -> a -> a
    , subtract : a -> a -> a
    , multiply : a -> a -> a
    , divide : a -> a -> a
    }

{-| Field for Real numbers
-}
realField : Field Float
realField =
    { zero = 0
    , one = 1
    , add = (+)
    , subtract = (-)
    , multiply = (*)
    , divide = (/)
    }

{-| Field for Complex numbers
-}
complexField : Field (ComplexNumbers.ComplexNumberCartesian Float)
complexField =
    { zero = ComplexNumbers.zero
    , one = ComplexNumbers.one
    , add = ComplexNumbers.add
    , subtract = ComplexNumbers.subtract
    , multiply = ComplexNumbers.multiply
    , divide = ComplexNumbers.divide
    }
