using Toybox.Timer as Timer;
using Toybox.Attention as Attention;

class TimerModel {

  const TIMER_TIME = 500;
  const TIMER_REPEAT = true;
  const DEFAULT_DURATION = 1000;
  const DEFAULT_STRENGTH = 25;
  
  var _timer = new Timer.Timer();
  var vibrationDuration;
  var vibrationStrength;

  function initialize(duration, strength) {
    vibrationDuration = duration || DEFAULT_DURATION;
    vibrationStrength = strentgh || DEFAULT_STRENGTH;
  }

  function start() {
    _timer.start(method(:timerCallback), TIMER_TIME, TIMER_REPEAT);
  }

  function stop() {
    _timer.stop();
  }

  function timerCallback() {
    WatchUi.requestUpdate();
  }

  function vibrate(){
    var vibeProfile = new Attention.VibeProfile(vibrationStrength, vibrationDuration);
    Attention.vibrate([vibeProfile]);
  }
}