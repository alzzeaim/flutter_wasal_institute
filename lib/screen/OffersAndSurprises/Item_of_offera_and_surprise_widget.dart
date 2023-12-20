import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';
import 'Details_of_offers_and_surprises.dart';

class ItemOfOfferaAndSurpriseWidget extends StatelessWidget {
  String title;
  String depart;
  String url;
  ItemOfOfferaAndSurpriseWidget({
    super.key,
    required this.title,
    required this.depart,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const DetailsOfOffersAndSurprises());
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
            color: MyColors.MyBackGroundTapBar,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage(url), fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Text(title,
                  textAlign: TextAlign.end,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 14)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(depart,
                      textAlign: TextAlign.end,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 12)),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const DetailsOfOffersAndSurprises());
              },
              child: Container(
                margin: const EdgeInsets.only(top: 25, bottom: 20),
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
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.white, fontSize: 14)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
