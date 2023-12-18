import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/screen/Activities_and_events/Activities_and_events_page.dart';
import 'package:flutter_wasal_institute/screen/Activities_and_events/Details_activities_and_events.dart';
import 'package:flutter_wasal_institute/screen/OffersAndSurprises/Details_of_offers_and_surprises.dart';
import 'package:flutter_wasal_institute/screen/OffersAndSurprises/Offers_and_surprises_page.dart';
import 'package:flutter_wasal_institute/screen/AcademyDepartments/academy_departments_page.dart';
import 'package:flutter_wasal_institute/screen/courses/catogre_of_courses_1.dart';
import 'package:flutter_wasal_institute/screen/home_pages/slid-home-widget.dart';
import 'package:flutter_wasal_institute/screen/home_pages/title-and-viwe-all-home-widget.dart';
import 'package:flutter_wasal_institute/screen/Notifcations/notifcations_page.dart';
import 'package:flutter_wasal_institute/widget/AppBar/app_bar_widget.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';
import '../../constant/text.dart';
import '../../controller/coutses_controller.dart';
import '../../widget/DrawerWidget/drawer_widget.dart';
import '../../widget/contact-information-widget.dart';
import '../courses/courses_page1.dart';
import 'cader-of-jats-home-widget.dart';
import 'catogre-activites-home-widget.dart';
import 'catogris-of-home-widget.dart';

class HomeFristPage extends StatefulWidget {
  const HomeFristPage({super.key});

  @override
  State<HomeFristPage> createState() => _HomeFristPageState();
}

class _HomeFristPageState extends State<HomeFristPage> {
  CourseController courseController = Get.put(CourseController());
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
            TitleAndViweAllHomeWidget(
              nextPage: () {
                Get.to(() => const CoursesPage());
              },
              title: "الكورسات الجديدة",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(
              height: 450,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: FutureBuilder<List<CourseModel>>(
                  future: courseController.fetchCourses(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Container(
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasError) {
                        return ErrorMessage(
                          titleerror: '!!خطاء فادح ',
                          texterror:
                              'قد تواجة مشكلة ما غير قادر على جلب البيانات في الوقت الحالي يرجى معاودة المحاولة لاحقاً  ',
                          icon: Icons.dangerous_outlined,
                        );
                      }
                      if (snapshot.hasData) {
                        if (snapshot.data.length == 0) {
                          return Center(
                            child: ErrorMessage(
                                titleerror: 'هذا الصفحة فارغة',
                                texterror: 'لاتوجد اي بيانات في هذا الصفحة ',
                                icon: Icons.emoji_emotions_outlined),
                          );
                        }
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          reverse: true,
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: CatogreOfCourses1Widget(
                                courseModel: snapshot.data[index],
                              ),
                            );
                          },
                        );
                      }
                    }

                    return const Center(child: Text("error"));
                  },
                ),
              ),
            ),
            //  cader
            Divider(
                color: MyColors.black_halufe_Color.withOpacity(0.1),
                endIndent: 10,
                height: 15,
                indent: 10,
                thickness: 1),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
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
                CaderOfJatsHomeWidget(
                    URL_Image: imageMeneger.Teacher1, slect: true),
                CaderOfJatsHomeWidget(
                  URL_Image: imageMeneger.Teacher2,
                  slect: false,
                ),
                CaderOfJatsHomeWidget(
                  URL_Image: imageMeneger.Teacher3,
                  slect: false,
                ),
                CaderOfJatsHomeWidget(
                  URL_Image: imageMeneger.Teacher4,
                  slect: false,
                ),
                CaderOfJatsHomeWidget(
                  URL_Image: imageMeneger.Teacher5,
                  slect: false,
                ),
              ],
            ),
            Divider(
                color: MyColors.black_halufe_Color.withOpacity(0.1),
                endIndent: 10,
                height: 15,
                indent: 10,
                thickness: 1),
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
