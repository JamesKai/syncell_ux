import 'package:flutter/material.dart';
import 'package:flutter_desktop1/controller/range_slider_controller.dart';
import 'package:get/get.dart';

class GeneralRangeSlider extends StatelessWidget {
  GeneralRangeSlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyRangeSlider controller = Get.put(MyRangeSlider());

    return Container(
      // color: Colors.white,
      width: 300,
      height: 30,
      child: GetBuilder<MyRangeSlider>(
        builder: (_) => RangeSlider(
          activeColor: Color(0xffc4c4c4),
          inactiveColor: Color(0xff939393),
          values: _.rangeValues,
          min: 0,
          max: 100,
          divisions: 10,
          labels: RangeLabels(
            _.rangeValues.start.round().toString(),
            _.rangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            controller.updateValues(values);
          },
        ),
      ),
    );
  }
}
