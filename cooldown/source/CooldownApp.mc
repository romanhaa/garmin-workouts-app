using Toybox.Application as App;
using Toybox.WatchUi as Ui;

//! Application
class CooldownApp extends App.AppBase {

    //! Initialize the app
    function initialize() {
        AppBase.initialize();

        // Update app version in preferences
        var version = Ui.loadResource(Rez.Strings.AppVersion);
        setProperty("appVersion", version);
    }

    //! Return the initial view of your application here
    function getInitialView() {
        view = new CooldownView();
        behaviorDelegate = new CooldownBehaviorDelegate();

        view.loadPreferences();
        behaviorDelegate.setCooldownView(view);

        return [ view, behaviorDelegate ];
    }

    //! New app settings have been received
    function onSettingsChanged() {
        view.loadPreferences();
        Ui.requestUpdate();
    }


    hidden var view;
    hidden var behaviorDelegate;
}
