using Toybox.WatchUi;
using Toybox.Time.Gregorian;

class CommonView extends WatchUi.View {

  var model;

  // To be overwritten for each device
  var initialTimeHeight = 0.1;
  var activeTimeHeight = 0.4;
  var stoppedHeight = 0.725;
  var eventHeight = 0.8;

  hidden var timeFormatter = new TimeFormatter();

  function initialize(_model) {
    model = _model;
    View.initialize();
  }

  function drawText(dc, text, vertical_position, font_size) {
    dc.drawText(
      watchWidth(dc, 0.5),
      watchHeight(dc, vertical_position),
      font_size,
      text,
      Graphics.TEXT_JUSTIFY_CENTER
    );
  }

  function watchWidth(dc, position_fraction) {
    return dc.getWidth() * position_fraction;
  } 

  function watchHeight(dc, position_fraction) {
    return dc.getHeight() * position_fraction;
  }

  function drawInitialTime(dc){
    drawText(dc, "Started:", initialTimeHeight, Graphics.FONT_TINY);
    drawText(dc, formatInitialTime(), initialTimeHeight + 0.1, Graphics.FONT_NUMBER_MILD);
  }

  function formatInitialTime() {
    var initialTime = Gregorian.info(model.initialTime, Time.FORMAT_MEDIUM);
    return timeFormatter.clockFormat(initialTime.hour, initialTime.min, initialTime.sec);
  }

  function drawActiveTime(dc){
    var formattedCount = timeFormatter.formatTime(model.timerCount);
    drawText(dc, formattedCount, activeTimeHeight, Graphics.FONT_NUMBER_MEDIUM);
  }

}