using Toybox.WatchUi;

class cpr_appDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new cpr_appMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}