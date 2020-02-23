using Toybox.WatchUi;
using Toybox.Graphics as Gfx;
using Toybox.Timer;

class CommonView extends WatchUi.View {

  var _model;

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
    dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_BLACK);
    dc.clear();
    dc.drawText(watchWidth(dc), watchHeight(dc), Graphics.FONT_MEDIUM, _model.getTimeString(), Graphics.TEXT_JUSTIFY_CENTER);
	}

	function onHide() {
	}

  function watchWidth(dc) {
    return dc.getWidth() / 2;
  } 

  function watchHeight(dc) {
    return dc.getHeight() / 2;
  }

}