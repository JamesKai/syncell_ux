import 'package:control_pad/control_pad.dart';
import 'package:control_pad/models/pad_button_item.dart';
import 'package:control_pad/views/joystick_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desktop1/controller/lamp_slider_controller.dart';
import 'package:flutter_desktop1/controller/light_change_controller.dart';
import 'package:get/get.dart';

class ControlPad extends StatelessWidget {
  final LampSliderController controller = Get.put(LampSliderController());
  @override
  Widget build(BuildContext context) {
    return PadButtonsView(
      buttons: [
        PadButtonItem(
            index: 0,
            buttonIcon: Icon(Icons.arrow_forward_sharp),
            pressedColor: Theme.of(context).accentColor),
        PadButtonItem(
            index: 1,
            buttonIcon: Icon(Icons.arrow_downward_rounded),
            pressedColor: Theme.of(context).accentColor),
        PadButtonItem(
            index: 2,
            buttonIcon: Icon(Icons.arrow_back_outlined),
            pressedColor: Theme.of(context).accentColor),
        PadButtonItem(
            index: 3,
            buttonIcon: Icon(Icons.arrow_upward_rounded),
            pressedColor: Theme.of(context).accentColor),
      ],
      size: 100,
      padButtonPressedCallback: (buttonIndex, gesture) {
        buttonIndex == 0
            ? controller.updateValue(controller.value + 1)
            : buttonIndex == 2
                ? controller.updateValue(controller.value - 1)
                : controller.updateValue(controller.value);
      },
    );
  }
}
