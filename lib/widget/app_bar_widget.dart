import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/constant/size.dart';
import 'package:flutter_wasal_institute/screen/profail/profail_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../constant/padding.dart';
import '../constant/text.dart';
import '../constant/text_style.dart';

class AppBarWidget {
  static AppBar appBarwidgetHome({
    required String URLImage,
    String? URLImageProfail,
    required IconData icon,
    required VoidCallback backPage,
  }) {
    return AppBar(
      titleSpacing: 0,
      // تغيير لون الايقونات حق top bar
      foregroundColor: MyColors.black_halufe_Color,
      elevation: 0,
      backgroundColor: MyColors.whiteColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: Icon(icon),
            color: MyColors.black_halufe_Color,
            onPressed: () {
              backPage();
            },
          ),
          Spacer(),
          Center(
            child: Image(
              image: AssetImage(URLImage),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => ProfailPage());
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: MyColors.whiteColor,
                  border: Border.all(
                    color: MyColors.scandcolor.withOpacity(0.3),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(
                    AppSize.z50,
                  ),

                  // image: DecorationImage(
                  //   image: AssetImage(URLImageProfail ?? imageMeneger.userDefolt),
                  // ),
                ),
                child: Icon(
                  Icons.person,
                  color: MyColors.black_halufe_Color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static AppBar appBarWidgetTitle({
    required cont,
    required String Title,
    required VoidCallback backPage,
  }) {
    return AppBar(
      elevation: 0,
      backgroundColor: MyColors.MyBackGround,
      automaticallyImplyLeading: false,
      title: Center(
        child: Text(
          Title,

          // textAlign: TextAlign.center,
          style: Theme.of(cont).textTheme.headlineLarge,
          // MyTextStyle.s_title_app_bar_22_
        ),
      ),
      leading: SizedBox(),
      actions: [
        GestureDetector(
          onTap: () {
            backPage();
          },
          child: Padding(
            padding: EdgeInsets.only(
              right: AppPadding.p15,
              // top: AppPadding.p15,
            ),
            child: Icon(
              Icons.chevron_right_rounded,
              size: 26,
              color: MyColors.greyColor,
            ),
          ),
        ),
      ],
    );
  }

  // static AppBar appBarWidgetImage({
  //   required String URLImage,
  //   required IconData icon,
  //   required VoidCallback backPage,
  // }) {
  //   return AppBar(
  //     backgroundColor: MyColors.MyBackGroundTapBar,
  //     title: Image(image: AssetImage(URLImage)),
  //     leading: IconButton(
  //       icon: Icon(icon),
  //       onPressed: () {
  //         backPage();
  //       },
  //     ),
  //   );
  // }

  // static AppBar appBarWidgetTitle({
  //   required String Title,
  //   required VoidCallback backPage,
  // }) {
  //   return AppBar(
  //     automaticallyImplyLeading: false,
  //     leading: SizedBox(),
  //     title: Center(
  //         child: Text(Title,
  //             textAlign: TextAlign.center, style: MyTextStyle.style26)),
  //     actions: [
  //       GestureDetector(
  //         onTap: () {
  //           backPage();
  //         },
  //         child: Padding(
  //           padding: EdgeInsets.only(
  //             right: AppPadding.p15,
  //             top: AppPadding.p15,
  //           ),
  //           child: Row(
  //             children: [
  //               Text(
  //                 MyText.textGenera7,
  //                 style: MyTextStyle.style30,
  //               ),
  //               Icon(
  //                 Icons.chevron_right_rounded,
  //                 color: MyColors.greyColor,
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // static AppBar appBarWidgetImageAndBack({
  //   required String URLImage,
  //   required VoidCallback backPage,
  // }) {
  //   return AppBar(
  //     automaticallyImplyLeading: false,
  //     leading: SizedBox(),
  //     title: Image(image: AssetImage(URLImage)),
  //     actions: [
  //       GestureDetector(
  //         onTap: () {
  //           backPage();
  //         },
  //         child: Padding(
  //           padding: EdgeInsets.only(
  //             right: AppPadding.p15,
  //             top: AppPadding.p15,
  //           ),
  //           child: Row(
  //             children: [
  //               Text(
  //                 MyText.textGenera7,
  //                 style: MyTextStyle.style30,
  //               ),
  //               Icon(
  //                 Icons.chevron_right_rounded,
  //                 color: MyColors.greyColor,
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // static AppBar appBarWidgetImageAndBackAndLeading({
  //   required String URLImage,
  //   required IconData icon,
  //   required VoidCallback backPage,
  //   required VoidCallback nextPage,
  // }) {
  //   return AppBar(
  //     automaticallyImplyLeading: false,
  //     leading: IconButton(
  //       icon: Icon(icon),
  //       onPressed: () {
  //         nextPage();
  //       },
  //     ),
  //     title: Image(image: AssetImage(URLImage)),
  //     actions: [
  //       GestureDetector(
  //         onTap: () {
  //           backPage();
  //         },
  //         child: Padding(
  //           padding: EdgeInsets.only(
  //             right: AppPadding.p15,
  //             top: AppPadding.p15,
  //           ),
  //           child: Row(
  //             children: [
  //               Text(
  //                 MyText.textGenera7,
  //                 style: MyTextStyle.style30,
  //               ),
  //               Icon(
  //                 Icons.chevron_right_rounded,
  //                 color: MyColors.greyColor,
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
