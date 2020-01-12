using Toybox.Application;
using Toybox.WatchUi;
class CprAppMain extends Application.AppBase {

  private var _view;
  private var _delegate;
  private var _controller;

  function initialize() {
    AppBase.initialize();

    _controller = new MainController();
    _view = new DeviceView(_controller);
    _delegate = new MainDelegate(_controller);
  }

  // onStart() is called on application start up
  function onStart(state) {
    _controller.onStart();
  }

  // onStop() is called when your application is exiting
  function onStop(state) {
    _controller.onStop();
  }

  // Return the initial view of your application here
  function getInitialView() {
    return [_view, _delegate];
  }

}