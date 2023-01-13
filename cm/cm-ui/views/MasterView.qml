import QtQuick 2.9
import QtQuick.Window 2.15
import QtQuick.Controls 2.2

import assets 1.0
import components 1.0


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Client Management System")

    StackView {
        id: contentFrame
        clip: true
        anchors.fill: parent
        initialItem: "qrc:/views/SplashView.qml"
    }

    Component.onCompleted: {
        contentFrame.replace("qrc:/views/DashboardView.qml")
    }

    NavigationBar{
        id:navigationBar
    }

    Connections {
        target: masterController.ui_navigationController
        onGoCreateClientView: contentFrame.replace("qrc:/views/CreateClientView.qml")
        onGoDashboardView: contentFrame.replace("qrc:/views/DashboardView.qml")
        onGoEditClientView: contentFrame.replace("qrc:/views/EditClientView.qml", {selectedClient:client})
        onGoFindClientView: contentFrame.replace("qrc:/views/FindClientView.qml")
    }

}
