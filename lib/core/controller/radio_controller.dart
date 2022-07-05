import 'package:get/state_manager.dart';

abstract class RadioType {
  String? title;
  List<String> adjustment = [];
  RxString a = RxString("");

  void changeValue(String value);
}

class ResolutionController extends GetxController implements RadioType {
  @override
  String? title;
  @override
  RxString a = RxString("360P");

  @override
  List<String> adjustment = [
    "360P",
    "480P",
    "720P",
    "1080P",
  ];

  @override
  void changeValue(value) => a.value = value;
}

class OrientationController extends GetxController implements RadioType {
  @override
  String? title = "Orientation";
  @override
  RxString a = RxString("360P");

  @override
  List<String> adjustment = [
    "Auto",
    "Portrait",
    "Landscape",
  ];

  @override
  void changeValue(value) => a.value = value;
}

class BitrateController extends GetxController implements RadioType {
  @override
  RxString a = RxString("3.5(Low)");

  @override
  List<String> adjustment = [
    "1.0(Very low)",
    "2.5",
    "3.5(Low)",
    "4.5",
    "6.8(Good)",
    "9.8",
  ];

  @override
  String? title = "Bitrate";

  @override
  void changeValue(String value) => a.value = value;
}

class FpsController extends GetxController implements RadioType {
  @override
  RxString a = RxString("30");

  @override
  List<String> adjustment = [
    "15",
    "30",
    "45",
    "60",
  ];

  @override
  String? title = "Frame Per Second(FPS)";

  @override
  void changeValue(String value) => a.value = value;
}
