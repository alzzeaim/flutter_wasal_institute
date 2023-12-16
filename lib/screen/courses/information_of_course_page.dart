import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/controller/information_of_course_controller.dart';
import 'package:flutter_wasal_institute/screen/courses/Register_for_the_course_page.dart';
import 'package:flutter_wasal_institute/screen/courses/information_of_course.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../../widget/AppBar/app_bar_widget.dart';
import 'courses_page1.dart';

class InformationOfCoursePage extends StatefulWidget {
  const InformationOfCoursePage({super.key});

  @override
  State<InformationOfCoursePage> createState() =>
      _InformationOfCoursePageState();
}

class _InformationOfCoursePageState extends State<InformationOfCoursePage> {
  InformationOfCourseController informationOfCourseController =
      Get.put(InformationOfCourseController());
  // CourseController courseController = Get.put(CourseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(
        cont: context,
        Title: "تفاصيل الدورة",
        backPage: () {
          Get.back();
        },
      ),
      body: SafeArea(
          child: Column(
        children: [
          // const TopSearchWidget(),
          // TopScroller(),
          Expanded(
            child: FutureBuilder<List<InformationCourseModel>>(
              future:
                  informationOfCourseController.fetchInformationCourseModel(),
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
                    return Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return InformationOfCourseWidget(
                              informationCourseModel: snapshot.data[index],
                            );
                          },
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const RegisterForTheCoursePage());
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 20,
                            ),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: MyColors.MyAction,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                "تسجيل في الدورة ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: Colors.white, fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                }

                return const Center(child: Text("error"));
              },
            ),
          ),
        ],
      )),
    );
  }
}
