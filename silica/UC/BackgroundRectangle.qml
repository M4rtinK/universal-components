import QtQuick 2.0
import Sailfish.Silica 1.0
MouseArea {
    id : bMouse
    property color highlightedColor: Theme.rgba(Theme.highlightBackgroundColor, Theme.highlightBackgroundOpacity)
    property string normalColor : "transparent"
    property alias cornerRadius : bRectangle.radius
    // make it possible to simulate pressed state even if not physically pressed
    property bool pressed_override : false
    property int borderWidth : 0
    property color borderColor : Theme.rgba(Theme.highlightBackgroundColor, Theme.highlightBackgroundOpacity)
    implicitHeight: Theme.itemSizeSmall
    Rectangle {
        id :bRectangle
        anchors.fill : parent
        property bool clickable : false
        color: bMouse.pressed || pressed_override ? highlightedColor : normalColor
        border.width : borderWidth
        border.color : borderColor
        radius : cornerRadius
        antialiasing : cornerRadius != 0
    }
}
