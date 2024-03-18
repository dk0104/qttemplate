import QtQuick
import QtQuick.Controls
import Moda

Item {
    Rectangle {
        id: _mediaPlayerCanvas
        anchors.fill: parent
        Row {
            anchors.fill: parent
            Button {
                id: _playButton
                text: "Play"
                onClicked: {
                    _subController.play()
                }
            }
            Button {
                id: _stopButton
                text: "Stop"
                onClicked: {
                    _subController.stop()
                }
            }
            Button {
                text: "Pause"
                onClicked: {
                    _subController.pause()
                }
            }
        }
    }

    SubController {
        id: _subController
    }
}
