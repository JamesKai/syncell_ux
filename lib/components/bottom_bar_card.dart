import 'package:flutter/material.dart';

class BottomBarCard extends StatelessWidget {
  const BottomBarCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 1100,
      height: 180,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: EdgeInsets.zero,
        color: Theme.of(context).primaryColor,
        child: Stack(
          children: [],
        ),
      ),
    ));
  }
}
