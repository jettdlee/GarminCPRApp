using Toybox.WatchUi;
using Toybox.Graphics as Gfx;
using Toybox.Timer;

class CommonView extends WatchUi.View {

  var _model;

	function initialize(mdl) {
    _model = mdl;
		View.initialize();
	}

	// Load your resources here
	function onLayout(dc) {
		var mainLayout = Rez.Layouts.MainLayout(dc);
		setLayout(mainLayout);
	}

	// Called when this View is brought to the foreground. Restore
	// the state of this View and prepare it to be shown. This includes
	// loading resources into memory.
	function onShow() {
	}

	// Update the view
	function onUpdate(dc) {
		// Call the parent onUpdate function to redraw the layout
		// View.onUpdate(dc);
    dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_BLACK);
    dc.clear();
    dc.drawText(watchWidth(dc), watchHeight(dc), Graphics.FONT_LARGE, "test", Graphics.TEXT_JUSTIFY_CENTER);
	}

	// Called when this View is removed from the screen. Save the
	// state of this View here. This includes freeing resources from
	// memory.
	function onHide() {
	}

  function watchWidth(dc) {
    return dc.getWidth() / 2;
  } 

  function watchHeight(dc) {
    return dc.getHeight() / 2;
  }
}