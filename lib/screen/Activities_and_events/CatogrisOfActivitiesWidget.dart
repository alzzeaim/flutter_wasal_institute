import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';
import 'Details_activities_and_events.dart';

class CatogrisOfActivitiesWidget extends StatelessWidget {
  String url;
  String titel;
  String date;
   CatogrisOfActivitiesWidget({
    super.key,required this.url,required this.date,required this.titel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: MyColors.item_of_cader,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 210,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                    image: AssetImage(url), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Text(titel,
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.headlineLarge),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(date,
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => DetailsActivitiesAndEvents());
            },
            child: Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              width: 348,
              height: 40,
              decoration: BoxDecoration(
                color: MyColors.MyAction,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.chevron_left_rounded,
                    color: MyColors.whiteColor,
                    size: 24,
                  ),
                  Text("قراءة المزيد",
                      style: Theme.of(context).textTheme.labelLarge),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
