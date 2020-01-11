using Toybox.Application;
using Toybox.WatchUi;

class CprAppMain extends Application.AppBase {

    function initialize() {
        System.println("App initializing");
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state) {
    	System.println("Starting App");
    	System.println("Starting app State: "+state);
    }

    // onStop() is called when your application is exiting
    function onStop(state) {
    	System.println("Stopping App");
    	System.println("Stopping App state: "+state);
    }

    // Return the initial view of your application here
    function getInitialView() {
    	System.println("Get View");
    	var appView = new AppView();
    	var appDelegate = new AppDelegate();
    	
        return 
        [
        	appView,
        	appDelegate
        ];
    }

}