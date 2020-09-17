import 'package:get/get.dart';

class LampSliderController extends GetxController {
  double value = 0;

  void updateValue(double newValue) {
    value = newValue;
    update();
  }
}
