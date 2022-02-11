using Toybox.WatchUi as Ui;

//! Main menu for CIQ3 devices
//! Replaces old resource menus/main.xml
class MainMenu extends Ui.Menu2 {

    function initialize() {
        Menu2.initialize({});

        var label;

        // Exercise count
        label = Ui.loadResource(Rez.Strings.ExerciseCountLabel);
        exerciseCountItem = new Ui.MenuItem(label, null, :ExerciseCount, null);
        self.addItem(exerciseCountItem);

        // Exercise duration
        label = Ui.loadResource(Rez.Strings.ExerciseTimeLabel);
        exerciseDurationItem = new Ui.MenuItem(label, null, :ExerciseDuration, null);
        self.addItem(exerciseDurationItem);

        // Rest duration
        label = Ui.loadResource(Rez.Strings.RestTimeLabel);
        restDurationItem = new Ui.MenuItem(label, null, :RestDuration, null);
        self.addItem(restDurationItem);

        // Notification policy
        label = Rez.Strings.NotifPolicyLabel;
        notifPolicyItem = new Ui.MenuItem(label, null, :NotifPolicy, null);
        self.addItem(notifPolicyItem);
    }

    function onShow() {
        refreshSubLabels();
        Menu2.onShow();
    }

    function refreshSubLabels() {
        exerciseCountItem.setSubLabel(Prefs.getExerciseCount().toString());
        exerciseDurationItem.setSubLabel(Prefs.getExerciseDuration().toString());
        restDurationItem.setSubLabel(Prefs.getRestDuration().toString());
        notifPolicyItem.setSubLabel(getNotifPolicyLabel());
    }

    function getNotifPolicyLabel() {
        var mode = Prefs.getNotificationPolicy();
        switch (mode) {
            case Prefs.POLICY_START_END:
                return Ui.loadResource(Rez.Strings.notif_start_end);
            case Prefs.POLICY_NONE:
                // Falls through
            default:
                // Falls through
        }
        // Default
        return Ui.loadResource(Rez.Strings.no_notif);
    }

    hidden var exerciseCountItem;
    hidden var exerciseDurationItem;
    hidden var restDurationItem;
    hidden var notifPolicyItem;
}