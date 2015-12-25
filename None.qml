import QtQuick 1.1

Rectangle {
    id: rectangle1
    width: 800
    height: 480
    color: "#000000"

    Text {
        id: txt_test
        width: 119
        height: 25
        color: "#ffffff"
        text: "NONE"
        font.bold: true
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
    }
}
