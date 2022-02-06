using Toybox.WatchUi as Ui;

//! Notification policy menu
//! Replaces old resource menus/notifpolicy.xml
class NotifPolicyMenu extends Ui.CheckboxMenu {

    function initialize(mode) {
        CheckboxMenu.initialize({ :title => Rez.Strings.NotifPolicyLabel });

        // Policy 0 - No notification
        addItem(new Ui.CheckboxMenuItem(Rez.Strings.no_notif, null, :Policy0, (mode == Prefs.POLICY_NONE), {}));

        // Policy 1 - Notification on start and end
        addItem(new Ui.CheckboxMenuItem(Rez.Strings.notif_start_end, null, :Policy1, (mode == Prefs.POLICY_START_END), {}));
    }

}