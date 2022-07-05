import 'package:get/state_manager.dart';

enum Resolution { p360, p480, p720, p1080 }

enum Orientation { auto, portrait, landscape }

enum Bitrate { mbit1, mbit25, mbit35, mbit45, mbit68, mbit98 }

Map<String, String> resolution = {
  "p360": "360P",
  "p480": "480P",
  "p720": "720P",
  "p1080": "1080P"
};

Map<String, String> orientation = {
  "auto": "Auto",
  "portrait": "Portrait",
  "landscape": "Landscape"
};

Map<String, String> bitrate = {
  "mbit1": "1.0 Mbit(Very Low)",
  "mbit25": "2.5 Mbit",
  "mbit35": "3.5 Mbit(Low)",
  "mbit45": "4.5 Mbit",
  "mbit68": "6.8 (Good)",
  "mbit98": "9.8 Mbit",
};

class RadioController extends GetxController {
  Rx<Resolution> a = Rx(Resolution.p360);

  void changeValue(Resolution value) {
    a.value = value;
  }
}
