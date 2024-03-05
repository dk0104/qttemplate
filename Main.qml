import QtQuick
import QtQuick.Window
import Qttemplate
import Moda

Window {
    width: 640
    height: 480
    visible: true

    title: qsTr("Hello World")

    SubViewTwo {
        id: _subVeiewTwo
    }
}
