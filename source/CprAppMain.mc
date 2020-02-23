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

  function onStop(state) {
  }

  function getInitialView() {
    return [_view, _delegate];
  }
}