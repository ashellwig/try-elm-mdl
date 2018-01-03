module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, href, style)
import Material exposing (..)
import Model exposing (..)
import Msg exposing (..)
import Update exposing (..)
import View exposing (..)


main : Program Never Model Msg
main =
    Html.program
        { init = ( model, Cmd.none )
        , view = view
        , subscriptions = always Sub.none
        , update = update
        }
