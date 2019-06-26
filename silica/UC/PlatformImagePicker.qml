import QtQuick 2.0
import Sailfish.Pickers 1.0

Item {
    id : imagePicker

    property var selectedFiles : []
    property bool selectMultiple : false

    Component {
         id: multiImagePickerDialog
         MultiImagePickerDialog {
             onAccepted: {
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

    Component {
        id: singleImagePickerDialog
        ImagePickerPage {
            onSelectedContentPropertiesChanged: {
                var urls = []
                urls.push(selectedContentProperties.filePath)
                selectedFiles = urls
            }
        }
    }

    function run() {
        // similar to old-school dialogs with their
        // own exposed mainloop, let's just start this
        // thing with a run() method
        if (selectMultiple) {
            rWin.pushPage(multiImagePickerDialog)
        } else {
            rWin.pushPage(singleImagePickerDialog)
        }
    }
}