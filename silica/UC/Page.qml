import Sailfish.Silica 1.0

Page {
    allowedOrientations : Orientation.All
    property bool isActive : status == PageStatus.Active
    property bool isInactive : status == PageStatus.Inactive
    property bool isActivating : status == PageStatus.Activating
    property bool isDeactivating : status == PageStatus.Deactivating
    // track if page page ever was and still is on the page stack
    property bool wasOnPageStack : false
    property bool isOnPageStack : pageContainer != null
    onIsOnPageStackChanged : {
        if (!wasOnPageStack && isOnPageStack) {
            wasOnPageStack = true
        }
    }
}