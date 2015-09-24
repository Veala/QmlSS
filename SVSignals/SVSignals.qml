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
        //initialItem: lPage1.item
        initialItem: Qt.resolvedUrl("Page1.qml")
        focus: true
        signal toPage1
        signal toPage2

        Loader {
            id: lPage1
            //source: Qt.resolvedUrl("Page1.qml")
            //source: "Page1.qml"
        }
        Loader {
            id: lPage2
            //source: Qt.resolvedUrl("Page2.qml")
        }
        Connections {
            target: lPage1.item
            onSignalFuck1: {
                console.log(msg)
                lPage1.item.textChange1(msg)
                lPage2.item.textChange2(msg)
            }
        }

        Keys.onReleased: if ((event.key === Qt.Key_1) && stack.depth > 1) {
                             stack.pop();
                             event.accepted = true;
                         }
        onToPage1: {
            //lPage1.source = Qt.resolvedUrl("Page1.qml")
            //stack.push(lPage1.item)
            stack.push(Qt.resolvedUrl("Page1.qml"))
        }
        onToPage2: {
            //lPage2.source = Qt.resolvedUrl("Page2.qml")
            //stack.push(lPage2.item)
            stack.push(Qt.resolvedUrl("Page2.qml"))
        }
    }
}
