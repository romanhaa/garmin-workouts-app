using Toybox.Application as App;
using Toybox.WatchUi as Ui;

//! Application menu delegate
class CooldownMenuDelegate extends Ui.Menu2InputDelegate {

    function initialize() {
        Menu2InputDelegate.initialize();
    }

    function onSelect(item) {
        var itemId = item.getId();

        // Main
        if (itemId == :ExerciseDuration) {
            Ui.pushView(new SingleNumberPicker(Rez.Strings.ExerciseTimeLabel, Prefs.getExerciseDuration(), 10, 99),
                new ExerciseDurationPickerDelegate(), Ui.SLIDE_IMMEDIATE);
        }
        if (itemId == :RestDuration) {
            Ui.pushView(new SingleNumberPicker(Rez.Strings.RestTimeLabel, Prefs.getRestDuration(), 5, 99),
                new RestDurationPickerDelegate(), Ui.SLIDE_IMMEDIATE);
        }
        if (itemId == :ExerciseCount) {
            Ui.pushView(new SingleNumberPicker(Rez.Strings.ExerciseCountLabel, Prefs.getExerciseCount(), 1, 99),
                new ExerciseCountPickerDelegate(), Ui.SLIDE_IMMEDIATE);
        }
        if (itemId == :NotifPolicy) {
            Ui.pushView(new NotifPolicyMenu(Prefs.getNotificationPolicy()), self, Ui.SLIDE_LEFT);
        }

        // Notification policy
        if (itemId == :Policy0) {
            Prefs.setNotificationPolicy(Prefs.POLICY_NONE);
            Ui.popView(Ui.SLIDE_RIGHT);
        }
        if (itemId == :Policy1) {
            Prefs.setNotificationPolicy(Prefs.POLICY_START_END);
            Ui.popView(Ui.SLIDE_RIGHT);
        }
    }

}
