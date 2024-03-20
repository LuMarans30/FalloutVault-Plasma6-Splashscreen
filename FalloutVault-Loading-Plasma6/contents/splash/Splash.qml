import QtQuick 2.5
import QtQuick.Window 2.2

Image {
    property int currentImage:1

    anchors.fill: parent
    source: "images/frame-"+currentImage+".png"

    NumberAnimation on currentImage {
        from: 1
        to: 120
        duration: 6000
    }
}