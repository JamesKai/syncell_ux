import 'package:flutter/material.dart';
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
          Container(
            width: 350,
            height: 30,
          ),
          Positioned(
              left: 5,
              bottom: 8,
              child: Text(
                '0',
                style: TextStyle(color: Colors.grey[600]),
              )),
          Container(
            width: 250,
            height: 25,
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
              left: 233,
              bottom: 8,
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

class CustomSliderThumbRect extends SliderComponentShape {
  final double thumbRadius;
  final thumbHeight;
  final int min;
  final int max;

  const CustomSliderThumbRect({
    this.thumbRadius,
    this.thumbHeight,
    this.min,
    this.max,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double> activationAnimation,
    Animation<double> enableAnimation,
    bool isDiscrete,
    TextPainter labelPainter,
    RenderBox parentBox,
    SliderThemeData sliderTheme,
    TextDirection textDirection,
    double value,
    double textScaleFactor,
    Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final rRect = RRect.fromRectAndRadius(
      Rect.fromCenter(
          center: center, width: thumbHeight * 1.2, height: thumbHeight * .6),
      Radius.circular(thumbRadius * .4),
    );

    final paint = Paint()
      ..color = sliderTheme.activeTrackColor //Thumb Background Color
      ..style = PaintingStyle.fill;

    TextSpan span = new TextSpan(
        style: new TextStyle(
            fontSize: thumbHeight * .3,
            fontWeight: FontWeight.w700,
            color: sliderTheme.thumbColor,
            height: 1),
        text: '${getValue(value)}');
    TextPainter tp = new TextPainter(
        text: span,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr);
    tp.layout();
    Offset textCenter =
        Offset(center.dx - (tp.width / 2), center.dy - (tp.height / 2));

    canvas.drawRRect(rRect, paint);
    tp.paint(canvas, textCenter);
  }

  String getValue(double value) {
    return (min + (max - min) * value).round().toString();
  }
}
