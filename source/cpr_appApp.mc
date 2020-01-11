using Toybox.Application;
using Toybox.WatchUi;

class cpr_appApp extends Application.AppBase {

    function initialize() {
        System.println("App initializing");
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state) {
    	System.println("Starting App");
    }

    // onStop() is called when your application is exiting
    function onStop(state) {
    	System.println("Stopping App");
    }

    // Return the initial view of your application here
    function getInitialView() {
    	System.println("Get View");
        return [ new cpr_appView(), new cpr_appDelegate() ];
    }

}