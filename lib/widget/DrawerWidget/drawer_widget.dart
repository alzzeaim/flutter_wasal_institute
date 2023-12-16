import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/screen/AboutUs/About_us_page.dart';
import 'package:flutter_wasal_institute/screen/Activities_and_events/Activities_and_events_page.dart';
import 'package:flutter_wasal_institute/screen/OffersAndSurprises/Offers_and_surprises_page.dart';
import 'package:flutter_wasal_institute/screen/CaderJats/cader_page.dart';
import 'package:flutter_wasal_institute/screen/ContactInformation/contact_information_page.dart';
import 'package:flutter_wasal_institute/screen/courses/courses_page.dart';
import 'package:flutter_wasal_institute/screen/courses/courses_page1.dart';
import 'package:flutter_wasal_institute/screen/home_pages/home_firist_page.dart';
import 'package:flutter_wasal_institute/screen/next_hup.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../../constant/padding.dart';
import '../../constant/size.dart';
import '../../screen/AcademyDepartments/academy_departments_page.dart';
import 'list_tile_menu.dart';

class DrawerWidget {
  static Drawer drawerWidget(BuildContext context) {
    List<Map<String, dynamic>> mapdrawer = [
      {
        // BooksAndPublicationsPage
        'name': "الصفحة الرئيسية",
        'icon': Icons.home_outlined,
        'fun': () {
          Get.to(() => const HomeFristPage());
        }
      },
      {
        // Important_links
        'name': "تسجيل طالب",
        'icon': Icons.language_outlined,
        'fun': () {
          Get.to(() => const HomeFristPage());
        }
      },
      {
        // CallUs
        'name': "اقسام الاكاديمية",
        'icon': Icons.phone_in_talk_outlined,
        'fun': () {
          Get.to(() => const AcademyDepartmentsPage());
        }
      },
      {
        // CallUs
        'name': "كادرالاكاديمية",
        'icon': Icons.perm_contact_cal_outlined,
        'fun': () {
          Get.to(() => const CaderPage());
        }
      },
      {
        // CallUs
        'name': "الدورات الجديدة",
        'icon': Icons.perm_contact_cal_outlined,
        'fun': () {
          Get.to(() => const CoursesPage());
        }
      },
      {
        // CallUs
        'name': "العروض والمفاجأت",
        'icon': Icons.health_and_safety_outlined,
        'fun': () {
          Get.to(() => const OffersAndSurprisesPage());
        }
      },
      {
        // CallUs
        'name': "الانشطة والفعاليات",
        'icon': Icons.perm_contact_cal_outlined,
        'fun': () {
          Get.to(() => const ActivitiesAndEvents());
        }
      },
      {
        // CallUs
        'name': "من نحن",
        'icon': Icons.perm_contact_cal_outlined,
        'fun': () {
          Get.to(() => const AboutUsPage());
        }
      },
      {
        // CallUs
        'name': "معلومات التواصل ",
        'icon': Icons.perm_contact_cal_outlined,
        'fun': () {
          Get.to(() => const ContactInformationPage());
        }
      },
      {
        // CallUs
        'name': "السياسة والخصوصية",
        'icon': Icons.perm_contact_cal_outlined,
        'fun': () {
          Get.to(() => const HomeFristPage());
        }
      },
    ];
    return Drawer(
      child: Container(
        height: AppSize.z400,
        color: MyColors.whiteColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Container(
                    padding: EdgeInsets.all(AppPadding.p10),
                    decoration: BoxDecoration(
                        color: MyColors.whiteColor,
                        borderRadius: BorderRadius.circular(AppSize.z10)),
                    child: Image(image: AssetImage(imageMeneger.logo22))),
              ),
            ),
            ListView.builder(
              itemCount: mapdrawer.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ListTileMenu(
                    iconMenu: mapdrawer[index]["icon"],
                    titleitem_menu: mapdrawer[index]["name"],
                    movePage: mapdrawer[index]["fun"]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
