import 'package:flutter/material.dart';
import 'package:flutter_desktop1/components/drop_down_menu.dart';
import 'package:flutter_desktop1/components/light_switch.dart';
import 'package:flutter_desktop1/components/range_slider.dart';
import 'package:flutter_desktop1/components/text_field_input.dart';
import 'package:flutter_desktop1/controller/light_change_controller.dart';
import 'package:flutter_desktop1/controller/light_on_off_switch_controller.dart';
import 'package:flutter_desktop1/controller/light_text_field_controller.dart';
import 'package:flutter_desktop1/controller/lut_auto_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LightCard extends StatelessWidget {
  const LightCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LightOnOffController lightOnOffcontroller = Get.put(LightOnOffController());
    LightChangeController lightChangeController =
        Get.put(LightChangeController());
    // ignore: unused_local_variable
    GetLightTextController _textController = Get.put(GetLightTextController());
    LutAutoController lutAutoController = Get.put(LutAutoController());
    return Container(
      child: Card(
        color: Theme.of(context).primaryColor,
        margin: EdgeInsets.zero,
        child: Stack(
          children: [
            Positioned(
              left: 25,
              top: 30,
              child: Text('Light',
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w500)),
            ),
            Positioned(
              left: 110,
              top: 20,
              height: 27,
              child: GetBuilder<LightChangeController>(
                builder: (_) => Center(
                  child: LightSwitch(
                    isSelected: _.isSelected,
                    onPressed: (index) =>
                        lightChangeController.updateLights(index),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 25,
              top: 72,
              child: Text('Objective',
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w500)),
            ),
            Positioned(
                left: 180,
                top: 65,
                child:
                    ObjDropDown(dropDownItems: <String>['40x', '60x', '10x'])),
            Positioned(
              left: 25,
              top: 120,
              child: Text('LUT',
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w500)),
            ),
            Positioned(
              left: 62,
              top: 104,
              child: GetBuilder<LutAutoController>(
                builder: (_) => Container(
                  child: Switch(
                    activeColor: Colors.black,
                    onChanged: (bool value) {
                      lutAutoController.updateSwitch(value);
                    },
                    value: _.isSwitched,
                  ),
                ),
              ),
            ),
            Positioned(
                left: 118,
                top: 107,
                width: 250,
                height: 50,
                child: LUT_RangeSlider()),
            Positioned(
              top: 163,
              left: 25,
              child: Text('Exposure Time',
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w500)),
            ),
            Positioned(
              left: 180,
              top: 160,
              child: GetBuilder<GetLightTextController>(
                  builder: (_) => MyTextField(controller: _.controller)),
            ),
            Positioned(
              top: 163,
              left: 255,
              child: Text('ms',
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w500)),
            ),
            Positioned(
              left: 25,
              top: 209,
              child: Text('Dia Lamp',
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w500)),
            ),
            Positioned(
              left: 90,
              top: 193,
              child: GetBuilder<LightOnOffController>(
                builder: (_) => Container(
                  child: Switch(
                    activeColor: Colors.black,
                    onChanged: (bool value) {
                      lightOnOffcontroller.updateSwitch(value);
                    },
                    value: _.isSwitched,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 160,
              top: 193,
              width: 170,
              height: 48,
              child: LampSlider(),
            )
          ],
        ),
      ),
    );
  }
}
