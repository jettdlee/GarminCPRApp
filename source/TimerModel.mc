using Toybox.Timer as Timer;
using Toybox.WatchUi;
using Toybox.Time;

class TimerModel {

  const TEMPO = 100;
  const BEATS_PER_MIN = 60.0 / TEMPO;
  const TIMER_RATE = 200; // ms, global rate that will reach both the time and BPM 
  const ONE_SECOND = 1000;

  var globalCount = 0;
  var timerCount = 0;
  var showBeat = false;
  var initialTime = Time.now();
  var started = false;

  hidden var vibrationModel = new VibrationModel();
  hidden var timer = new Timer.Timer();

  function initialize() {
  }

  function start() {
    timer.start(
      method(:timerCallback),
      TIMER_RATE,
      true
    );
    started = true;
  }

  function stop() {
    timer.stop();
    showBeat = false;
    started = false;
    WatchUi.requestUpdate();
  }

  function timerCallback() {
    globalCount += 1;
    addTimerCount();
    vibrateOnBPM();
    WatchUi.requestUpdate();
  }

  function addTimerCount() {
    if ((globalCount * TIMER_RATE) % ONE_SECOND == 0) { 
      timerCount += 1;
    }
  }

  function vibrateOnBPM(){
    var countsForBeat = (BEATS_PER_MIN * (ONE_SECOND / TIMER_RATE)).toNumber();
    if (globalCount % countsForBeat == 0) {
      showBeat = true;
      vibrationModel.vibrate();
    } else {
      showBeat = false;
    }
  }
}