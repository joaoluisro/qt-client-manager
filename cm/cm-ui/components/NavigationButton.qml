import QtQuick 2.9
import QtQuick.Window 2.15
import QtQuick.Controls 2.2

import assets 1.0

Rectangle{


    property alias iconCharacter: textIcon.text
    property alias description: textDescription.text

    signal navigationButtonClicked()

    property color hoverColour: Style.colourNavigationBarBackground

    states: [
        State {
            name: "hover"
            PropertyChanges {
                target: background
                color: hoverColour
            }
        }
    ]

    Row{
        MouseArea{
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onEntered: background.state = "hover"
            onExited: background.state = ""
            onClicked: navigationButtonClicked()
        }

        Text{
            id: textIcon
            width: Style.widthNavigationIcon
            height: Style.heightNavigationIcon
            font: {
                family: Style.fontAwesome
            }
            color: Style.colourNavigationBarFont
            text: "\uf007"
        }
        Text{
            width: Style.widthNavigationButtonDescription
            height: Style.heightNavigationButtonDescription
            id: textDescription
            color: Style.colourNavigationBarFont
        }
    }

}


