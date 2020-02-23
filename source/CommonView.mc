using Toybox.WatchUi;
using Toybox.Graphics as Gfx;
using Toybox.Timer;
using Toybox.Time;
using Toybox.Time.Gregorian;


class CommonView extends WatchUi.View {

  var _model;
  var initialTime = Gregorian.info(Time.now(), Time.FORMAT_MEDIUM);
  hidden var timeFormatModel = new TimeFormatModel();

	function initialize(mdl) {
    _model = mdl;
		View.initialize();
	}

	function onLayout(dc) {
		var mainLayout = Rez.Layouts.MainLayout(dc);
		setLayout(mainLayout);
	}

	function onShow() {
	}

	function onUpdate(dc) {
    reloadDisplay(dc);
    drawInitialTime(dc);
    drawActiveTime(dc);
	}

	function onHide() {
	}

  function reloadDisplay(dc){
    dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_BLACK);
    dc.clear();
  }

  function drawInitialTime(dc){
    var formattedTime = timeFormatModel.clockFormat(initialTime.hour, initialTime.min, initialTime.sec);
    drawText(dc, formattedTime, 0.1);
  }

  function drawActiveTime(dc){
    drawText(dc, _model.getTimeString(), 0.5);
  }

  function drawText(dc, text, vertical_position) {
    dc.drawText(
      watchWidth(dc, 0.5),
      watchHeight(dc, vertical_position),
      Graphics.FONT_LARGE,
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
}