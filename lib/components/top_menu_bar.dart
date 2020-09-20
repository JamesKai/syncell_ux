import 'package:flutter/material.dart';
import 'package:flutter_desktop1/components/popup_menu_button.dart';

class TopMenuBar extends StatelessWidget {
  const TopMenuBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 1920,
        height: 20,
        color: Colors.black,
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            TopPopupMenuButton(
              name: 'File',
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            TopPopupMenuButton(
              name: 'Setting',
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            TopPopupMenuButton(
              name: 'Help',
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
