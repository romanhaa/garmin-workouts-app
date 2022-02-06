using Toybox.WatchUi as Ui;

//! Activity type menu
//! Replaces old resource menus/activitytype.xml
class ActivityTypeMenu extends Ui.Menu {

    function initialize() {
        Menu.initialize();
        // setTitle("Activity Type");

        var label;

        // 7-minute workout
        label = Ui.loadResource(Rez.Strings.sevenminutes);
        self.addItem(label, :Seven);

        // Cardio
        label = Ui.loadResource(Rez.Strings.cardio);
        self.addItem(label, :Cardio);

        // Strength
        label = Ui.loadResource(Rez.Strings.strength);
        self.addItem(label, :Strength);

        // Flexibility
        label = Ui.loadResource(Rez.Strings.flexibility);
        self.addItem(label, :Flexibility);
    }

}