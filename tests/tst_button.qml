import QtQuick 2.0
import QtTest 1.2
import UC 1.0

TestCase {
    name: "Test the Button"

    property bool buttonPressed : false

    Button {
        id : button
        text : "foo"
        onClicked : {
            buttonPressed = true
        }
    }

    function test_Button() {
        compare(button.text, "foo")
        compare(button.pressed, false)
        button.clicked()
        compare(buttonPressed, true)
    }
}
