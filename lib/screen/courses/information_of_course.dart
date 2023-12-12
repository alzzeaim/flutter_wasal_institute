import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/constant/text.dart';
import 'package:flutter_wasal_institute/screen/home_pages/home_firist_page.dart';
import 'package:flutter_wasal_institute/widget/app_bar_widget.dart';
import 'package:get/get.dart';

class InformationOfCourse extends StatefulWidget {
  const InformationOfCourse({super.key});

  @override
  State<InformationOfCourse> createState() => _InformationOfCourseState();
}

class _InformationOfCourseState extends State<InformationOfCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(cont: context,
        Title: "تفاصيل الدورة",
        backPage: () {
          Get.back();
        },
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(imageMeneger.splash2))),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(MyText.splash3,
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.titleLarge
                  //  TextStyle(
                  //   color: MyColors.black_color,
                  //   fontFamily: 'cairo',
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w600,
                  // ),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "ساعة",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    "50",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    MyText.textTimeOfCourse,
                    style: Theme.of(context).textTheme.bodyMedium,
                    //  TextStyle(
                    //   color: MyColors.black_halufe_Color,
                    //   fontFamily: 'cairo',
                    //   fontSize: 12,
                    //   fontWeight: FontWeight.w600,
                    // ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.access_time,
                    color: Colors.green,
                    size: 24,
                  ),
                  Spacer(),
                  Text(
                    "ساعة",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    "50",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    MyText.textTimeOfCourse,
                    style: Theme.of(context).textTheme.bodyMedium,
                    //  TextStyle(
                    //   color: MyColors.black_halufe_Color,
                    //   fontFamily: 'cairo',
                    //   fontSize: 12,
                    //   fontWeight: FontWeight.w600,
                    // ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.access_time,
                    color: Colors.green,
                    size: 24,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(MyText.textAboutCourse,
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.headlineLarge
                      //  TextStyle(
                      //   color: MyColors.black_color,
                      //   fontFamily: 'cairo',
                      //   fontSize: 16,
                      //   fontWeight: FontWeight.w600,
                      // ),
                      ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(MyText.textAboutCourse1,
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.bodyMedium
                  //  TextStyle(
                  //   color: MyColors.black_halufe_Color,
                  //   fontFamily: 'cairo',
                  //   fontSize: 12,
                  //   fontWeight: FontWeight.w600,
                  // ),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(MyText.textAboutCourse2,
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.headlineLarge
                      //  TextStyle(
                      //   color: MyColors.black_color,
                      //   fontFamily: 'cairo',
                      //   fontSize: 16,
                      //   fontWeight: FontWeight.w600,
                      // ),
                      ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(MyText.textAboutCourse3,
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.bodyMedium
                  //  TextStyle(
                  //   color: MyColors.black_halufe_Color,
                  //   fontFamily: 'cairo',
                  //   fontSize: 12,
                  //   fontWeight: FontWeight.w600,
                  // ),
                  ),
            ),
            Container(
              width: 428,
              height: 300,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(imageMeneger.logo22))),
            ),
          ],
        ),
      )),
    );
  }
}
