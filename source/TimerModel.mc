using Toybox.Timer as Timer;
using Toybox.Attention as Attention;

class TimerModel {

  var timer;
  var myCount = 0;

  function initialize() {
    timer = new Timer.Timer();
  }

  function start() {
    timer.start(method(:timerCallback), 1000, true);
  }

  function stop() {
    timer.stop();
  }

  function timerCallback() {
    myCount += 1;
    WatchUi.requestUpdate();
  }
}