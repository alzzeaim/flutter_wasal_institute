import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';
import 'package:flutter_wasal_institute/widget/app_bar_widget.dart';
import 'package:get/get.dart';

import 'notifcations-widget.dart';

class NotifcationsPage extends StatefulWidget {
  const NotifcationsPage({super.key});

  @override
  State<NotifcationsPage> createState() => _NotifcationsPageState();
}

class _NotifcationsPageState extends State<NotifcationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(
          cont: context,
          Title: "الاشعارات",
          backPage: () {
            Get.back();
          }),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "اليوم",
                    textAlign: TextAlign.end,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
            NotifcationsWidget(
              icon: Icons.question_mark_rounded,
            ),
            NotifcationsWidget(
              icon: Icons.query_stats_outlined,
            ),
            NotifcationsWidget(
              icon: Icons.cloud_queue_rounded,
            ),
          ],
        ),
      )),
    );
  }
}


