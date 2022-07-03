import 'package:get/get_state_manager/get_state_manager.dart';

class LanguageProvider extends GetxController {
  bool _isTurkish = false;

  bool get isTurkish => _isTurkish;

  void changeLanguage() {
    _isTurkish = !_isTurkish;
    notifyChildrens();
  }
}
