import QtQuick 2.15
import QtQuick.Controls
import Moda

Item {
    Button {
        id: _testBotoon
        text: "Test1"
        onClicked: {
            _subController.status = true
        }
    }

    SubController {
        id: _subController
    }
}
