import QtQuick 2.4

Rectangle {
    id: page2
    anchors.fill: parent
    color: "red"
    signal signalFuck2(string msg)
    function textChange2(msg) {
        text.text = msg
    }

    Text {
        id:text
        font.pixelSize: 20
        anchors.centerIn: parent
        text: "red"
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (mouse.button == Qt.LeftButton)  stack.toPage1()
            else if (mouse.button == Qt.RightButton)  signalFuck2("Crayola")
        }
    }
}

