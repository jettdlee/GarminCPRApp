using Toybox.WatchUi;

class MainDelegate extends WatchUi.InputDelegate {

	private const UP_ACTION = WatchUi.SLIDE_UP;
  private var _mainMenu;
  private var _menuDelegate;

  function initialize() {
    InputDelegate.initialize();
    _menuDelegate = new MenuDelegate();
  }

  function onMenu() {
    WatchUi.pushView(_mainMenu, _menuDelegate, UP_ACTION);
    return true;
  }
}