import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 414
    height: 736
    title: qsTr("App")



    Header {
        id: h
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: r.top
    }

    Rectangle {
        id: r
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: h.bottom
        anchors.bottom: parent.bottom
        color: "white"

        Component {
            id: contactDelegate
            Item {
                width: 414; height: 100
                Rectangle {
                    id: item_area
                    width: 100;
                    height: 100;
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    radius: 5

                    Image {
                        id: item_image
                        source: image;
                        anchors.fill: parent;
                    }
                }

                Column {
                    id: column
                    anchors.left: item_area.right
                    anchors.leftMargin: 15
                    Text { text: title; font.family: "Helvetica"; font.pointSize: 12; font.bold: true }
                    Text { text: place; font.family: "Helvetica"; font.pointSize: 10; color: "gray" }
                    Text { text: location; font.family: "Helvetica"; font.pointSize: 10; color: "gray" }
                    Text { text: distance; font.family: "Helvetica"; font.pointSize: 13; color: "black"; }
                }
            }
        }

        ListView {
            anchors.fill: r
            spacing: 8
            model: Model {}
            delegate: contactDelegate
            focus: true
            clip: true
        }
    }
}
