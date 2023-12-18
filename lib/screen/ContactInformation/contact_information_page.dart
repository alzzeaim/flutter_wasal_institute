import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/widget/AppBar/app_bar_widget.dart';
import 'package:flutter_wasal_institute/widget/contact-information-widget.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';

class ContactInformationPage extends StatefulWidget {
  const ContactInformationPage({super.key});

  @override
  State<ContactInformationPage> createState() => _ContactInformationPageState();
}

class _ContactInformationPageState extends State<ContactInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(
        cont: context,
        Title: " معلومات التواصل",
        backPage: () {
          Get.back();
        },
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 150),
          child: ContactInformationWidget(),
        ),
      ),
    );
  }
}
