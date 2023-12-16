import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_wasal_institute/screen/Activities_and_events/image_Details_activities_and_events.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';
import '../../constant/text.dart';
import '../../widget/AppBar/app_bar_widget.dart';

class DetailsActivitiesAndEvents extends StatefulWidget {
  const DetailsActivitiesAndEvents({super.key});

  @override
  State<DetailsActivitiesAndEvents> createState() =>
      _DetailsActivitiesAndEventsState();
}

class _DetailsActivitiesAndEventsState
    extends State<DetailsActivitiesAndEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(
        cont: context,
        Title: "الانشطة والفعاليات",
        backPage: () {
          Get.back();
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: MasonryGridView.builder(
                    itemCount: 5,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(
                                  () => const ImageDetailsActivitesAndEvents());
                            },
                            child:
                                Image.asset("assets/images/cc${index + 1}.png"),
                          ),
                        )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 450,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Text(MyText.splash3,
                          textAlign: TextAlign.end,
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Text(MyText.textAboutCourse11,
                                textAlign: TextAlign.end,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
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
