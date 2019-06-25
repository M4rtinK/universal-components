import QtQuick 2.0
import Sailfish.Pickers 1.0

Item {
    id : imagePicker

    property var selectedFiles : []

    Component {
         id: multiImagePickerDialog
         MultiImagePickerDialog {
             onAccepted: {
                 selectedFiles = ""
                 var urls = []
                 for (var i = 0; i < selectedContent.count; ++i) {
                     var url = selectedContent.get(i).url
                     // Handle url upload
                     urls.push(selectedContent.get(i).url)
                 }
                 selectedFiles = urls
             }

             onRejected: selectedFiles = []
         }
     }

    function run() {
        // similar to old-school dialogs with their
        // own exposed mainloop, let's just start this
        // thing with a run() method
        rWin.pushPage(multiImagePickerDialog)
    }
}