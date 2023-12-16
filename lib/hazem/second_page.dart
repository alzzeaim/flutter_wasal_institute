// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:get/instance_manager.dart';

// // class SecondPage extends StatelessWidget {
// //   SecondPage({super.key});
// //   CounterController counterController = Get.put(CounterController());

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SafeArea(
// //         child: Obx(
// //           () => counterController.array.isEmpty
// //               ? Container(
// //                   child: const Center(
// //                     child: CircularProgressIndicator(),
// //                   ),
// //                 )
// //               : ListView.builder(
// //                   itemCount: counterController.array.length,
// //                   itemBuilder: (BuildContext context, int index) {
// //                     return Container(
// //                       margin: const EdgeInsets.symmetric(
// //                           horizontal: 25, vertical: 5),
// //                       padding: const EdgeInsets.all(20),
// //                       width: double.infinity,
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(15),
// //                         color: Colors.amber,
// //                       ),
// //                       child: Text(counterController.array[index]),
// //                     );
// //                   },
// //                 ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// // class SecondPage extends StatelessWidget {
// //   SecondPage({super.key});
// //   CounterController counterController = Get.put(CounterController());

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SafeArea(
// //         child: FutureBuilder<List<String>>(
// //           future: counterController.getCourses(),
// //           builder: (BuildContext context, AsyncSnapshot snapshot) {
// //             if (snapshot.connectionState == ConnectionState.waiting) {
// //               return Container(
// //                 child: const Center(
// //                   child: CircularProgressIndicator(),
// //                 ),
// //               );
// //             }
// //             if (snapshot.connectionState == ConnectionState.done) {
// //               if (snapshot.hasError) {
// //                 return const Text("data has error");
// //               }
// //               if (snapshot.hasData) {
// //                 return ListView.builder(
// //                   itemCount: snapshot.data.length,
// //                   itemBuilder: (BuildContext context, int index) {
// //                     return Container(
// //                       margin: const EdgeInsets.symmetric(
// //                           horizontal: 25, vertical: 5),
// //                       padding: const EdgeInsets.all(20),
// //                       width: double.infinity,
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(15),
// //                         color: Colors.amber,
// //                       ),
// //                       child: Text(snapshot.data[index]),
// //                     );
// //                   },
// //                 );
// //               } else {
// //                 return const Center(
// //                   child: Text("it is empty"),
// //                 );
// //               }
// //             }

// //             return const Text("error");
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }

// CourseController courseController = Get.put(CourseController());

// class SecondPage extends StatelessWidget {
//   SecondPage({super.key});
//   CounterController counterController = Get.put(CounterController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: FutureBuilder<List<CourseModel>>(
//           future: courseController.fetchCourses(),
//           builder: (BuildContext context, AsyncSnapshot snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return Container(
//                 child: const Center(
//                   child: CircularProgressIndicator(),
//                 ),
//               );
//             }
//             if (snapshot.connectionState == ConnectionState.done) {
//               if (snapshot.hasError) {
//                 return const Center(child: Text("data has error"));
//               }
//               if (snapshot.hasData) {
//                 if (snapshot.data.length == 0) {
//                   return const Center(
//                     child: Text("it is empty"),
//                   );
//                 }
//                 return ListView.builder(
//                   itemCount: snapshot.data.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return CourseItemWidget(
//                       courseModel: snapshot.data[index],
//                     );
//                   },
//                 );
//               }
//             }

//             return const Center(child: Text("error"));
//           },
//         ),
//       ),
//     );
//   }
// }

// class CourseItemWidget extends StatelessWidget {
//   final CourseModel courseModel;

//   const CourseItemWidget({super.key, required this.courseModel});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
//       padding: const EdgeInsets.all(20),
//       width: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         color: Colors.amber,
//       ),
//       child: Column(
//         children: [
//           Text(courseModel.name),
//           Text(courseModel.description),
//         ],
//       ),
//     );
//   }
// }
