import 'package:flutter/material.dart';

class LightButton extends StatelessWidget {
  final Color color;
  final void Function() onPressed;
  const LightButton({Key key, @required this.color, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 30,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: color,
        onPressed: onPressed,
      ),
    );
  }
}

class GreenButton extends StatelessWidget {
  const GreenButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LightButton(color: Colors.green, onPressed: () {});
  }
}

class BlueButton extends StatelessWidget {
  const BlueButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GreenButton(),
      LightButton(color: Colors.blue.withOpacity(0.6), onPressed: () {})
    ]);
  }
}

class WhiteButton extends StatelessWidget {
  const WhiteButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LightButton(color: Colors.white, onPressed: () {});
  }
}
