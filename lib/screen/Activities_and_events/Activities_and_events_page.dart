import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';
import '../../constant/text.dart';
import '../../widget/app_bar_widget.dart';
import '../../widget/top_scroller_widget.dart';
import '../../widget/top_search_widget.dart';
import 'CatogrisOfActivitiesWidget.dart';

class ActivitiesAndEvents extends StatefulWidget {
  const ActivitiesAndEvents({super.key});

  @override
  State<ActivitiesAndEvents> createState() => _ActivitiesAndEventsState();
}

class _ActivitiesAndEventsState extends State<ActivitiesAndEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(
        cont: context,
        Title: "الأنشطة والفعاليات",
        backPage: () {
          Get.back();
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopSearchWidget(),
              TopScroller(),
              CatogrisOfActivitiesWidget(
                url: imageMeneger.lab3,
                date: "يوم الاثنين 25/05/2023",
                titel: MyText.splash3,
              ),
              CatogrisOfActivitiesWidget(
                url: imageMeneger.lab4,
                date: "يوم الاثنين 25/05/2023",
                titel: MyText.splash3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
