import QtQuick
import Moda

Rectangle {
    id: _root
    Column {
        anchors.centerIn: parent

        Rectangle {
            id: _uiTest
            color: "Red"
            width: 100
            height: 40
            anchors.horizontalCenter: parent.horizontalCenter
        }
        AudioController {
            id: _audioController
            width: 100
            height: 40
            anchors.horizontalCenter: parent.horizontlalCenter
        }
    }
}
