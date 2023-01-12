import QtQuick 2.9
import QtQuick.Window 2.15
import QtQuick.Controls 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Client Management System")
    StackView {
        id: contentFrame
        anchors.fill: parent
        initialItem: "qrc:/views/SplashView.qml"
    }

    Component.onCompleted: {
        contentFrame.replace("qrc:/views/DashboardView.qml")
    }
    Rectangle {
        id: navigationBar
        anchors {
            top: parent.top
            bottom: parent.bottom
            left: parent.left
        }
        width: 100
        color: "#000000"
        Column {
            Button {
                text: "Dashboard"
                onClicked:
                masterController.ui_navigationController.goDashboardView()
            }
            Button {
                text: "New Client"
                onClicked:
                masterController.ui_navigationController.goCreateClientView()
            }
            Button {
                text: "Find Client"
                onClicked:
                masterController.ui_navigationController.goFindClientView()
            }
        }
    }
    Connections {
        target: masterController.ui_navigationController
        onGoCreateClientView:
        contentFrame.replace("qrc:/views/CreateClientView.qml")
        onGoDashboardView: contentFrame.replace("qrc:/views/DashboardView.qml")
        onGoEditClientView:
        contentFrame.replace("qrc:/views/EditClientView.qml", {selectedClient:client})
        onGoFindClientView:
        contentFrame.replace("qrc:/views/FindClientView.qml")
    }

}
