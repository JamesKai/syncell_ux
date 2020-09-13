import 'package:flutter/material.dart';

class MyCustomShapePainter extends CustomPainter {
  List<Point> shapePath = [];
  Color shapeColor = Color(0xffc4c4c4);

  MyCustomShapePainter({this.shapePath, this.shapeColor});
  MyCustomShapePainter.triangle() {
    this.shapePath = <Point>[Point(0, 0), Point(0, 100), Point(100, 0)];
  }
  @override
  void paint(Canvas canvas, Size size) {
    Paint shapePaint = Paint();
    shapePaint
      ..color = shapeColor
      ..style = PaintingStyle.fill;
    // drawPathFromPoints(canvas, shapePaint, points: shapePath);
    drawArrow(canvas, shapePaint, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

  void drawPathFromPoints(Canvas canvas, Paint paint,
      {List<Point> points = const <Point>[],
      List<List<double>> array = const [
        [0, 0]
      ]}) {
    Path path = Path();
    var startPoint = points[0] ?? arrayToPoints(array)[0];
    path.moveTo(startPoint.x, startPoint.y);
    for (int i = 1; i < points.length; i++) {
      path.lineTo(points[i].x, points[i].y);
    }
    path.lineTo(startPoint.x, startPoint.y);
    canvas.drawPath(path, paint);
  }

  List<Point> arrayToPoints(List<List<double>> array) {
    var pointArray = <Point>[];
    array.forEach((element) {
      pointArray.add(Point(element[0], element[1]));
    });
    return pointArray;
  }

  void drawArrow(Canvas canvas, Paint paint, Size size) {
    Path path = Path();
    final double _xScaling = size.width / 149.7;
    final double _yScaling = size.height / 42;
    path.lineTo(124.326 * _xScaling, 1.4521 * _yScaling);
    path.cubicTo(
      124.326 * _xScaling,
      1.4521 * _yScaling,
      153.284 * _xScaling,
      19.4521 * _yScaling,
      153.284 * _xScaling,
      19.4521 * _yScaling,
    );
    path.cubicTo(
      155.172 * _xScaling,
      20.6259 * _yScaling,
      155.172 * _xScaling,
      23.3741 * _yScaling,
      153.284 * _xScaling,
      24.5479 * _yScaling,
    );
    path.cubicTo(
      153.284 * _xScaling,
      24.5479 * _yScaling,
      124.326 * _xScaling,
      42.5479 * _yScaling,
      124.326 * _xScaling,
      42.5479 * _yScaling,
    );
    path.cubicTo(
      123.85 * _xScaling,
      42.8434 * _yScaling,
      123.302 * _xScaling,
      43 * _yScaling,
      122.742 * _xScaling,
      43 * _yScaling,
    );
    path.cubicTo(
      122.742 * _xScaling,
      43 * _yScaling,
      6.90382 * _xScaling,
      43 * _yScaling,
      6.90382 * _xScaling,
      43 * _yScaling,
    );
    path.cubicTo(
      6.18102 * _xScaling,
      43 * _yScaling,
      5.51793 * _xScaling,
      42.7444 * _yScaling,
      5 * _xScaling,
      42.3186 * _yScaling,
    );
    path.cubicTo(
      5 * _xScaling,
      42.3186 * _yScaling,
      37.6885 * _xScaling,
      22 * _yScaling,
      37.6885 * _xScaling,
      22 * _yScaling,
    );
    path.cubicTo(
      37.6885 * _xScaling,
      22 * _yScaling,
      5 * _xScaling,
      1.68137 * _yScaling,
      5 * _xScaling,
      1.68137 * _yScaling,
    );
    path.cubicTo(
      5.51792 * _xScaling,
      1.25561 * _yScaling,
      6.18102 * _xScaling,
      1 * _yScaling,
      6.90381 * _xScaling,
      1 * _yScaling,
    );
    path.cubicTo(
      6.90381 * _xScaling,
      1 * _yScaling,
      122.742 * _xScaling,
      1 * _yScaling,
      122.742 * _xScaling,
      1 * _yScaling,
    );
    path.cubicTo(
      123.302 * _xScaling,
      1 * _yScaling,
      123.85 * _xScaling,
      1.1566 * _yScaling,
      124.326 * _xScaling,
      1.4521 * _yScaling,
    );
    path.cubicTo(
      124.326 * _xScaling,
      1.4521 * _yScaling,
      124.326 * _xScaling,
      1.4521 * _yScaling,
      124.326 * _xScaling,
      1.4521 * _yScaling,
    );
    canvas.drawPath(path, paint);
  }
}

class Point {
  double x = 0.0;
  double y = 0.0;

  Point(this.x, this.y);
}
