import QtQuick
import QtQuick.Window
import Qttemplate

Window {
    id: _mainApplicationWindow
    width: 640
    height: 480
    visible: true

    MainContent {
        id: _mainContent
        anchors.fill: parent
    }
}
