using Toybox.WatchUi as Ui;

class StoppedDelegate extends Ui.BehaviourDelegate{

  function initialize() {
    BehaviourDelegate.initialize();
  }

  function onSelect() {
    var controller = new MainController();
    var view = new DeviceView(_controller);
    var delegate = new MainDelegate(_controller);
    Ui.switchToView(view, delegate, Ui.SLIDE_IMMEDIATE);
    return true;
  }

}