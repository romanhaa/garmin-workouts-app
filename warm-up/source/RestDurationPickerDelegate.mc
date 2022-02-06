using Toybox.WatchUi as Ui;

class RestDurationPickerDelegate extends Ui.PickerDelegate {

    function initialize() {
        PickerDelegate.initialize();
    }

    function onCancel() {
        Ui.popView(Ui.SLIDE_IMMEDIATE);
    }

    function onAccept(values) {
        var duration = values[0];
        if (Log.isDebugEnabled()) {
            Log.debug("Rest duration selected: " + duration);
        }
        Prefs.setRestDuration(duration);

        Ui.popView(Ui.SLIDE_IMMEDIATE);
    }
}
