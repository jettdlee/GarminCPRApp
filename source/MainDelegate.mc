using Toybox.WatchUi as Ui;

class MainDelegate extends Ui.InputDelegate {

  hidden var model;

  function initialize(_model) {
    model = _model;
    InputDelegate.initialize();
  }

  function onKey(evt) {
    if(evt.getKey() == Ui.KEY_ENTER) {
      if(!model.started) {
        model.start();
      } else {
        model.stop();
      }
      return true;
    } else {
      return InputDelegate.onKey(evt);
    }
  }
}