import 'package:get/state_manager.dart';

abstract class RadioType {
  String? title;
  List<String>? adjustment;
  RxString? val;

  void changeValue(String value);
}

//
//

class ResolutionController extends GetxController implements RadioType {
  @override
  String? title = "Resolution";

  @override
  RxString? val = RxString("360P");

  @override
  List<String>? adjustment = [
    "360P",
    "480P",
    "720P",
    "1080P",
  ];

  @override
  void changeValue(value) => val!.value = value;
}

//
//

class OrientationController extends GetxController implements RadioType {
  @override
  String? title = "Orientation";
  @override
  RxString? val = RxString("Auto");

  @override
  List<String>? adjustment = [
    "Auto",
    "Portrait",
    "Landscape",
  ];

  @override
  void changeValue(value) => val!.value = value;
}

//
//

class BitrateController extends GetxController implements RadioType {
  @override
  RxString? val = RxString("3.5(Low)");

  @override
  List<String>? adjustment = [
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
  void changeValue(String value) => val!.value = value;
}

//
//

class FpsController extends GetxController implements RadioType {
  @override
  RxString? val = RxString("30");

  @override
  List<String>? adjustment = [
    "15",
    "30",
    "45",
    "60",
  ];

  @override
  String? title = "Frame Per Second(FPS)";

  @override
  void changeValue(String value) => val!.value = value;
}
