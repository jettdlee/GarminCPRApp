using Toybox.WatchUi;

class AppDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
    	
        WatchUi.pushView(new Rez.Menus.MainMenu(), new AppMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}