import 'package:flutter/material.dart';
import 'package:flutter_desktop1/components/arrowButton.dart';
import 'package:flutter_desktop1/components/imageFrame.dart';
import 'package:flutter_desktop1/process_page.dart';
import 'package:get/get.dart';

import 'labeling_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  var showIcon = 'assets/images/Subtract_light.png';
  static final Color defaultColor = Color(0xffc4c4c4);
  static final Color deepColor = Color(0xff939393);
  var imagingColor = _MyHomePageState.deepColor;
  var processColor = _MyHomePageState.defaultColor;
  var labelingColor = _MyHomePageState.defaultColor;
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
                    onPressed: () {}, text: "  Imaging", color: imagingColor),
                ArrowButton(
                  text: "       Image Process",
                  color: processColor,
                  onPressed: () {
                    Get.offAll(ProcessPage(),
                        transition: Transition.noTransition,
                        duration: Duration(seconds: 0));
                  },
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
            Container(
              width: 300,
              height: 60,
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0))),
                color: defaultColor,
                margin: EdgeInsets.only(bottom: 0),
                child: TabBar(
                  unselectedLabelColor: Colors.black,
                  //define the style of the selected tab
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(0), color: deepColor),
                  tabs: [
                    Container(width: 40, child: Icon(Icons.directions_car)),
                    Container(width: 40, child: Icon(Icons.directions_transit)),
                    Container(width: 40, child: Icon(Icons.directions_bike)),
                  ],
                  controller: _controller,
                  physics: NeverScrollableScrollPhysics(),
                  isScrollable: true,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
              width: 300,
              height: 500,
              child: TabBarView(
                controller: _controller,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6))),
                    color: defaultColor,
                    margin: EdgeInsets.only(bottom: 0),
                    child: ListTile(
                      title: Text("2"),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6))),
                    margin: EdgeInsets.only(bottom: 0),
                    color: defaultColor,
                    child: ListTile(
                      title: Text("3"),
                    ),
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(6),
                              bottomRight: Radius.circular(6))),
                      margin: EdgeInsets.only(bottom: 0),
                      color: defaultColor,
                      child: Container(
                        child: Column(
                          children: [
                            RaisedButton(onPressed: () {}),
                            Text("hello")
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 65.0,
                      ),
                      ImageFrame(),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 65.0,
                      ),
                      ImageFrame(),
                    ],
                  ),
                ]),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(color: defaultColor),
              width: 1030,
              height: 150,
            )
          ],
        )
      ],
    );
  }
}
