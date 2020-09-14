import 'package:flutter/material.dart';
import 'package:flutter_desktop1/components/drop_down_menu.dart';
import 'package:flutter_desktop1/components/range_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class LightCard extends StatelessWidget {
  const LightCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Theme.of(context).primaryColor,
        margin: EdgeInsets.zero,
        child: Stack(
          children: [
            Positioned(
              left: 20,
              top: 65,
              child: Text('Objective',
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w400)),
            ),
            Positioned(
                left: 180,
                top: 60,
                child:
                    ObjDropDown(dropDownItems: <String>['40x', '60x', '10x'])),
            Positioned(
              left: 28,
              top: 120,
              child: Text('LUT',
                  style: GoogleFonts.roboto(fontWeight: FontWeight.w400)),
            ),
            Positioned(left: 90, top: 118, child: LUT_RangeSlider()),
          ],
        ),
      ),
    );
  }
}
