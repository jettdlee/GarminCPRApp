class TimeFormatModel {

  function initialize(){
  }

  function formatTime(modelCount) {
    var hours = (modelCount/ 3600).toNumber();
    var minutes = ((modelCount- hours * 3600) / 60).toNumber();
    var seconds = modelCount- (hours * 3600) - (minutes * 60);
    return clockFormat(hours, minutes, seconds);
  }

  function clockFormat(hours, minutes, seconds) {
    return Lang.format(
      "$1$:$2$:$3$", [
        hours.format("%02d"),
        minutes.format("%02d"),
        seconds.format("%02d")
      ]
    );
  }
}