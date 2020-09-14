import 'package:flutter/material.dart';
import 'package:flutter_desktop1/components/drop_down_menu.dart';
import 'package:flutter_desktop1/components/range_slider.dart';

class LightCard extends StatelessWidget {
  const LightCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.zero,
        child: Column(
          children: [MyDropDownButton(), GeneralRangeSlider()],
        ),
      ),
    );
  }
}
