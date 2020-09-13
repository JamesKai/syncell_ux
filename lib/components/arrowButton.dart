import 'package:flutter/material.dart';
import 'package:flutter_desktop1/helper/shape_clipper.dart';

class ArrowButton extends StatelessWidget {
  ArrowButton({this.color, @required this.text, @required this.onPressed});
  String text;
  final Color color;
  void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyShapeClipper(),
      child: Container(
        decoration: BoxDecoration(
          color: color ?? Color(0xff939393),
          boxShadow: [
            BoxShadow(
              // color: Colors.black.withOpacity(0.5),
              spreadRadius: 50,
              blurRadius: 50,
              // changes position of shadow
            ),
          ],
        ),
        height: 44.0,
        width: 152.0,
        child: MaterialButton(
          child: Text(this.text),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
