import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  static final Color defaultColor = Color(0xffc4c4c4);
  static final Color deepColor = Color(0xff939393);
  Color imagingColor = Color(0xffc4c4c4);
  Color processColor = Color(0xffc4c4c4);
  Color labelingColor = Color(0xffc4c4c4);

  void updateColor(PageName pageName) {
    if (PageName.imaging == pageName) {
      resetAllColor();
      imagingColor = deepColor;
      update();
      print(imagingColor.toString());
    } else if (PageName.process == pageName) {
      resetAllColor();
      processColor = deepColor;
      update();
    } else if (PageName.labeling == pageName) {
      resetAllColor();
      labelingColor = deepColor;
      update();
    }
  }

  void resetAllColor() {
    imagingColor = defaultColor;
    processColor = defaultColor;
    labelingColor = defaultColor;
  }
}

enum PageName { imaging, process, labeling }
