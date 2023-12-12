import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/screen/Activities_and_events/Activities_and_events_page.dart';
import 'package:flutter_wasal_institute/screen/Activities_and_events/Details_activities_and_events.dart';
import 'package:flutter_wasal_institute/screen/OffersAndSurprises/Details_of_offers_and_surprises.dart';
import 'package:flutter_wasal_institute/screen/OffersAndSurprises/Offers_and_surprises_page.dart';
import 'package:flutter_wasal_institute/screen/AcademyDepartments/academy_departments_page.dart';
import 'package:flutter_wasal_institute/screen/CaderJats/cader_page.dart';
import 'package:flutter_wasal_institute/screen/courses/catogre_of_courses_1.dart';
import 'package:flutter_wasal_institute/screen/courses/courses_page.dart';
import 'package:flutter_wasal_institute/screen/home_pages/slid-home-widget.dart';
import 'package:flutter_wasal_institute/screen/home_pages/title-and-viwe-all-home-widget.dart';
import 'package:flutter_wasal_institute/screen/Notifcations/notifcations_page.dart';
import 'package:flutter_wasal_institute/widget/app_bar_widget.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';
import '../../constant/text.dart';
import '../../widget/DrawerWidget/drawer_widget.dart';
import '../../widget/contact-information-widget.dart';
import 'cader-of-jats-home-widget.dart';
import 'catogre-activites-home-widget.dart';
import 'catogris-of-home-widget.dart';

class HomeFristPage extends StatefulWidget {
  const HomeFristPage({super.key});

  @override
  State<HomeFristPage> createState() => _HomeFristPageState();
}

class _HomeFristPageState extends State<HomeFristPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarwidgetHome(
        URLImage: imageMeneger.logo11,
        icon: Icons.notifications_none_rounded,
        backPage: () {
          Get.to(() => const NotifcationsPage());
        },
      ),
      endDrawer: DrawerWidget.drawerWidget(context),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            // image in home
            const SlidHomeWidget(),
            //  container sigin student and academy departments
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CatogrisOfHomeWidget(
                      icon: Icons.local_fire_department_outlined,
                      title: "اقسام الاكاديمية",
                      nextPage: () {
                        Get.to(() => const AcademyDepartmentsPage());
                      }),
                  CatogrisOfHomeWidget(
                      icon: Icons.person_outline_outlined,
                      title: "تسجيل الطالب",
                      nextPage: () {
                        Get.to(() => const HomeFristPage());
                      }),
                ],
              ),
            ),
            // New courses
            // TitleAndViweAllHomeWidget(
            //     nextPage: () {
            //       Get.to(() => const CoursesPage());
            //     },
            //     title: "الكورسات الجديدة"),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   reverse: true,
            //   child: Row(
            //     children: [
            //       CatogreOfCourses1Widget(
            //           url: imageMeneger.cam2,
            //           title:
            //               "التقديم لوظيفة المنظمات الغير ربحية في جميع المجالاتالتقديم لوظيفة المنظمات الغير ربحية في جميع المجالات",
            //           depart: "قسم الدورات العلمية",
            //           coste: "1500",
            //           time: "50"),
            //       const SizedBox(
            //         width: 10,
            //       ),
            //       CatogreOfCourses1Widget(
            //           url: imageMeneger.cam2,
            //           title:
            //               "التقديم لوظيفة المنظمات الغير ربحية في جميع المجالات",
            //           depart: "قسم الدورات العلمية",
            //           coste: "1500",
            //           time: "50"),
            //       const SizedBox(
            //         width: 10,
            //       ),
            //       CatogreOfCourses1Widget(
            //           url: imageMeneger.cam2,
            //           title:
            //               "التقديم لوظيفة المنظمات الغير ربحية في جميع المجالات",
            //           depart: "قسم الدورات العلمية",
            //           coste: "1500",
            //           time: "50"),
            //       const SizedBox(
            //         width: 10,
            //       ),
            //       CatogreOfCourses1Widget(
            //           url: imageMeneger.cam2,
            //           title:
            //               "التقديم لوظيفة المنظمات الغير ربحية في جميع المجالاتالتقديم لوظيفة المنظمات الغير ربحية في جميع المجالات",
            //           depart: "قسم الدورات العلمية",
            //           coste: "1500",
            //           time: "50"),
            //       const SizedBox(
            //         width: 20,
            //       ),
            //     ],
            //   ),
            // ),

            //  cader
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(MyText.text_Cadre_of_Jats,
                      style: Theme.of(context).textTheme.headlineLarge),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    // alignment: Alignment.topRight,
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage(imageMeneger.ellips4))),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => CaderPage());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                                Colors.black.withOpacity(0.9),
                                Colors.black.withOpacity(0.7),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                            child: Text(
                          "+20",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: MyColors.whiteColor),
                        )),
                      ),
                    ),
                  ),
                ),
                CaderOfJatsHomeWidget(URL_Image: imageMeneger.ellips1),
                CaderOfJatsHomeWidget(URL_Image: imageMeneger.ellips2),
                CaderOfJatsHomeWidget(URL_Image: imageMeneger.ellips3),
                CaderOfJatsHomeWidget(URL_Image: imageMeneger.ellips5),
              ],
            ),
            //Activities_and_events_page
            TitleAndViweAllHomeWidget(
                title: "الانشطة والفعاليات",
                nextPage: () {
                  Get.to(() => const ActivitiesAndEvents());
                }),
            CatogreActivitesHomeWidget(
                nextPage: () {
                  Get.to(() => const DetailsActivitiesAndEvents());
                },
                url: imageMeneger.lab1,
                title: MyText.splash3,
                depart: MyText.textDepartmentGraphics),
            // OffersAndSurprisesPage
            TitleAndViweAllHomeWidget(
                title: "العروض والمفاجأت",
                nextPage: () {
                  Get.to(() => const OffersAndSurprisesPage());
                }),
            CatogreActivitesHomeWidget(
                depart: MyText.textDepartmentGraphics,
                title: MyText.splash3,
                url: imageMeneger.lab2,
                nextPage: () {
                  Get.to(() => const DetailsOfOffersAndSurprises());
                }),
            CatogreActivitesHomeWidget(
                depart: MyText.textDepartmentGraphics,
                title: MyText.splash3,
                url: imageMeneger.cam3,
                nextPage: () {
                  Get.to(() => const DetailsOfOffersAndSurprises());
                }),
            //  contact_information_page
            const SizedBox(
              height: 20,
            ),
            const ContactInformationWidget(),
          ],
        ),
      )),
    );
  }
}
