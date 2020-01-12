using Toybox.WatchUi as WatchUi

class MainController {

  var timer = new TimerModel();
  var paused = false;

  function initialize() {
  }

  function onStart() {
    timer.start();
  }

  function onStop() {
    timer.stop();
  }

}