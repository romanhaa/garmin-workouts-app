using Toybox.Application as App;
using Toybox.WatchUi as Ui;

//! Application menu delegate
class HictMenuDelegate extends Ui.MenuInputDelegate {

    function initialize() {
        MenuInputDelegate.initialize();
    }

    function onMenuItem(item) {
        // Main
        if (item == :ExerciseDuration) {
            if (Log.isDebugEnabled()) {
                Log.debug("Menu item: ExerciseDuration");
            }
            Ui.pushView(new SingleNumberPicker(Rez.Strings.ExerciseTimeLabel, Prefs.getExerciseDuration(), 10, 99),
                new ExerciseDurationPickerDelegate(), Ui.SLIDE_IMMEDIATE);
        }
        if (item == :RestDuration) {
            if (Log.isDebugEnabled()) {
                Log.debug("Menu item: RestDuration");
            }
            Ui.pushView(new SingleNumberPicker(Rez.Strings.RestTimeLabel, Prefs.getRestDuration(), 5, 99),
                new RestDurationPickerDelegate(), Ui.SLIDE_IMMEDIATE);
        }
        if (item == :ExerciseCount) {
            if (Log.isDebugEnabled()) {
                Log.debug("Menu item: ExerciseCount");
            }
            Ui.pushView(new SingleNumberPicker(Rez.Strings.ExerciseCountLabel, Prefs.getExerciseCount(), 1, 99),
                new ExerciseCountPickerDelegate(), Ui.SLIDE_IMMEDIATE);
        }
        if (item == :ActivityType) {
            if (Log.isDebugEnabled()) {
                Log.debug("Menu item: ActivityType");
            }
            Ui.pushView(new ActivityTypeMenu(), new HictMenuDelegate(), Ui.SLIDE_UP);
        }
        if (item == :NotifPolicy) {
            if (Log.isDebugEnabled()) {
                Log.debug("Menu item: NotifPolicy");
            }
            Ui.pushView(new NotifPolicyMenu(), new HictMenuDelegate(), Ui.SLIDE_UP);
        }

        // Activity type
        if (item == :Seven) {
            if (Log.isDebugEnabled()) {
                Log.debug("Menu item: Seven Minutes");
            }
            Prefs.setActivityType(Prefs.SEVEN);
        }
        if (item == :Cardio) {
            if (Log.isDebugEnabled()) {
                Log.debug("Menu item: Cardio");
            }
            Prefs.setActivityType(Prefs.CARDIO);
        }
        if (item == :Strength) {
            if (Log.isDebugEnabled()) {
                Log.debug("Menu item: Strength");
            }
            Prefs.setActivityType(Prefs.STRENGTH);
        }
        if (item == :Flexibility) {
            if (Log.isDebugEnabled()) {
                Log.debug("Menu item: Flexibility");
            }
            Prefs.setActivityType(Prefs.FLEXIBILITY);
        }

        // Notification policy
        if (item == :Policy0) {
            if (Log.isDebugEnabled()) {
                Log.debug("Menu item: Policy 0");
            }
            Prefs.setNotificationPolicy(Prefs.POLICY_NONE);
        }
        if (item == :Policy1) {
            if (Log.isDebugEnabled()) {
                Log.debug("Menu item: Policy 1");
            }
            Prefs.setNotificationPolicy(Prefs.POLICY_START_END);
        }
        if (item == :Policy2) {
            if (Log.isDebugEnabled()) {
                Log.debug("Menu item: Policy 2");
            }
            Prefs.setNotificationPolicy(Prefs.POLICY_EVERY_10);
        }
    }

}
