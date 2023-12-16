import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';
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
          padding: const EdgeInsets.only(left: 0, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Text(
                      " ر.ي",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      informationCourseModel.costs,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'سعرالدورة',
                      style: Theme.of(context).textTheme.bodyMedium,
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
              const SizedBox(
                width: 50,
              ),
              Row(
                children: [
                  Text(
                    " ساعة",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    informationCourseModel.duration,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'مدة الدورة',
                    style: Theme.of(context).textTheme.bodyMedium,
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
          padding: const EdgeInsets.only(left: 0, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      informationCourseModel.time,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'دوام الدورة',
                      style: Theme.of(context).textTheme.bodyMedium,
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
              const SizedBox(
                width: 50,
              ),
              Row(
                children: [
                  Text(
                    informationCourseModel.date,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'تاريخ الدورة',
                    style: Theme.of(context).textTheme.bodyMedium,
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
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                MyText.textAboutCourse,
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            informationCourseModel.about,
            textAlign: TextAlign.end,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                MyText.textAboutCourse2,
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(informationCourseModel.goole,
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.bodyMedium),
        ),
        Container(
          width: 428,
          height: 300,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(imageMeneger.logo22))),
        ),
      ],
    );
  }
}
