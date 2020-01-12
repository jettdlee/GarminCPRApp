using Toybox.WatchUi as Ui;

class StoppedView extends Ui.View {

  function initialize() {
    View.initialize();
  }

  function onLayout(dc) {
    setLayout(Rez.Layouts.StoppedLayout(dc));
  }
}