using Toybox.Application;
using Toybox.WatchUi;
class CprAppMain extends Application.AppBase {

  private var _view;
  private var _delegate;
  private var _model;

  function initialize() {
    AppBase.initialize();
    _model = new TimerModel();
    _view = new DeviceView(_model);
    _delegate = new MainDelegate(_model);
  }

  // onStop() is called when your application is exiting
  function onStop(state) {
    // if (_model.session.isRecording()) {
    //   var result = _model.session.stop() && _model.session.discard();
    // }
  }

  // Return the initial view of your application here
  function getInitialView() {
    return [_view, _delegate];
  }
}