import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/constant/text.dart';
import 'package:flutter_wasal_institute/screen/splash/splash1_page.dart';
import 'package:flutter_wasal_institute/screen/splash/splash_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  List pages = [
    {
      'image': imageMeneger.splash1,
      'text': MyText.splash1,
      'id': 0,
    },
    {
      'image': imageMeneger.splash2,
      'text': MyText.splash2,
      'id': 1,
    },
    {
      'image': imageMeneger.splash3,
      'text': MyText.splash3,
      'id': 2,
    },
    {
      'image': imageMeneger.splash4,
      'text': MyText.splash4,
      'id': 3,
    },
    {
      'image': imageMeneger.logo22,
      'text': "",
      'id': 4,
    },
  ];
  final controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          index == pages.length - 1 ? MyColors.MyBackGround : MyColors.MyAction,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: pages.length,
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                reverse: true,
                itemBuilder: (context, index) {
                  return Splash1Page(
                    text: pages[index]['text'],
                    url: pages[index]['image'],
                    endSplash: index == pages.length - 1,
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NextAndBack(
                    icon: FontAwesomeIcons.chevronLeft,
                    nextPage: () {
                      controller.nextPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.linear,
                      );
                    },
                  ),
                  Row(
                      textDirection: TextDirection.rtl,
                      children: pages
                          .map((e) => Bolet(selected: e["id"] == index))
                          .toList()),
                  NextAndBack(
                    icon: FontAwesomeIcons.chevronRight,
                    nextPage: () {
                      controller.previousPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.linear,
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
