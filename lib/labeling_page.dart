import 'package:flutter/material.dart';
import 'package:flutter_desktop1/main.dart';
import 'package:flutter_desktop1/process_page.dart';
import 'package:get/get.dart';
import 'components/arrow_button.dart';
import 'components/page_bar.dart';
import 'components/setting_card.dart';

class LabelingPage extends StatefulWidget {
  LabelingPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LabelingPageState createState() => _LabelingPageState();
}

class _LabelingPageState extends State<LabelingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  children: [
                    Text('hello'),
                    MaterialButton(child: Text('I am button'), onPressed: () {})
                  ],
                ),
                Column(
                  children: [],
                ),
              ]),
            )
          ],
        ));
  }
}
