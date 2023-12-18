import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/screen/courses/Register_for_the_course_page.dart';
import 'package:flutter_wasal_institute/screen/courses/information_of_course_page.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../../controller/coutses_controller.dart';

class CatogreOfCourses1Widget extends StatelessWidget {
  CourseModel courseModel;
  // String url;
  // String title;
  // String depart;
  // String time;
  // String coste;
  CatogreOfCourses1Widget({
    super.key,
    required this.courseModel,
    // required this.url,
    // required this.title,
    // required this.depart,
    // required this.coste,
    // required this.time, required courseModel,
  });
// GestureDetector
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const InformationOfCoursePage());
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        width: 270,
        height: 420,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: MyColors.search_backgraund,
        ),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    image: DecorationImage(
                      image: AssetImage(courseModel.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text(
                          courseModel.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.end,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: MyColors.black_color,
                                    fontSize: 14,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          courseModel.depart,
                          textAlign: TextAlign.end,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 360,
                  height: 1,
                  color: MyColors.MyBackGroundTapBar,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text(
                              " ر.ي",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(fontSize: 12),
                            ),
                            Text(
                              courseModel.costs,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontSize: 12),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.monetization_on_outlined,
                              color: MyColors.black_halufe_Color,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Row(
                        children: [
                          Text(
                            " ساعة",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontSize: 12),
                          ),
                          Text(
                            courseModel.time,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontSize: 12),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.watch_later_outlined,
                            color: MyColors.black_halufe_Color,
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(left: 15),
                //   child: Text(
                //     "المزيد من التفاصيل ",
                //     style: Theme.of(context).textTheme.bodyMedium,
                //   ),
                // ),
                // const SizedBox(
                //   width: 30,
                // ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const RegisterForTheCoursePage());
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        right: 10,
                      ),
                      width: 250,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: MyColors.MyAction),
                      child: Center(
                        child: Text(
                          "تسجيل في الدورة",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontSize: 14)
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
