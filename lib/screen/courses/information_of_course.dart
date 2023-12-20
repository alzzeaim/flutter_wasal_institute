import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/constant/text.dart';

import '../../controller/information_of_course_controller.dart';
// InformationCourseModel informationCourseModel;

class InformationOfCourseWidget extends StatelessWidget {
  InformationCourseModel informationCourseModel;
  InformationOfCourseWidget({super.key, required this.informationCourseModel});
  // late InformationCourseModel informationCourseModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(informationCourseModel.imageUrl),
                  fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(informationCourseModel.title,
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.titleLarge),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, right: 15, top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Text(
                      " ر.ي",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 12),
                    ),
                    Text(
                      informationCourseModel.costs,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 12),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'سعرالدورة',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 12),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.green,
                      size: 20,
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   width: 50,
              // ),
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
                    informationCourseModel.duration,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'مدة الدورة',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.watch_later_outlined,
                    color: Colors.green,
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, right: 15, top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      informationCourseModel.time,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 12),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'دوام الدورة',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 12),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.timer_outlined,
                      color: Colors.green,
                      size: 20,
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   width: 50,
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Text(
                      informationCourseModel.date,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 12),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'تاريخ الدورة',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 12),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.watch_later_outlined,
                      color: Colors.green,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 40,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                MyText.textAboutCourse,
                textAlign: TextAlign.end,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(fontSize: 16),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 20,
            right: 20,
          ),
          child: Text(
            informationCourseModel.about,
            textAlign: TextAlign.end,
            style:
                Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 14),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 40,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                MyText.textAboutCourse2,
                textAlign: TextAlign.end,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(fontSize: 16),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 10,
          ),
          child: Text(informationCourseModel.goole,
              textAlign: TextAlign.end,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 14)),
        ),
        Container(
          width: 428,
          height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageMeneger.logo22))),
        ),
      ],
    );
  }
}
