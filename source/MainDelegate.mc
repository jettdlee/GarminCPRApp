using Toybox.WatchUi as Ui;

class MainDelegate extends Ui.InputDelegate {

  hidden var _model;
  private var started;

  function initialize(mdl) {
    _model = mdl;
    InputDelegate.initialize();
  }

  function onKey(evt) {
    if(startAction(evt)) {
      started = true;
      _model.start;
      return true;
    } else {
      return InputDelegate.onKey(evt);
    }
  }

  function startAction(evt) {
    return evt.getKey() == Ui.KEY_ENTER && !started;  
  }
}