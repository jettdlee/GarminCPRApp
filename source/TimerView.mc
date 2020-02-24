using Toybox.Graphics as Gfx;
using Toybox.Timer;

class TimerView extends CommonView {

  var model;

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
    if (model.started == false) {
      drawStopped(dc);
    } else {
      drawBeat(dc);
    }
	}

	function onHide() {
	}

  function reloadDisplay(dc){
    dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_BLACK);
    dc.clear();
  }

  function drawBeat(dc){
    if (model.showBeat) { 
      dc.setColor(Graphics.COLOR_RED, Graphics.COLOR_BLACK);
      dc.fillCircle(
        watchWidth(dc, 0.5),
        watchHeight(dc, eventHeight),
        20
      );
    }
  }

  function drawStopped(dc){
    dc.setColor(Graphics.COLOR_RED, Graphics.COLOR_TRANSPARENT);
    drawText(dc, "Stopped", stoppedHeight, Graphics.FONT_MEDIUM);
  }
}