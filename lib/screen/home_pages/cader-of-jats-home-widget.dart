import 'package:flutter/material.dart';

class CaderOfJatsHomeWidget extends StatelessWidget {
  final URL_Image;
  const CaderOfJatsHomeWidget({
    super.key,
    required this.URL_Image,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        // alignment: Alignment.topRight,
        width: 65,
        height: 65,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(image: AssetImage(URL_Image))),
      ),
    );
  }
}