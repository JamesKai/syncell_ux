import 'package:get/get.dart';

class LightOnOffController extends GetxController {
  bool _isSwitched = false;

  void updateSwitch(bool value) {
    _isSwitched = value;
    update();
  }

  bool get isSwitched => _isSwitched;
}
