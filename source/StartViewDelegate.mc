using Toybox.WatchUi;

class StartView extends WatchUi.View {
	function initialize() {
    View.initialize();
  }

	function onLayout(dc) {
		setLayout(Rez.Layouts.StartLayout(dc));
	}
}

class StartDelegate extends WatchUi.InputDelegate {
  
  var model;

  function initialize(_model) {
    model = _model;
    InputDelegate.initialize();
  }

  function onKey(evt) {
    if(evt.getKey() == WatchUi.KEY_ENTER) {
      WatchUi.switchToView(new TimerView(model), new MainDelegate(model), WatchUi.SLIDE_IMMEDIATE);
      model.start();
      return true;
    } else {
      return InputDelegate.onKey(evt);
    }
  }
}