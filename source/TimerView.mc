using Toybox.WatchUi;
using Toybox.Graphics as Gfx;
using Toybox.Timer;
using Toybox.Time;
using Toybox.Time.Gregorian;


class TimerView extends WatchUi.View {

  var model;
  var initialTime = Gregorian.info(Time.now(), Time.FORMAT_MEDIUM);
  hidden var timeFormatModel = new TimeFormatModel();

	function initialize(_model) {
    model = _model;
		View.initialize();
	}

	function onLayout(dc) {
	}

	function onShow() {
	}

	function onUpdate(dc) {
    reloadDisplay(dc);
    drawInitialTime(dc);
    drawActiveTime(dc);
    drawBeat(dc);
	}

	function onHide() {
	}

  function reloadDisplay(dc){
    dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_BLACK);
    dc.clear();
  }

  function drawInitialTime(dc){
    var formattedTime = timeFormatModel.clockFormat(initialTime.hour, initialTime.min, initialTime.sec);
    drawText(dc, "Started:", 0.1, Graphics.FONT_TINY);
    drawText(dc, formattedTime, 0.2, Graphics.FONT_LARGE);
  }

  function drawActiveTime(dc){
    drawText(dc, model.getTimeString(), 0.4, Graphics.FONT_NUMBER_MEDIUM);
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

  function drawBeat(dc){
    if (model.showBeat) { 
      dc.setColor(Graphics.COLOR_RED, Graphics.COLOR_BLACK);
      dc.fillCircle(
        watchWidth(dc, 0.5),
        watchHeight(dc, 0.8),
        20
      );
    }
  }
}