// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:flutter_wasal_institute/constant/colors.dart';
// import 'package:flutter_wasal_institute/constant/images.dart';
// import 'package:flutter_wasal_institute/screen/courses/catogre_of_courses_1.dart';
// import 'package:flutter_wasal_institute/widget/app_bar_widget.dart';
// import 'package:flutter_wasal_institute/widget/top_scroller_widget.dart';
// import 'package:flutter_wasal_institute/widget/top_search_widget.dart';
// import 'package:get/get.dart';

// class CoursesPage extends StatefulWidget {
//   const CoursesPage({super.key});

//   @override
//   State<CoursesPage> createState() => _CoursesPageState();
// }

// class _CoursesPageState extends State<CoursesPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: MyColors.MyBackGround,
//       appBar: AppBarWidget.appBarWidgetTitle(
//         cont: context,
//         Title: "الدورات الجديدة",
//         backPage: () {
//           Get.back();
//         },
//       ),
//       body: SafeArea(
//           child: Column(
//         children: [
//           const TopSearchWidget(),
//           TopScroller(),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
//               child: MasonryGridView.builder(
//                 itemCount: 5,
//                 gridDelegate:
//                     const SliverSimpleGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 1),
//                 itemBuilder: (context, index) => CatogreOfCourses1Widget(
//                     url: imageMeneger.cam5,
//                     title:
//                         "التقديم لوظيفة المنظمات الغير ربحية في جميع المجالات",
//                     depart: "قسم الدورات العلمية",
//                     coste: "1500",
//                     time: "50"),
//               ),
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }
