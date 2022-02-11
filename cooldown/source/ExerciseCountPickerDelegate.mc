using Toybox.WatchUi as Ui;

class ExerciseCountPickerDelegate extends Ui.PickerDelegate {

    function initialize() {
        PickerDelegate.initialize();
    }

    function onCancel() {
        Ui.popView(Ui.SLIDE_IMMEDIATE);
    }

    function onAccept(values) {
        var count = values[0];
        if (Log.isDebugEnabled()) {
            Log.debug("Exercise count selected: " + count);
        }
        Prefs.setExerciseCount(count);

        Ui.popView(Ui.SLIDE_IMMEDIATE);
    }
}
