import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyRangeSlider extends GetxController {
  RangeValues rangeValues = const RangeValues(0, 100);

  void updateValues(RangeValues values) {
    rangeValues = values;
    update();
  }
}
