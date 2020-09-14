import 'package:get/get.dart';

class ObjController extends GetxController {
  String dropDownValue = "";

  void updateDropDownValue(String newVal) {
    dropDownValue = newVal;
    update();
  }
}
