import 'package:flutter/material.dart';

class LightSwitch extends StatelessWidget {
  final List<bool> isSelected;
  final void Function(int) onPressed;
  const LightSwitch(
      {Key key, @required this.isSelected, @required this.onPressed})
      : super(key: key);
  final double height = 26;
  final double width = 41;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        borderWidth: 0,
        renderBorder: false,
        fillColor: Theme.of(context).accentColor,
        selectedColor: Theme.of(context).accentColor,
        children: <Widget>[
          Container(
              width: width,
              height: height,
              child: Card(
                color: Colors.white,
              )),
          Container(
              width: width,
              height: height,
              child: Card(
                color: Colors.blue,
              )),
          Container(
              width: width,
              height: height,
              child: Card(
                color: Color(0xff48E14E),
              )),
          Container(
              width: width,
              height: height,
              child: Card(
                color: Color(0xffE16D48),
              )),
          Container(
              width: width,
              height: height,
              child: Card(
                color: Color(0xffDE48E1),
              )),
        ],
        onPressed: onPressed,
        isSelected: isSelected,
      ),
    );
  }
}
