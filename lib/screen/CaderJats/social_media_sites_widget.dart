import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class SocialMediaSites extends StatelessWidget {
  final URL_Image;
  const SocialMediaSites({super.key, required this.URL_Image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24, left: 10),
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: MyColors.MyAction,
      ),
      child: Image(image: AssetImage(URL_Image)),
    );
  }
}
