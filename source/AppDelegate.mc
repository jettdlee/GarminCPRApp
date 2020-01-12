using Toybox.WatchUi;

class AppDelegate extends WatchUi.BehaviorDelegate {

	private var upAction = WatchUi.SLIDE_UP;

  function initialize() {
    BehaviorDelegate.initialize();
  }

  function onMenu() {
    var mainMenu = new Rez.Menus.MainMenu();
    var appMenuDelegate = new AppMenuDelegate();
    	
    WatchUi.pushView(mainMenu, appMenuDelegate, upAction);
    return true;
  }
}