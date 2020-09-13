import 'package:flutter/material.dart';
import 'package:flutter_desktop1/components/arrow_button.dart';
import 'package:flutter_desktop1/controller/page_bar_controller.dart';
import 'package:flutter_desktop1/main.dart';
import 'package:get/get.dart';
import '../labeling_page.dart';
import '../process_page.dart';

class PageBar extends StatelessWidget {
  const PageBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyController pageColorController = Get.put(MyController());
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 20,
          child: GetBuilder<MyController>(
            builder: (_) => ArrowButton(
                onPressed: () {
                  pageColorController.updateColor(PageName.imaging);
                  Get.offAll(MyHomePage(),
                      transition: Transition.noTransition,
                      duration: Duration(seconds: 0));
                },
                text: '    Imaging',
                color: _.imagingColor),
          ),
        ),
        Positioned(
            left: 132,
            top: 20,
            child: GetBuilder<MyController>(
              builder: (_) => ArrowButton(
                  text: "       Image Process",
                  color: _.processColor,
                  onPressed: () {
                    pageColorController.updateColor(PageName.process);
                    Get.offAll(ProcessPage(),
                        transition: Transition.noTransition,
                        duration: Duration(seconds: 0));
                  }),
            )),
        Positioned(
          left: 264,
          top: 20,
          child: GetBuilder<MyController>(
            builder: (_) => ArrowButton(
                text: "  Labeling",
                color: _.labelingColor,
                onPressed: () {
                  pageColorController.updateColor(PageName.labeling);
                  Get.offAll(LabelingPage(),
                      transition: Transition.noTransition,
                      duration: Duration(seconds: 0));
                }),
          ),
        )
      ],
    );
  }
}
