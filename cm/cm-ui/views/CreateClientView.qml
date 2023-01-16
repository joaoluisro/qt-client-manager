import QtQuick 2.9

import assets 1.0
import components 1.0
Item{

    Rectangle{
        color: Style.colourBackground
        anchors.fill: parent
        anchors.margins: 20
    }
    CommandBar {
        commandList:
            masterController.ui_commandController.ui_createClientViewContextCommands
    }
}
