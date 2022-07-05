import 'package:shared_preferences/shared_preferences.dart';

class SettingPreferences {
  //RESOLUTION
  //
  Future<void> saveResolution(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("resolution", data);
  }

  Future<String?> getResolution(String data) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("resolution");
  }

  //
  // BITRATE
  Future<void> saveBitRate(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("bitrate", data);
  }

  Future<String?> getBitRate(String data) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("bitrate");
  }

  // FPS
  //
  Future<void> saveFps(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("fps", data);
  }

  Future<String?> getFps() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("fps");
  }

  // ORIENTATION
  //
  Future<void> saveOrientation(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.getString("orientation");
  }

  Future<String?> getOrientation(String data) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("orientation");
  }
}
