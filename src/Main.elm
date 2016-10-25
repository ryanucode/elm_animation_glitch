import Html exposing (Html, div, button, text)
import Html.Attributes exposing (classList)
import Html.Events exposing (onClick)
import Html.App exposing (beginnerProgram)

type alias Model = Bool

init : Model
init = False

main = beginnerProgram
    { model = init
    , view = view
    , update = update
    }


type Msg = Toggle

update : Msg -> Model -> Model
update msg model =
    case msg of
        Toggle ->
            not model

view : Model -> Html Msg
view model =
    div []
        [ button [onClick Toggle] [text "Toggle Hidden!"]
        , div [classList [("reveal", True), ("shown", model)]] [text "Now you see me!"]
        ]


