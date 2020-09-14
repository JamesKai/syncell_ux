import 'package:flutter/material.dart';
import 'package:flutter_desktop1/components/setting_card.dart';
import 'package:flutter_desktop1/controller/page_bar_controller.dart';

import 'package:get/get.dart';

import 'components/page_bar.dart';

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
    return Scaffold(
      body: Container(
          width: 1920,
          height: 1080,
          child: Stack(
            children: [
              Positioned(
                  left: 30, top: 10, width: 500, height: 300, child: PageBar()),
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
              )
            ],
          )),
    );
  }
}
