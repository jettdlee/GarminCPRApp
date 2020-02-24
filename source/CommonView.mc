using Toybox.WatchUi;
using Toybox.Time.Gregorian;

class CommonView extends WatchUi.View {

  var model;

  hidden var timeFormatModel = new TimeFormatModel();

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
    var initialTime = Gregorian.info(model.initialTime, Time.FORMAT_MEDIUM);
    var formattedTime = timeFormatModel.clockFormat(initialTime.hour, initialTime.min, initialTime.sec);
    drawText(dc, "Started:", 0.1, Graphics.FONT_TINY);
    drawText(dc, formattedTime, 0.2, Graphics.FONT_LARGE);
  }

  function drawActiveTime(dc){
    var formattedCount = timeFormatModel.formatTime(model.timerCount);
    drawText(dc, formattedCount, 0.4, Graphics.FONT_NUMBER_MEDIUM);
  }

}