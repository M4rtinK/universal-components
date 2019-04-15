import QtQuick 2.0
import QtTest 1.1
import UC 1.0

TestCase {
    name: "Test the Button"

    Button {
        id : button
        text : "foo"
        onClicked : {
            console.log("foo")    
        }
    }

    function test_Button() {
        compare(button.text, "foo")
        compare(button.pressed, false)
        // check the onClicked property exists
        verify(button.onClicked)
    }
}
