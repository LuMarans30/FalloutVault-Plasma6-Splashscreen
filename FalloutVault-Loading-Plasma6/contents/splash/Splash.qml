import QtQuick
import QtMultimedia

Rectangle {
    id: root
    color: "black"

    MediaPlayer {
        id: player
        source: "video/anim.webm"
        videoOutput: videoOutput   
    }
    
    VideoOutput {
        id: videoOutput
        fillMode: VideoOutput.PreserveAspectCrop  
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        width: root.width
        height: root.height
    }
    
    Component.onCompleted: {
        player.play()
    }
}
