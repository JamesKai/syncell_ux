import 'package:flutter/material.dart';
import 'package:flutter_desktop1/components/image_frame.dart';
import 'package:flutter_desktop1/components/light_switch.dart';
import 'package:flutter_desktop1/components/page_bar.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:getwidget/getwidget.dart';
import 'components/setting_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget),
        maxWidth: 2180,
        minWidth: 1920,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(1920, name: DESKTOP),
          ResponsiveBreakpoint.resize(2180, name: DESKTOP),
        ],
      ),
      title: 'Flutter Web',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xffc4c4c4),
        accentColor: Color(0xffAAAAAAA),
        textTheme: Typography.blackMountainView,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: PageBar(),
            ),
            Positioned(
              left: 30,
              top: 90,
              child: SettingTab(titles: [
                'Acquire Image',
                'Acquuire Multilayer Image'
              ], contents: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [],
                ),
                Column(
                  children: [
                    //
                  ],
                ),
              ]),
            ),
            Positioned(top: 110, left: 450, child: ImageFrame()),
            Positioned(top: 110, left: 1170, child: ImageFrame())
          ],
        ),
      ),
    );
  }
}
