import QtQuick 2.0

Item {
//    property alias playlistButtonStatus: ...
    signal clickPlaylistButton
    Image {
        id: headerItem
        source: "qrc:/Image_Low_Dpi/title.png"
        SwitchButton {
            id: playlist_button
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.verticalCenter: parent.verticalCenter
            icon_off: "qrc:/Image_Low_Dpi/drawer.png"
            icon_on: "qrc:/Image_Low_Dpi/back.png"
            onClicked: {
//                ...
            }
        }
        Text {
            anchors.left: playlist_button.right
            anchors.leftMargin: 5
            anchors.verticalCenter: parent.verticalCenter
            verticalAlignment: Text.AlignVCenter
//            text: ...
            color: "white"
            font.pixelSize: 32
        }
        Text {
            id: headerTitleText
//            text: ...
            anchors.centerIn: parent
            color: "white"
            font.pixelSize: 46
        }
        Image {
            id: vn_flag
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter
            width: 50
            height: 50
            source: "qrc:/Image_Low_Dpi/vn.png"
            Rectangle{
                width: 50
                height: 30
                anchors.verticalCenter: parent.verticalCenter
                border.color: "gray"
                border.width: 3
                color: "transparent"
//                visible: ...
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
//                    ...
                }
            }
        }
        Image {
            id: us_flag
            anchors.right: vn_flag.left
            anchors.rightMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            width: 50
            height: 50
            source: "qrc:/Image_Low_Dpi/us.png"
            Rectangle{
                width: 50
                height: 30
                anchors.verticalCenter: parent.verticalCenter
                border.color: "gray"
                border.width: 3
                color: "transparent"
//                visible: ...
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
//                    ...
                }
            }
        }
    }
}
