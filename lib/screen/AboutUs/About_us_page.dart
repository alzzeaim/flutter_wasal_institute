import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/screen/AboutUs/subTitle-in-about-us.dart';
import 'package:flutter_wasal_institute/screen/AboutUs/titleIn-about-us-widget.dart';

import 'package:flutter_wasal_institute/widget/contact-information-widget.dart';

import 'package:get/get.dart';
import '../../constant/colors.dart';
import '../../constant/text.dart';
import '../../widget/AppBar/app_bar_widget.dart';


class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround1,
      appBar: AppBarWidget.appBarWidgetTitle(
        cont: context,
        Title: " من نحن ",
        backPage: () {
          Get.back();
        },
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            TitleInAboutUsWidget(
              title1: "  من نحن  ",
            ),
            SubTitleInAboutUswidget(
              title2: MyText.textAboutUs,
            ),
            TitleInAboutUsWidget(title1: "كلمة رئيس المركز"),
            SubTitleInAboutUswidget(title2: MyText.textAboutUs),
            TitleInAboutUsWidget(title1: "  الاهداف والرؤية"),
            SubTitleInAboutUswidget(title2: MyText.textAboutUs),
            const ContactInformationWidget()
          ],
        ),
      )),
    );
  }
}




