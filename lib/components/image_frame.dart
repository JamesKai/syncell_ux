import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageFrame extends StatelessWidget {
  final DecorationImage image;
  const ImageFrame({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        width: 700,
        height: 700,
        decoration: BoxDecoration(
          color: const Color(0xffC4C4C4),
          image: image,
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

class ImageController extends GetxController {
  DecorationImage oweImage = DecorationImage(
      image: NetworkImage(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
      fit: BoxFit.cover);

  DecorationImage molecularImage = DecorationImage(
      image: NetworkImage(
          'https://www.moleculardevices.com/sites/default/files/products/gallery/cells-03_0.jpg'),
      fit: BoxFit.cover);
}
