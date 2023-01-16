import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

import assets 1.0

Item{

    property alias iconCharacter: textIcon.text
    property alias description: textDescription.text
    property color hoverColour: "white"
    signal navigationButtonClicked()

    width: parent.width
    height: Style.heightNavigationButton

    Rectangle{
        id: background
        anchors.fill: parent
        color: "orange"
        Row{
            Text{
                id: textIcon
                width: Style.widthNavigationButtonIcon
                height: Style.heightNavigationButtonIcon

                font: {
                    family: Style.fontAwesome
                }
                color: Style.colourNavigationBarFont
                text: "\uf007"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            Text{
                id: textDescription
                clip: true
                width: Style.widthNavigationButtonDescription
                height: Style.heightNavigationButtonDescription
                color: Style.colourNavigationBarFont
                font.pixelSize: Style.pixelSizeNavigationBarText
                verticalAlignment: Text.AlignVCenter
            }

        }
        MouseArea{
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onEntered: background.state="hover"
            onExited: background.state = ""
            onClicked: navigationButtonClicked()
        }
        states: [
            State {
                name: "hover"
                PropertyChanges {
                    target: background
                    color: hoverColour
                }
            }
        ]
    }





}


