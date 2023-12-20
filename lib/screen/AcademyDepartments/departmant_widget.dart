import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/screen/courses/courses_page1.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';

class DepartmantWidget extends StatelessWidget {
  String title;
  String numberOfCourses;
  String url;
  DepartmantWidget(
      {super.key,
      required this.numberOfCourses,
      required this.title,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const CoursesPage());
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(url), fit: BoxFit.cover,
                    //  fit: BoxFit.cover
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 20,
                // top: 5,
              ),
              child: Row(
                children: [
                  Text(
                    "دورة",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 12),
                  ),
                  Text(
                    numberOfCourses,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 14),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.cast_for_education_rounded,
                    size: 20,
                    color: MyColors.black_halufe_Color,
                  ),
                  // FaIcon(FontAwesomeIcons.book)
                  const Spacer(),
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 14),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
