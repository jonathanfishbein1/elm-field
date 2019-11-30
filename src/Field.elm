module Field exposing
    ( Field
    , realField
    )

{-| A module for Fields


# Types

@docs Field

@docs realField

-}


{-| Field type
-}
type alias Field a =
    { zero : a
    , one : a
    , add : a -> a -> a
    , subtract : a -> a -> a
    , multiply : a -> a -> a
    , divide : a -> a -> a
    , power : Float -> a -> a
    , negate : a -> a
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
    , power = \exponent base -> base ^ exponent
    , negate = negate
    }
