import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/widget/AppBar/app_bar_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../home_pages/home_firist_page.dart';

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
      appBar: AppBarWidget.appBarWidgetTitle(cont: context,
        Title: " معلومات التواصل",
        backPage: () {
          Get.back();
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imageMeneger.logo22))),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.facebook,
                        color: MyColors.MyAction,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(FontAwesomeIcons.whatsapp, color: MyColors.MyAction),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(FontAwesomeIcons.twitter, color: MyColors.MyAction),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(FontAwesomeIcons.instagram,
                          color: MyColors.MyAction),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("04 422936",
                          style: Theme.of(context).textTheme.bodyLarge
                          //  TextStyle(color: MyColors.black_halufe_Color),
                          ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.phone_outlined,
                          color: MyColors.black_halufe_Color),
                      // Spacer(),
                      SizedBox(
                        width: 20,
                      ),
                      Text("+967 775171978",
                          style: Theme.of(context).textTheme.bodyLarge
                          //  TextStyle(color: MyColors.black_halufe_Color),
                          ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.phone_android_rounded,
                          color: MyColors.black_halufe_Color),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("alzzeaim7751@gmail.com",
                          style: Theme.of(context).textTheme.bodyLarge
                          // TextStyle(color: MyColors.black_halufe_Color),
                          ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.email_outlined,
                          color: MyColors.black_halufe_Color),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("www.jats_institut.com",
                          style: Theme.of(context).textTheme.bodyLarge
                          // TextStyle(color: MyColors.black_halufe_Color),
                          ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "@",
                        style: TextStyle(
                            color: MyColors.black_halufe_Color, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
