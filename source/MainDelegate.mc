using Toybox.WatchUi as Ui;

class MainDelegate extends Ui.InputDelegate {

  hidden var _model;
  hidden var started = false;

  function initialize(mdl) {
    _model = mdl;
    InputDelegate.initialize();
  }

  function onKey(evt) {
    if(evt.getKey() == Ui.KEY_ENTER) {
      if(!started) {
        _model.start();
        started = true;
      } else {
        _model.stop();
        started = false;
      }
      return true;
    } else {
      return InputDelegate.onKey(evt);
    }
  }
}