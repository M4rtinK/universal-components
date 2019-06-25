import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.0

FileDialog {
    id : imagePicker

    folder : shortcuts.pictures

    selectMultiple : true

    property var selectedContent : ""

    onAccepted: {
        console.log("PlatformImagePicker: you chose: " + imagePicker.fileUrls)
        selectedContent = imagePicker.fileUrls
    }
    onRejected: {
        console.log("PlatformImagePicker: canceled")
    }

    function run() {
        // similar to old-school dialogs with their
        // own exposed mainloop, let's just start this
        // thing with a run() method
        imagePicker.visible = true
    }
}