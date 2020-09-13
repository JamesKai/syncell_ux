import 'package:flutter/material.dart';
import 'package:flutter_desktop1/components/edit_card.dart';
import 'package:flutter_desktop1/components/light_card.dart';

class SettingTab extends StatelessWidget {
  final List<String> titles;
  final List<Widget> contents;
  const SettingTab({
    Key key,
    @required this.titles,
    @required this.contents,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 400,
      height: 800,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: EdgeInsets.zero,
        color: Color(0xff939393),
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: 270,
              right: 10,
              height: 400,
              child: EditCard(
                titles: titles,
                contents: contents,
              ),
            ),
            Positioned(
                left: 10, right: 10, top: 10, height: 250, child: LightCard()),
          ],
        ),
      ),
    ));
  }
}
