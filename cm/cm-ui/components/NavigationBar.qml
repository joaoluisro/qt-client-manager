import QtQuick 2.9
import QtQuick.Window 2.2
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
    Rectangle{
        anchors.fill: parent
        color: Style.colourNavigationBarBackground
        Column {
            width: parent.width
            NavigationButton{
                iconCharacter: "\uf0c9"
                description: ""
                hoverColour: "#993333"
                onNavigationButtonClicked: isCollapsed = !isCollapsed
            }

            NavigationButton{
                iconCharacter:"\uf015"
                description: "Dashboard"
                onNavigationButtonClicked: masterController.ui_navigationController.goDashboardView()
            }

            NavigationButton{
                iconCharacter: "\uf004"
                description: "New Client"
                onNavigationButtonClicked: masterController.ui_navigationController.goFindClientView()
            }

            NavigationButton {
                iconCharacter: "\uf11a"
                description: "Find Client"
                onNavigationButtonClicked: masterController.ui_navigationController.goCreateClientView()
            }


        }
    }


}


