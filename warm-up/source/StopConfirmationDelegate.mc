using Toybox.WatchUi as Ui;

class StopConfirmationDelegate extends Ui.ConfirmationDelegate {

    function initialize() {
        ConfirmationDelegate.initialize();
    }

    function onResponse(value) {
        if (value == Ui.CONFIRM_YES) {
            if (Log.isDebugEnabled()) {
                Log.debug("Stop activity confirmed");
            }
            view.closeActivity();
        } else {
            if (Log.isDebugEnabled()) {
                Log.debug("Stop activity declined");
            }
            view.resumeActivity();
        }
    }

    function setHictView(v) {
        view = v;
    }

    hidden var view = null;
}
