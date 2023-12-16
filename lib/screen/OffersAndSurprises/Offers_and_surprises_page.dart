import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/constant/text.dart';
import 'package:flutter_wasal_institute/widget/AppBar/app_bar_widget.dart';
import 'package:flutter_wasal_institute/widget/AppBar/top_scroller_widget.dart';
import 'package:flutter_wasal_institute/widget/AppBar/top_search_widget.dart';
import 'package:get/get.dart';

import 'Item_of_offera_and_surprise_widget.dart';

class OffersAndSurprisesPage extends StatefulWidget {
  const OffersAndSurprisesPage({super.key});

  @override
  State<OffersAndSurprisesPage> createState() => _OffersAndSurprisesPageState();
}

class _OffersAndSurprisesPageState extends State<OffersAndSurprisesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(
        cont: context,
        Title: "العروض والمفاجأة",
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
              ItemOfOfferaAndSurpriseWidget(
                title: MyText.splash3,
                depart: MyText.textDepartmentGraphics,
                url: imageMeneger.lab1,
              ),
              ItemOfOfferaAndSurpriseWidget(
                title: MyText.splash3,
                depart: MyText.textDepartmentGraphics,
                url: imageMeneger.lab2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
