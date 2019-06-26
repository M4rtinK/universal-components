import QtQuick 2.0
import Sailfish.Pickers 1.0

Item {
    id : imagePicker

    property var selectedFiles : []
    property bool selectMultiple : false

    Component {
         id: multiVideoPickerDialog
         MultiVideoPickerDialog {
             onAccepted: {
                 var urls = []
                 for (var i = 0; i < selectedContent.count; ++i) {
                     var url = selectedContent.get(i).url
                     urls.push(selectedContent.get(i).url)
                 }
                 selectedFiles = urls
             }

             onRejected: selectedFiles = []
         }
    }

    Component {
        id: singleVideoPickerDialog
        VideoPickerPage {
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
            rWin.pushPage(multiVideoPickerDialog)
        } else {
            rWin.pushPage(singleVideoPickerDialog)
        }
    }
}