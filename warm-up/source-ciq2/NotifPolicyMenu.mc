using Toybox.WatchUi as Ui;

//! Notification policy menu
//! Replaces old resource menus/notifpolicy.xml
class NotifPolicyMenu extends Ui.Menu {

    function initialize() {
        Menu.initialize();
        // setTitle("Notifications");

        var label;

        // Policy 0 - No notification
        label = Ui.loadResource(Rez.Strings.no_notif);
        self.addItem(label, :Policy0);

        // Policy 1 - Notification on start and end
        label = Ui.loadResource(Rez.Strings.notif_start_end);
        self.addItem(label, :Policy1);

        // Policy 2 - Notification every 10s
        label = Ui.loadResource(Rez.Strings.notif_every_10s);
        self.addItem(label, :Policy2);
    }

}