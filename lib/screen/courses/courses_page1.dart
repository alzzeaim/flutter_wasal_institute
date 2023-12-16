import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/screen/courses/catogre_of_courses_1.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../../controller/coutses_controller.dart';
import '../../widget/AppBar/app_bar_widget.dart';
import '../../widget/AppBar/top_scroller_widget.dart';
import '../../widget/AppBar/top_search_widget.dart';

CourseController courseController = Get.put(CourseController());

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  CourseController courseController = Get.put(CourseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(
        cont: context,
        Title: "الدورات الجديدة",
        backPage: () {
          Get.back();
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            const TopSearchWidget(),
            TopScroller(),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CatogreOfCourses1Widget(
                              courseModel: snapshot.data[index],
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
          ],
        ),
      ),
    );
  }
}

class ErrorMessage extends StatelessWidget {
  String titleerror;
  String texterror;
  IconData icon;
  ErrorMessage({
    super.key,
    required this.titleerror,
    required this.texterror,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 150,
        ),
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              color: MyColors.scandcolor,
              borderRadius: BorderRadius.circular(100)),
          child: Icon(
            icon,
            color: MyColors.whiteColor,
            size: 50,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Text(
          titleerror,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              texterror,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 12),
            ),
          ),
        ),
      ],
    );
  }
}
