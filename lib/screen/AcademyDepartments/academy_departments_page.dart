import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/constant/text.dart';
import 'package:flutter_wasal_institute/widget/AppBar/app_bar_widget.dart';
import 'package:flutter_wasal_institute/widget/AppBar/top_search_widget.dart';
import 'package:get/get.dart';

import 'departmant_widget.dart';

class AcademyDepartmentsPage extends StatefulWidget {
  const AcademyDepartmentsPage({super.key});

  @override
  State<AcademyDepartmentsPage> createState() => _AcademyDepartmentsPageState();
}

class _AcademyDepartmentsPageState extends State<AcademyDepartmentsPage> {
  List<Map<String, dynamic>> map_item = [
    {'text': MyText.textAll},
    {'text': MyText.textDepartmentEnglash},
    {'text': MyText.textDepartmentAccounting},
    {'text': MyText.textDepartmentComputer},
    {'text': MyText.textDepartmentGraphics},
    {'text': MyText.textDepartmentScientificCourses},
    {'text': MyText.textDepartmentSecondaryReinforcement},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(
        cont: context,
        Title: "أقسام الاكاديمية",
        backPage: () {
          Get.back();
        },
      ),
      // endDrawer: DrawerWidget.drawerWidget(context),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const TopSearchWidget(),
            // TopScroller(),
            Column(
              children: [
                DepartmantWidget(
                    numberOfCourses: "15",
                    title: MyText.textDepartmentEnglash,
                    url: imageMeneger.cam1),
                DepartmantWidget(
                  numberOfCourses: "70",
                  title: MyText.textDepartmentAccounting,
                  url: imageMeneger.cam2,
                ),
                DepartmantWidget(
                  numberOfCourses: "30",
                  title: MyText.textDepartmentComputer,
                  url: imageMeneger.cam3,
                ),
                DepartmantWidget(
                  numberOfCourses: "50",
                  title: MyText.textDepartmentGraphics,
                  url: imageMeneger.cam4,
                ),
                DepartmantWidget(
                  numberOfCourses: "90",
                  title: MyText.textDepartmentScientificCourses,
                  url: imageMeneger.cam5,
                ),
                DepartmantWidget(
                  numberOfCourses: "30",
                  title: MyText.textDepartmentSecondaryReinforcement,
                  url: imageMeneger.cam6,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
