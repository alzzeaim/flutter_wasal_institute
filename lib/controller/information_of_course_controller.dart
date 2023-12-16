import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/constant/text.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

// information_of_course
class InformationOfCourseController extends GetxController {
  // final courses = <CourseModel>[].obs;

  Future<List<InformationCourseModel>> fetchInformationCourseModel() async {
    await Future.delayed(const Duration(seconds: 2));
    final InformationCourse = [
      InformationCourseModel(
        title: MyText.splash3,
        about: MyText.textAboutCourse1,
        imageUrl: imageMeneger.cam1,
        time: 'من 08 إلى 12',
        costs: '15000',
        date: '07/10/2023',
        duration: '50',
        goole: MyText.textAboutCourse3,
      ),
    ];
    // throw Error();

    // return [];

    return InformationCourse;
  }
}

class InformationCourseModel {
  final String title;
  final String time;
  final String costs;
  final String date;
  final String duration;
  final String imageUrl;
  final String goole;
  final String about;

  InformationCourseModel({
    required this.title,
    required this.date,
    required this.imageUrl,
    required this.time,
    required this.costs,
    required this.about,
    required this.duration,
    required this.goole,
  });
}
