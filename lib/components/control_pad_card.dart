import 'package:flutter/material.dart';
import 'package:flutter_desktop1/components/text_field_input.dart';
import 'package:flutter_desktop1/controller/light_text_field_controller.dart';

import 'control_pad.dart';

class ControlPadCard extends StatelessWidget {
  const ControlPadCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 240,
      height: 180,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: EdgeInsets.zero,
        color: Theme.of(context).primaryColor,
        child: Stack(
          children: [
            Positioned(
                left: 30,
                top: 75,
                child: MyTextField(controller: LightTextController())),
            Positioned(left: 115, top: 40, child: ControlPad()),
          ],
        ),
      ),
    ));
  }
}
