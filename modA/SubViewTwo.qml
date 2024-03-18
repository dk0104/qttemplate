import QtQuick 2.15
import QtQuick.Controls
import Moda

Item {

    Row {
        Button {
            id: _testBotoon
            text: "Test1"
            onClicked: {
                _subController.status = true
            }
        }
        Button {

        }
    }

    SubController {
        id: _subController
    }
}
