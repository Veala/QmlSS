import QtQuick 2.4

Rectangle {
    id: page1
    anchors.fill: parent
    color: "green"
    signal signalFuck1(string msg)
    function textChange1(msg) {
        text.text = msg
    }

    Text {
        id:text
        font.pixelSize: 20
        anchors.centerIn: parent
        text: "green"
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (mouse.button == Qt.LeftButton)  stack.toPage2()
            else if (mouse.button == Qt.RightButton)  signalFuck1("LSD")
        }
    }
}

