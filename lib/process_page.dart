import 'package:flutter/material.dart';
import 'package:flutter_desktop1/components/setting_card.dart';
import 'package:flutter_desktop1/controller/page_bar_controller.dart';

import 'package:get/get.dart';

import 'components/image_frame.dart';
import 'components/page_bar.dart';
import 'components/top_menu_bar.dart';

class ProcessPage extends StatefulWidget {
  ProcessPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProcessPageState createState() => _ProcessPageState();
}

class _ProcessPageState extends State<ProcessPage> {
  MyController countController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      child: Scaffold(
        body: Container(
            width: 1920,
            height: 1080,
            child: Stack(
              children: [
                Positioned(
                    left: 30,
                    top: 10,
                    width: 500,
                    height: 300,
                    child: PageBar()),
                Positioned(
                  left: 30,
                  top: 90,
                  child: SettingTab(titles: [
                    'Conventional',
                    'AI'
                  ], contents: [
                    Column(
                      children: [],
                    ),
                    Column(
                      children: [],
                    ),
                  ]),
                ),
                Positioned(top: 110, left: 450, child: ImageFrame()),
                Positioned(top: 110, left: 1170, child: ImageFrame()),
                Positioned(top: 0, left: 0, child: TopMenuBar())
              ],
            )),
      ),
    );
  }
}
