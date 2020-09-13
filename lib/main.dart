import 'package:flutter/material.dart';
import 'package:flutter_desktop1/components/arrow_button.dart';
import 'package:flutter_desktop1/components/image_frame.dart';
import 'package:flutter_desktop1/components/page_bar.dart';
import 'package:flutter_desktop1/components/setting_card.dart';
import 'package:flutter_desktop1/process_page.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'controller/page_bar_controller.dart';
import 'labeling_page.dart';

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
    return Container(
      width: 1920,
      height: 1080,
      child: Stack(
        children: [
          Positioned(
              left: 30, top: 10, width: 500, height: 300, child: PageBar())
        ],
      ),
    );
  }
}
