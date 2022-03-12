using Toybox.WatchUi as Ui;

//! Application behavior delegate
class StretchingBehaviorDelegate extends Ui.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    //! Back button pressed
    function onBack() {
        if (view == null) {
            return false;
        }
        if (view.isRunning()) {
            // Do not quit if activity is running
            return true;
        }
        view.saveOnExit();
        return false;
    }

    //! Key pressed
    function onKey(key) {
        if (key.getKey() == Ui.KEY_ENTER) {
            if (Log.isDebugEnabled()) {
                Log.debug("Key pressed: ENTER");
            }
            if (view.isRunning()) {
                // Stop activity
                view.stopActivity();
            } else {
                // Start activity
                view.startActivity();
            }
            return true;
        }
        return false;
    }

    function setStretchingView(v) {
        view = v;
    }

    hidden var view = null;
}
