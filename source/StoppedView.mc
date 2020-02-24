using Toybox.WatchUi;

class StoppedView extends WatchUi.View {

  var model;

  function initialize(_model) {
    model = _model;
    View.initialize();
  }


  function onLayout(dc) {
    setLayout(Rez.Layouts.StoppedLayout(dc));
  }
}