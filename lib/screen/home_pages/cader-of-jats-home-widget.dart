import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../CaderJats/cader_page.dart';

class CaderOfJatsHomeWidget extends StatelessWidget {
  bool slect;
  final URL_Image;
  CaderOfJatsHomeWidget({
    super.key,
    required this.URL_Image,
    required this.slect,
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
            image: DecorationImage(
                image: AssetImage(URL_Image), fit: BoxFit.cover)),

        child: !slect
            ? null
            : GestureDetector(
                onTap: () {
                  Get.to(() => const CaderPage());
                },
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(0.9),
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(100)),
                  child: Center(
                      child: Text(
                    "+20",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: MyColors.whiteColor, fontSize: 14),
                  )),
                ),
              ),
      ),
    );
  }
}
