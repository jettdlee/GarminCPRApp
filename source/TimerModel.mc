using Toybox.Timer as Timer;
using Toybox.Attention as Attention;
using Toybox.WatchUi;
using Toybox.Math;

class TimerModel {

  var timer;
  var globalCount = 0;

  function initialize() {
    timer = new Timer.Timer();
  }

  function start() {
    // 1000 is for seconds, 1 for testing
    timer.start(method(:timerCallback), 1, true);
  }

  function stop() {
    timer.stop();
  }

  function timerCallback() {
    globalCount += 1;
    WatchUi.requestUpdate();
  }

  function getTimeString() {
    var hours = (globalCount / 3600).toNumber();
    var minutes = ((globalCount - hours * 3600) / 60).toNumber();
    var seconds = globalCount - hours * 3600 - minutes * 60;
    return formatTimeString(hours, minutes, seconds);
  }

  function formatTimeString(hours, minutes, seconds) {
    return Lang.format(
      "$1$:$2$:$3$", [
        hours.format("%02d"),
        minutes.format("%02d"),
        seconds.format("%02d")
      ]
    );
  }
}