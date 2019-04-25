import QtQuick 2.0
import QtQuick.Controls 2.0

Page {
    property bool isActive : StackView.status == StackView.Active
    property bool isInactive : StackView.status == StackView.Inactive
    property bool isActivating : StackView.status == StackView.Activating
    property bool isDeactivating : StackView.status == StackView.Deactivating
    // true if the page ever was on the page stack, if manually
    // set to false will be set to true next time the page lands
    // on the page stack
    property bool wasOnPageStack : false
    // true if the page is currently on the page stack
    property bool isOnPageStack : StackView.view != null
    onIsOnPageStackChanged : {
        if (!wasOnPageStack && isOnPageStack) {
            wasOnPageStack = true
        }
    }
}