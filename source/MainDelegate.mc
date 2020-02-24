using Toybox.WatchUi as Ui;

class MainDelegate extends Ui.InputDelegate {

  hidden var model;
  hidden var started = false;

  function initialize(_model) {
    model = _model;
    InputDelegate.initialize();
  }

  function onKey(evt) {
    if(evt.getKey() == Ui.KEY_ENTER) {
      if(!started) {
        model.start();
        started = true;
        Ui.switchToView(new TimerView(model), self, Ui.SLIDE_IMMEDIATE);
      } else {
        model.stop();
        started = false;
        Ui.switchToView(new StoppedView(model), self, Ui.SLIDE_IMMEDIATE);
      }
      return true;
    } else {
      return InputDelegate.onKey(evt);
    }
  }
}