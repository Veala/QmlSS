import QtQuick 2.4

Rectangle {
    id: page1
    anchors.fill: parent
    color: "green"
    signal signalFuck1(string msg)
    function textChange1(msg) {
        text.text = msg
    }

    Component.onCompleted: {
        console.log("completed1")
    }
    Component.onDestruction: {
        console.log("destructed1")
    }

    Text {
        id:text
        font.pixelSize: 20
        anchors.centerIn: parent
        text: "green"
    }
    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.AllButtons
        onClicked: {
            if (mouse.button == Qt.LeftButton) {
                console.log("left")
                stack.toPage2()
            } else if (mouse.button == Qt.RightButton) {
                console.log("right")
                signalFuck1("LSD")
            }
        }
    }
}

