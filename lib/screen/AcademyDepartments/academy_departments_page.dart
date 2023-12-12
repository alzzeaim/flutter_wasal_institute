import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';
import 'package:flutter_wasal_institute/constant/text.dart';
import 'package:flutter_wasal_institute/widget/app_bar_widget.dart';
import 'package:flutter_wasal_institute/widget/top_scroller_widget.dart';
import 'package:flutter_wasal_institute/widget/top_search_widget.dart';
import 'package:get/get.dart';

import '../../widget/departmant_widget.dart';

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
      appBar: AppBarWidget.appBarWidgetTitle(cont: context,
        Title: "أقسام الاكاديمية",
        backPage: () {
           Get.back();
        },
      ),
      // endDrawer: DrawerWidget.drawerWidget(context),
      body: SafeArea(
          child: Column(
        children: [
          TopSearchWidget(),
          TopScroller(),
          DepartmantWidget(
              numberOfCourses: "10", title: MyText.textDepartmentEnglash),
        ],
      )),
    );
  }
}
