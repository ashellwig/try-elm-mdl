module Msg exposing (..)

import Material exposing (Msg)
import Model exposing (..)


type Msg
    = Increase
    | Reset
    | Mdl (Material.Msg Msg)
    | SelectTab
