import 'package:get/get.dart';

class LutAutoController extends GetxController {
  bool _isSwitched = false;

  void updateSwitch(bool value) {
    _isSwitched = value;
    update();
  }

  bool get isSwitched => _isSwitched;
}
