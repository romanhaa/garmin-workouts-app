using Toybox.WatchUi as Ui;

//! Notification policy menu
//! Replaces old resource menus/notifpolicy.xml
class NotifPolicyMenu extends Ui.CheckboxMenu {

    function initialize(mode) {
        CheckboxMenu.initialize({ :title => Rez.Strings.NotifPolicyLabel });

        // Policy 0 - No notification
        addItem(new CheckboxMenuItem(Rez.Strings.no_notif, null, :Policy0, (mode == Prefs.POLICY_NONE), {}));

        // Policy 1 - Notification on start and end
        addItem(new CheckboxMenuItem(Rez.Strings.notif_start_end, null, :Policy1, (mode == Prefs.POLICY_START_END), {}));

        // Policy 2 - Notification every 10s
        addItem(new CheckboxMenuItem(Rez.Strings.notif_every_10s, null, :Policy2, (mode == Prefs.POLICY_EVERY_10), {}));
    }

}