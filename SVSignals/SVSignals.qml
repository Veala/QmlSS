import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("Hello World")
    width: 640
    height: 480
    StackView {
        id: stack
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("Page1.qml")
        focus: true
        signal toPage1
        signal toPage2

        Keys.onReleased: if ((event.key === Qt.Key_1) && stack.depth > 1) {
                             stack.pop();
                             event.accepted = true;
                         }
        onToPage1: {
            stack.push(Qt.resolvedUrl("Page1.qml"))
        }
        onToPage2: {
            stack.push(Qt.resolvedUrl("Page2.qml"))
        }
    }
}
