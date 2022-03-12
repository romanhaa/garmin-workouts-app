using Toybox.Application as App;
using Toybox.WatchUi as Ui;

//! Application
class WarmupApp extends App.AppBase {

    //! Initialize the app
    function initialize() {
        AppBase.initialize();
        // Update app version in preferences
        var version = Ui.loadResource(Rez.Strings.AppVersion);
        setProperty("appVersion", version);
    }

    //! Return the initial view of your application here
    function getInitialView() {
        view = new WarmupView();
        behaviorDelegate = new WarmupBehaviorDelegate();
        behaviorDelegate.setWarmupView(view);
        return [ view, behaviorDelegate ];
    }

    hidden var view;
    hidden var behaviorDelegate;
}
