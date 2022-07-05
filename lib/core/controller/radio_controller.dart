import 'package:get/state_manager.dart';

enum Resolution { p360, p480, p720, p1080 }

class RadioController extends GetxController {
  Rx<Resolution> a = Rx(Resolution.p360);

  void changeValue(Resolution value) {
    a.value = value;
  }
}
