import 'package:get/get.dart';

class LightChangeController extends GetxController {
  List<bool> _isSelected = List.generate(5, (index) => false);

  void updateLights(int index) {
    for (int buttonIndex = 0; buttonIndex < _isSelected.length; buttonIndex++) {
      if (buttonIndex == index) {
        _isSelected[buttonIndex] = !_isSelected[buttonIndex];
      } else {
        _isSelected[buttonIndex] = false;
      }
    }
    update();
  }

  List<bool> get isSelected {
    return _isSelected;
  }
}
