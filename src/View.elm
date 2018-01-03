module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, href, style)
import Material
import Material.Button as Button
import Material.Layout as Layout
import Material.Options as Options exposing (css)
import Material.Scheme
import Model exposing (..)
import Msg exposing (..)


type alias Mdl =
    Material.Model


view : Model -> Html Msg
view model =
    Material.Scheme.topWithScheme Color.Teal Color.LightGreen <|
        Layout.render Mdl
            model.mdl
            [ Layout.fixedHeader
            , Layout.selectedTab model.selectedTab
            , Layout.onSelectTab SelectTab
            ]
            { header = [ h1 [ style [ ( "padding", "2rem" ) ] ] [ text "Counter" ] ]
            , drawer = []
            , tabs = ( [ text "Milk", text "Oranges" ], [ Color.background (Color.color Color.Teal Color.S400) ] )
            , main = [ viewBody model ]
            }


viewBody : Model -> Html Msg
viewBody model =
    case model.selectedTab of
        0 ->
            viewCounter model

        1 ->
            text "something else"

        _ ->
            text "404"
