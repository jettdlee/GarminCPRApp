using Toybox.Attention as Attention;

class VibrationModel {

  const VIBRATION_STRENGTH = 10;
  const VIBRATION_DURATION = 25;

  function initialize(){
  }

  function vibrate(){
    var vibeProfile = new Attention.VibeProfile(VIBRATION_STRENGTH, VIBRATION_DURATION);
    Attention.vibrate([vibeProfile]);
  }
}