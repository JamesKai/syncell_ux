import 'package:flutter/material.dart';

class ImageFrame extends StatelessWidget {
  const ImageFrame({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        width: 700,
        height: 700,
        decoration: BoxDecoration(
          color: const Color(0xffC4C4C4),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              fit: BoxFit.cover),
          border: Border.all(
            color: const Color(0xffC4C4C4),
            width: 10,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
