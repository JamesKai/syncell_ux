import 'package:flutter/material.dart';
import 'package:flutter_desktop1/controller/lamp_slider_controller.dart';
import 'package:flutter_desktop1/controller/lut_range_slider_controller.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class LUT_RangeSlider extends StatelessWidget {
  LUT_RangeSlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LUT_RangeSliderController controller = Get.put(LUT_RangeSliderController());

    return Center(
      child: Stack(
        children: [
          Positioned(
              left: 5,
              top: 14,
              child: Text(
                '0',
                style: TextStyle(color: Colors.grey[600]),
              )),
          Positioned(
            left: 0,
            width: 210,
            bottom: 3,
            child: GetBuilder<LUT_RangeSliderController>(
              builder: (_) => RangeSlider(
                values: _.rangeValues,
                activeColor: Colors.black,
                inactiveColor: Theme.of(context).accentColor,
                min: 0,
                max: 65535,
                divisions: 1000,
                labels: RangeLabels(
                  _.rangeValues.start.round().toString(),
                  _.rangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  controller.updateValues(values);
                },
              ),
            ),
          ),
          Positioned(
              left: 200,
              top: 14,
              width: 60,
              child: Text(
                '65535',
                style: TextStyle(color: Colors.grey[600]),
              ))
        ],
      ),
    );
  }
}

class LampSlider extends StatelessWidget {
  LampSlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LampSliderController controller = Get.put(LampSliderController());

    return Center(
      child: Stack(
        children: [
          Positioned(
              left: 0,
              top: 18,
              child: Text(
                '0',
                style: TextStyle(color: Colors.grey[600]),
              )),
          Positioned(
            left: 10,
            width: 160,
            bottom: 0,
            child: GetBuilder<LampSliderController>(
              builder: (_) => Slider(
                value: _.value,
                activeColor: Colors.black,
                inactiveColor: Theme.of(context).accentColor,
                min: 0,
                max: 100,
                divisions: 100,
                label: _.value.round().toString(),
                onChanged: (double value) {
                  controller.updateValue(value);
                },
              ),
            ),
          ),
          Positioned(
              left: 200,
              top: 14,
              width: 60,
              child: Text(
                '100',
                style: TextStyle(color: Colors.grey[600]),
              ))
        ],
      ),
    );
  }
}
