import QtQuick 2.6
import QtQuick.Controls 2.4

ApplicationWindow {
    visible: true
    width: 1920
    height: 1080
    visibility: "FullScreen"
    title: qsTr("Media Player")
    //Backgroud of Application
    Image {
        id: backgroud
        anchors.fill: parent
        source: "qrc:/Image_Low_Dpi/background.png"
    }
    //Header
    AppHeader{
        id: headerItem
        width: parent.width
        height: 141
//        playlistButtonStatus: ...
        onClickPlaylistButton: {
//            ...
        }
    }

    //Playlist
    PlaylistView{
        id: playlist
        y: headerItem.height
        width: 675
        height: parent.height - headerItem.height
    }

    //Media Info
    MediaInfoControl{
        id: mediaInfoControl
        anchors.top: headerItem.bottom
        anchors.right: parent.right
        anchors.left: parent.left
//        anchors.leftMargin: ...
        anchors.bottom: parent.bottom
    }
}
