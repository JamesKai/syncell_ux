import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class LUT_RangeSliderController extends GetxController {
  RangeValues rangeValues = const RangeValues(20000, 48000);

  void updateValues(RangeValues values) {
    rangeValues = values;
    update();
  }
}
