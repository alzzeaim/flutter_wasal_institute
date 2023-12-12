import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';
import '../../widget/app_bar_widget.dart';
import '../home_pages/home_firist_page.dart';

class ImageDetailsActivitesAndEvents extends StatefulWidget {
  const ImageDetailsActivitesAndEvents({super.key});

  @override
  State<ImageDetailsActivitesAndEvents> createState() =>
      _ImageDetailsActivitesAndEventsState();
}

class _ImageDetailsActivitesAndEventsState
    extends State<ImageDetailsActivitesAndEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(cont: context,
        Title: "الانشطة والفعاليات",
        backPage: () {
          Get.back();
        },
      ),
      body: SafeArea(
        child: MasonryGridView.builder(
            itemCount: 30,
            gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Image.asset("assets/images/c${index + 1}.jpg"),
                )),
      ),
    );
  }
}
