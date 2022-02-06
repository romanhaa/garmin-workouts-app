using Toybox.WatchUi as Ui;

//! Activity type menu
//! Replaces old resource menus/activitytype.xml
class ActivityTypeMenu extends Ui.CheckboxMenu {

    function initialize(mode) {
        CheckboxMenu.initialize({ :title => Rez.Strings.ActivityTypeLabel });

        // 7-minute workout
        addItem(new CheckboxMenuItem(Rez.Strings.sevenminutes, null, :Seven, (mode == Prefs.SEVEN), {}));

        // Cardio
        addItem(new CheckboxMenuItem(Rez.Strings.cardio, null, :Cardio, (mode == Prefs.CARDIO), {}));

        // Strength
        addItem(new CheckboxMenuItem(Rez.Strings.strength, null, :Strength, (mode == Prefs.STRENGTH), {}));

        // Flexibility
        addItem(new CheckboxMenuItem(Rez.Strings.flexibility, null, :Flexibility, (mode == Prefs.FLEXIBILITY), {}));
    }

}