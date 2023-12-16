import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/widget/contact-information-widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';
import '../../constant/text.dart';
import '../../widget/AppBar/app_bar_widget.dart';
import '../home_pages/home_firist_page.dart';

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
            TitleInAboutUs(
              title1: "  من نحن  ",
            ),
            SubTitleInAboutUs(
              title2: MyText.textAboutUs,
            ),
            TitleInAboutUs(title1: "كلمة رئيس المركز"),
            SubTitleInAboutUs(title2: MyText.textAboutUs),
            TitleInAboutUs(title1: "  الاهداف والرؤية"),
            SubTitleInAboutUs(title2: MyText.textAboutUs),
            const ContactInformationWidget()
          ],
        ),
      )),
    );
  }
}

class SubTitleInAboutUs extends StatelessWidget {
  String title2;
  SubTitleInAboutUs({
    super.key,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Text(title2,
                textAlign: TextAlign.end,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 12)
                // TextStyle(
                //   color: MyColors.black_halufe_Color,
                //   fontFamily: 'cairo',
                //   fontSize: 12,
                //   fontWeight: FontWeight.w600,
                // ),
                ),
          ),
        ],
      ),
    );
  }
}

class TitleInAboutUs extends StatelessWidget {
  String title1;
  TitleInAboutUs({
    super.key,
    required this.title1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(title1,
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.titleLarge
              //  TextStyle(
              //   color: MyColors.black_color,
              //   fontFamily: 'cairo',
              //   fontSize: 18,
              //   fontWeight: FontWeight.bold,
              // ),
              ),
        ],
      ),
    );
  }
}
