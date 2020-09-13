import 'package:flutter/material.dart';

class EditCard extends StatefulWidget {
  final List<String> titles;
  final List<Widget> contents;

  const EditCard({
    Key key,
    @required this.titles,
    @required this.contents,
  }) : super(key: key);

  @override
  _TestStack createState() => _TestStack();
}

class _TestStack extends State<EditCard> with SingleTickerProviderStateMixin {
  static final Color defaultColor = Color(0xffc4c4c4);
  static final Color deepColor = Color(0xff939393);

  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: widget.titles.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        left: 0,
        top: 0,
        height: 35,
        right: 0,
        child: Container(
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
              controller: _controller,
              unselectedLabelColor: Colors.black,
              //define the style of the selected tab
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(0), color: deepColor),
              tabs: <Widget>[for (String title in widget.titles) Text(title)],
              physics: NeverScrollableScrollPhysics(),
              isScrollable: true,
            ),
          ),
        ),
      ),
      Positioned(
        left: 0,
        top: 35,
        right: 0,
        height: 300,
        child: Container(
          child: TabBarView(controller: _controller, children: <Widget>[
            for (Widget item in widget.contents)
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                          bottomLeft: Radius.circular(6),
                          bottomRight: Radius.circular(6))),
                  color: defaultColor,
                  margin: EdgeInsets.only(bottom: 0),
                  child: item)
          ]),
        ),
      ),
    ]);
  }
}
