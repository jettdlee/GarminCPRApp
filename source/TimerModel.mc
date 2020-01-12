using Toybox.Timer as Timer;
using Toybox.Attention as Attention;

class TimerModel {

  const TIMER_TIME = 500;
  const TIMER_REPEAT = true;
  const DEFAULT_DURATION = 1000;
  const DEFAULT_STRENGTH = 25;
  
  var timer;
  var vibrationDuration;
  var vibrationStrength;

  function initialize(duration, strength) {
    timer = new Timer.Timer();
    vibrationDuration = duration || DEFAULT_DURATION;
    vibrationStrength = strength || DEFAULT_STRENGTH;
  }

  function start() {
    timer.start(method(:timerCallback), TIMER_TIME, TIMER_REPEAT);
  }

  function stop() {
    timer.stop();
  }

  function timerCallback() {
    WatchUi.requestUpdate();
  }

  function vibrate(){
    var vibeProfile = new Attention.VibeProfile(vibrationStrength, vibrationDuration);
    Attention.vibrate([vibeProfile]);
  }
}