import 'package:flutter/material.dart';
import 'package:flutter_desktop1/labeling_page.dart';
import 'package:flutter_desktop1/main.dart';
import 'package:get/get.dart';
import 'components/arrowButton.dart';

class ProcessPage extends StatefulWidget {
  ProcessPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProcessPageState createState() => _ProcessPageState();
}

class _ProcessPageState extends State<ProcessPage>
    with SingleTickerProviderStateMixin {
  var showIcon = 'assets/images/Subtract_light.png';
  static final Color defaultColor = Color(0xffc4c4c4);
  static final Color deepColor = Color(0xff939393);
  var imagingColor = _ProcessPageState.defaultColor;
  var processColor = _ProcessPageState.deepColor;
  var labelingColor = _ProcessPageState.defaultColor;

  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                ArrowButton(
                    onPressed: () {
                      Get.offAll(MyHomePage(),
                          transition: Transition.noTransition,
                          duration: Duration(seconds: 0));
                    },
                    text: "  Imaging",
                    color: imagingColor),
                ArrowButton(
                  text: "       Image Process",
                  color: processColor,
                  onPressed: () {},
                ),
                ArrowButton(
                  text: "  Labeling",
                  color: labelingColor,
                  onPressed: () {
                    Get.offAll(LabelingPage(),
                        transition: Transition.noTransition,
                        duration: Duration(seconds: 0));
                  },
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ],
    );
  }
}
