import QtQuick 2.0

Item {
    id:header
    height: 40

    Rectangle {
        id: text_area
        anchors.left: parent.left
        anchors.right: grid_button.left
        height: 40;
        color: "white"

        Text {
            id: text_header
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "Spots gallery"
            font.pointSize: 15
            color: "#343843"
            font.bold: true
        }
    }

    Rectangle {
        id: grid_button
        width: 40;
        height: 40;
        anchors.right: options_button.left
        anchors.rightMargin: 5
        color: "white"

        Image {
            id: grid_image
            source: "images/grid1.png";
            width: 40;
            height: 40;
            anchors.fill: parent;
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            //onClicked: { change_grid(); }
            onPressed: parent.color = "lightgray"
            onReleased: parent.color = "white"
        }
    }

    Rectangle {
        id: options_button
        width: 40;
        height: 40;
        anchors.right: parent.right
        anchors.rightMargin: 10
        color: "white"

        Image {
            id: options_image
            source: "images/option.png";
            width: 40;
            height: 40;
            anchors.fill: parent;
        }

        MouseArea {
            anchors.fill: parent
            //onClicked: { options(); }
            onPressed: parent.color = "lightgray"
            onReleased: parent.color = "white"
        }
    }
}

/*##^##
Designer {
    D{i:4;invisible:true}D{i:6;invisible:true}D{i:7;invisible:true}
}
##^##*/
