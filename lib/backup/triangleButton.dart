import 'package:flutter/material.dart';
import 'package:flutter_desktop1/backup/custom_shape_helper.dart';

class TriangleButton extends StatelessWidget {
  final String text;
  final Color color;
  final void Function() onPressed;
  TriangleButton({Key key, this.text, this.color, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyCustomShapePainter(shapeColor: color ?? Colors.black),
      child: Container(
          width: 149.7,
          height: 42,
          child: MaterialButton(
              child: Text(
                text ?? "",
                style: TextStyle(fontSize: 15),
              ),
              onPressed: onPressed ?? () {})),
    );
  }
}
