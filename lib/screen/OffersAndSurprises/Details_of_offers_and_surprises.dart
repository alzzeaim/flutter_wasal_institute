import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../../constant/text.dart';
import '../../widget/AppBar/app_bar_widget.dart';
import '../home_pages/home_firist_page.dart';

class DetailsOfOffersAndSurprises extends StatefulWidget {
  const DetailsOfOffersAndSurprises({super.key});

  @override
  State<DetailsOfOffersAndSurprises> createState() =>
      _DetailsOfOffersAndSurprisesState();
}

class _DetailsOfOffersAndSurprisesState
    extends State<DetailsOfOffersAndSurprises> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(cont: context,
        Title: "العروض والمفاجأة",
        backPage: () {
          Get.back();
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage(imageMeneger.cam2),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: MyColors.search_backgraund,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      child: Text(MyText.splash3,
                          textAlign: TextAlign.end,
                          style: Theme.of(context).textTheme.titleLarge
                          // TextStyle(
                          //   color: MyColors.black_color,
                          //   fontFamily: 'cairo',
                          //   fontSize: 16,
                          //   fontWeight: FontWeight.w600,
                          // ),
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Text(MyText.textAboutCourse1,
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
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
