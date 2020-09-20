import 'package:flutter/material.dart';

import 'components/page_bar.dart';
import 'components/setting_card.dart';
import 'components/top_menu_bar.dart';

class LabelingPage extends StatefulWidget {
  LabelingPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LabelingPageState createState() => _LabelingPageState();
}

class _LabelingPageState extends State<LabelingPage> {
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
                    'Labeling',
                    'Label Setting'
                  ], contents: [
                    Column(
                      children: [],
                    ),
                    Column(
                      children: [],
                    ),
                  ]),
                ),
                Positioned(top: 0, left: 0, child: TopMenuBar())
              ],
            )),
      ),
    );
  }
}
