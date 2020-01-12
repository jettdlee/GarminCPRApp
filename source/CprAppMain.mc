using Toybox.Application;
using Toybox.WatchUi;
class CprAppMain extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state) {
    	var timer = System.getTimer();
    }

    // onStop() is called when your application is exiting
    function onStop(state) {
    }

    // Return the initial view of your application here
    function getInitialView() {
    	var appView = new AppView();
    	var appDelegate = new AppDelegate();
    	
        return 
        [
        	appView,
        	appDelegate
        ];
    }

}