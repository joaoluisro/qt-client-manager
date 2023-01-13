import QtQuick 2.9
import QtQuick.Window 2.15
import QtQuick.Controls 2.2

import assets 1.0


Rectangle {
    property bool isCollapsed: true

    id: navigationBar
    anchors {
        top: parent.top
        bottom: parent.bottom
        left: parent.left
    }
    width: isCollapsed ? Style.widthNavigationBarCollapsed : Style.heightNavigationBarExpanded
    height: parent.height
    color: Style.colourNavigationBarBackground
    Column {


        Button {
            NavigationButton{
                iconCharacter:"\uf0c9"
                description: "description"
            }
        }

        Button{
            NavigationButton{
                iconCharacter:"\uf015"
                description: "description"

            }
            onClicked: masterController.ui_navigationController.goDashboardView()
        }

        Button{
            NavigationButton{
                iconCharacter: "\uf004"
                description: "description"
            }
            onClicked: masterController.ui_navigationController.goFindClientView()

        }

        Button {
            NavigationButton {
                iconCharacter: "\uf11a"
                description: "Description"
            }
            onClicked: masterController.ui_navigationController.goCreateClientView()
        }
    }
}


