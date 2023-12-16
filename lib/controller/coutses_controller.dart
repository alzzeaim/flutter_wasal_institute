import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

// information_of_course
class CourseController extends GetxController {
  // final courses = <CourseModel>[].obs;

  Future<List<CourseModel>> fetchCourses() async {
    await Future.delayed(const Duration(seconds: 3));
    final courses = [
      CourseModel(
        title: "التقديم لوظيفة المنظمات الغير ربحية في جميع المجالات",
        depart: "قسم الدورات العلمية",
        imageUrl: imageMeneger.cam1,
        time: '50',
        costs: '15000',
      ),
      CourseModel(
        title: "التقديم لوظيفة المنظمات الغير ربحية في جميع المجالات",
        depart: "قسم الدورات العلمية",
        imageUrl: imageMeneger.cam2,
        time: '50',
        costs: '15000',
      ),
      CourseModel(
        title: "التقديم لوظيفة المنظمات الغير ربحية في جميع المجالات",
        depart: "قسم الدورات العلمية",
        imageUrl: imageMeneger.cam3,
        time: '50',
        costs: '15000',
      ),
      CourseModel(
        title: "التقديم لوظيفة المنظمات الغير ربحية في جميع المجالات",
        depart: "قسم الدورات العلمية",
        imageUrl: imageMeneger.cam4,
        time: '50',
        costs: '15000',
      ),
      CourseModel(
        title: "التقديم لوظيفة المنظمات الغير ربحية في جميع المجالات",
        depart: "قسم الدورات العلمية",
        imageUrl: imageMeneger.cam5,
        time: '50',
        costs: '15000',
      ),
    ];
    // throw Error();

    // return [];

    return courses;
  }
}

class CourseModel {
  final String title;
  final String depart;
  final String imageUrl;
  final String time;
  final String costs;
  CourseModel({
    required this.title,
    required this.depart,
    required this.imageUrl,
    required this.time,
    required this.costs,
  });
}
