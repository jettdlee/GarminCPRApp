using Toybox.WatchUi as Ui;

class MainDelegate extends Ui.InputDelegate {

  var controller;
  private var started;

  function initialize(ctrl) {
    controller = ctrl;
    InputDelegate.initialize();
  }

  function onKey(evt) {
    if(startAction(evt)) {
      started = true;
      controller.onStart;
    } else {
      return InputDelegate.onKey(evt);
    }
  }

  function startAction(evt) {
    return evt.getKey() == Ui.KEY_ENTER && !started;  
  }
}