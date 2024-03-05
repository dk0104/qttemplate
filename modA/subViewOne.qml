import QtQuick 2.15
import QtQuick.Controls
import Moda

Item {
    Button {
        text: "Button"
        onClicked: {
            SubController.status = false
        }
    }
}
