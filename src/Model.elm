module Model exposing (..)

import Material exposing (model)


-- MODEL


type alias Model =
    { count : Int
    , mdl :
        Material.Model

    -- Boilerplate: model store for any and all Mdl components you use.
    , selectedTab : Int
    }


model : Model
model =
    { count = 0
    , mdl =
        Material.Model
    , selectedTab = 0
    }
