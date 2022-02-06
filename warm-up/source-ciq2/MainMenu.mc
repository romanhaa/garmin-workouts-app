using Toybox.WatchUi as Ui;

//! Main menu
//! Replaces old resource menus/main.xml
class MainMenu extends Ui.Menu {

    function initialize() {
        Menu.initialize();
        // setTitle("Options");

        var label;

        // Activity type
        label = Ui.loadResource(Rez.Strings.ActivityTypeLabel);
        self.addItem(label, :ActivityType);

        // Exercise count
        label = Ui.loadResource(Rez.Strings.ExerciseCountLabel);
        self.addItem(label, :ExerciseCount);

        // Exercise duration
        label = Ui.loadResource(Rez.Strings.ExerciseTimeLabel);
        self.addItem(label, :ExerciseDuration);

        // Rest duration
        label = Ui.loadResource(Rez.Strings.RestTimeLabel);
        self.addItem(label, :RestDuration);

        // Notification policy
        label = Ui.loadResource(Rez.Strings.NotifPolicyLabel);
        self.addItem(label, :NotifPolicy);
    }

}