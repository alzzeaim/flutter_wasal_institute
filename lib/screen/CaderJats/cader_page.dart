import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';
import 'package:flutter_wasal_institute/constant/text.dart';
import 'package:flutter_wasal_institute/widget/app_bar_widget.dart';
import 'package:flutter_wasal_institute/widget/top_search_widget.dart';
import 'package:get/get.dart';
import '../../widget/DrawerWidget/drawer_widget.dart';
import '../../widget/cader_widget/tetsher_widget.dart';
import '../../widget/top_scroller_widget.dart';
import '../home_pages/home_firist_page.dart';

class CaderPage extends StatefulWidget {
  CaderPage({super.key});

  @override
  State<CaderPage> createState() => _CaderPageState();
}

class _CaderPageState extends State<CaderPage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(cont: context,
        Title: MyText.text_GATS_Academy_staff,
        backPage: () {
           Get.back();
        },
      ),
      endDrawer: DrawerWidget.drawerWidget(context),
      body: SafeArea(
        child: Column(
          children: [
            TopSearchWidget(),
            TopScroller(),
            Tetsher(),
          ],
        ),
      ),
    );
  }
}








