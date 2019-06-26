import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.0

FileDialog {
    id : imagePicker

    folder : shortcuts.movies

    property var selectedFiles : []

    onAccepted: {
        console.log("PlatformVideoPicker: you chose: " + imagePicker.fileUrls)
        selectedFiles = imagePicker.fileUrls
    }
    onRejected: {
        console.log("PlatformVideoPicker: canceled")
    }

    function run() {
        // similar to old-school dialogs with their
        // own exposed mainloop, let's just start this
        // thing with a run() method
        imagePicker.visible = true
    }
}