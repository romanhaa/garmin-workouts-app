using Toybox.WatchUi as Ui;

class ExerciseDurationPickerDelegate extends Ui.PickerDelegate {

    function initialize() {
        PickerDelegate.initialize();
    }

    function onCancel() {
        Ui.popView(Ui.SLIDE_IMMEDIATE);
    }

    function onAccept(values) {
        var duration = values[0];
        if (Log.isDebugEnabled()) {
            Log.debug("Exercise duration selected: " + duration);
        }
        Prefs.setExerciseDuration(duration);

        Ui.popView(Ui.SLIDE_IMMEDIATE);
    }
}
