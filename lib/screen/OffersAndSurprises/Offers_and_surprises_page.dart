import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/screen/OffersAndSurprises/Details_of_offers_and_surprises.dart';
import 'package:flutter_wasal_institute/widget/app_bar_widget.dart';
import 'package:flutter_wasal_institute/widget/top_scroller_widget.dart';
import 'package:flutter_wasal_institute/widget/top_search_widget.dart';
import 'package:get/get.dart';

import '../../constant/text.dart';

class OffersAndSurprisesPage extends StatefulWidget {
  const OffersAndSurprisesPage({super.key});

  @override
  State<OffersAndSurprisesPage> createState() => _OffersAndSurprisesPageState();
}

class _OffersAndSurprisesPageState extends State<OffersAndSurprisesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(cont: context ,
        Title: "العروض والمفاجأة",
        backPage: () {
           Get.back();
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopSearchWidget(),
              TopScroller(),
              ItemOfOfferaAndSurprise(),
              ItemOfOfferaAndSurprise(),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemOfOfferaAndSurprise extends StatelessWidget {
  const ItemOfOfferaAndSurprise({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      width: double.infinity,
      // height: 586,
      decoration: BoxDecoration(
          color: MyColors.MyBackGroundTapBar,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                // color: Colors.amber,
                image: DecorationImage(
                    image: AssetImage(imageMeneger.lab1),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Text(MyText.splash3,
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.titleLarge
                //  TextStyle(
                //   color: MyColors.black_color,
                //   fontFamily: 'cairo',
                //   fontSize: 16,
                //   fontWeight: FontWeight.w600,
                // ),
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(MyText.textDepartmentGraphics,
                    textAlign: TextAlign.end,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 12)
                    //  TextStyle(
                    //   color: MyColors.black_halufe_Color,
                    //   fontFamily: 'cairo',
                    //   fontSize: 12,
                    //   fontWeight: FontWeight.w600,
                    // ),
                    ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsOfOffersAndSurprises(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 25, bottom: 20),
              width: 348,
              height: 40,
              decoration: BoxDecoration(
                color: MyColors.MyAction,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chevron_left_rounded,
                    color: MyColors.whiteColor,
                    size: 24,
                  ),
                  Text("قراءة المزيد",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.white)
                      //  TextStyle(
                      //   color: MyColors.whiteColor,
                      //   fontFamily: 'cairo',
                      //   fontSize: 12,
                      //   fontWeight: FontWeight.w600,
                      // ),
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
