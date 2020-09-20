import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class TopPopupMenuButton extends StatelessWidget {
  final Color color;

  final String name;

  const TopPopupMenuButton({Key key, this.color, @required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: Offset(0, 100),
      onCanceled: () {
        Get.back();
      },
      child: Text(
        name,
        style: TextStyle(color: color, fontSize: 12),
      ),
      tooltip: 'Open $name',
      itemBuilder: (context) => <PopupMenuItem>[
        PopupMenuItem(
            height: 50,
            value: 1,
            child: TopPopupMenuButton(
              name: name,
              color: Colors.black,
            )),
        PopupMenuItem(
            value: 2,
            child: TopPopupMenuButton(name: name, color: Colors.black)),
      ],
    );
  }
}
