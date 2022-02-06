using Toybox.WatchUi as Ui;

//! Application behavior delegate
class HictBehaviorDelegate extends Ui.BehaviorDelegate {

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

    //! Menu button pressed
    function onMenu() {
        if ((view != null) && !view.isRunning()) {
            Ui.pushView(new MainMenu(), new HictMenuDelegate(), Ui.SLIDE_UP);
            return true;
         }
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

    function setHictView(v) {
        view = v;
    }

    hidden var view = null;
}
