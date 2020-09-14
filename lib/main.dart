import 'package:flutter/material.dart';
import 'package:flutter_desktop1/components/light_button.dart';
import 'package:flutter_desktop1/components/page_bar.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
        maxWidth: 2460,
        minWidth: 1200,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ResponsiveBreakpoint.resize(1800, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: '4K'),
        ],
      ),
      title: 'Flutter Web',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xffc4c4c4),
        accentColor: Color(0xff939393),
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

class _MyHomePageState extends State<MyHomePage> {
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
                  children: [GreenButton(), BlueButton(), WhiteButton()],
                ),
                Column(
                  children: [],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
