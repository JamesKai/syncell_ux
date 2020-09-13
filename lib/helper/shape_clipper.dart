import 'package:flutter/material.dart';

class MyShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 152;
    final double _yScaling = size.height / 44;
    path.lineTo(120.326 * _xScaling, 1.4521 * _yScaling);
    path.cubicTo(
      120.326 * _xScaling,
      1.4521 * _yScaling,
      149.284 * _xScaling,
      19.4521 * _yScaling,
      149.284 * _xScaling,
      19.4521 * _yScaling,
    );
    path.cubicTo(
      151.172 * _xScaling,
      20.6259 * _yScaling,
      151.172 * _xScaling,
      23.3741 * _yScaling,
      149.284 * _xScaling,
      24.5479 * _yScaling,
    );
    path.cubicTo(
      149.284 * _xScaling,
      24.5479 * _yScaling,
      120.326 * _xScaling,
      42.5479 * _yScaling,
      120.326 * _xScaling,
      42.5479 * _yScaling,
    );
    path.cubicTo(
      119.85 * _xScaling,
      42.8434 * _yScaling,
      119.302 * _xScaling,
      43 * _yScaling,
      118.742 * _xScaling,
      43 * _yScaling,
    );
    path.cubicTo(
      118.742 * _xScaling,
      43 * _yScaling,
      2.90382 * _xScaling,
      43 * _yScaling,
      2.90382 * _xScaling,
      43 * _yScaling,
    );
    path.cubicTo(
      2.18102 * _xScaling,
      43 * _yScaling,
      1.51793 * _xScaling,
      42.7444 * _yScaling,
      1 * _xScaling,
      42.3186 * _yScaling,
    );
    path.cubicTo(
      1 * _xScaling,
      42.3186 * _yScaling,
      33.6885 * _xScaling,
      22 * _yScaling,
      33.6885 * _xScaling,
      22 * _yScaling,
    );
    path.cubicTo(
      33.6885 * _xScaling,
      22 * _yScaling,
      1 * _xScaling,
      1.68137 * _yScaling,
      1 * _xScaling,
      1.68137 * _yScaling,
    );
    path.cubicTo(
      1.51792 * _xScaling,
      1.25561 * _yScaling,
      2.18102 * _xScaling,
      1 * _yScaling,
      2.90381 * _xScaling,
      1 * _yScaling,
    );
    path.cubicTo(
      2.90381 * _xScaling,
      1 * _yScaling,
      118.742 * _xScaling,
      1 * _yScaling,
      118.742 * _xScaling,
      1 * _yScaling,
    );
    path.cubicTo(
      119.302 * _xScaling,
      1 * _yScaling,
      119.85 * _xScaling,
      1.1566 * _yScaling,
      120.326 * _xScaling,
      1.4521 * _yScaling,
    );
    path.cubicTo(
      120.326 * _xScaling,
      1.4521 * _yScaling,
      120.326 * _xScaling,
      1.4521 * _yScaling,
      120.326 * _xScaling,
      1.4521 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
