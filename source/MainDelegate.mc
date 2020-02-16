using Toybox.WatchUi as Ui;

class MainDelegate extends Ui.InputDelegate {

  hidden var _model;
  hidden var started;

  function initialize(mdl) {
    _model = mdl;
    InputDelegate.initialize();
  }

  function onKey(evt) {
    // if(evt.getKey() == Ui.KEY_ENTER && !started) {
    // if(startAction(evt)) {
      _model.start();
      started = true;
      return true;
    // } else {
      // return InputDelegate.onKey(evt);
    // }
  }

  function startAction(evt) {
    return evt.getKey() == Ui.KEY_ENTER && !started;  
  }
}