import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/constant/text.dart';
import 'package:flutter_wasal_institute/widget/AppBar/app_bar_widget.dart';
import 'package:flutter_wasal_institute/widget/AppBar/top_search_widget.dart';
import 'package:get/get.dart';
import '../../widget/DrawerWidget/drawer_widget.dart';
import '../../widget/AppBar/top_scroller_widget.dart';
import 'cader-itme_widget.dart';

class CaderPage extends StatefulWidget {
  const CaderPage({super.key});

  @override
  State<CaderPage> createState() => _CaderPageState();
}

class _CaderPageState extends State<CaderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(
        cont: context,
        Title: MyText.text_GATS_Academy_staff,
        backPage: () {
          Get.back();
        },
      ),
      endDrawer: DrawerWidget.drawerWidget(context),
      body: SafeArea(
        child: Column(
          children: [
            const TopSearchWidget(),
            TopScroller(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ListView(
                  children: [
                    CaderItmeWiget(
                        url: imageMeneger.Teacher4,
                        name: "محمد اليمني",
                        jop: "مصمم جرافيكس",
                        depart: "الجرافيكس والملتيميديا"),
                    CaderItmeWiget(
                        url: imageMeneger.Teacher3,
                        name: " سعاد قاسم",
                        jop: "مصمم جرافيكس",
                        depart: "الجرافيكس والملتيميديا"),
                    CaderItmeWiget(
                        url: imageMeneger.Teacher2,
                        name: " امة الرحمن المجمر",
                        jop: "مصمم جرافيكس",
                        depart: "الجرافيكس والملتيميديا"),
                    CaderItmeWiget(
                        url: imageMeneger.Teacher1,
                        name: " عبلة عنتر",
                        jop: "مصمم جرافيكس",
                        depart: "الجرافيكس والملتيميديا"),
                    CaderItmeWiget(
                        url: imageMeneger.Teacher5,
                        name: " عبير الشبكات",
                        jop: "مصمم جرافيكس",
                        depart: "الجرافيكس والملتيميديا"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
