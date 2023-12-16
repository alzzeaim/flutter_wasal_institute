// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:get/instance_manager.dart';
// import 'package:get/route_manager.dart';
// import 'package:learn_getx/controller.dart';

// class FirstPage extends StatelessWidget {
//   FirstPage({
//     super.key,
//   });
//   CounterController counterController = Get.find();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // GetBuilder<CounterController>(builder: (cc) {
//               //   return Text("hello ${cc.index}");
//               // }),
//               Obx(() => Text("hello world ${counterController.index}")),
//               const SizedBox(
//                 height: 30,
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     counterController.increamint();
//                     counterController.increamintTow();
//                   },
//                   child: const Text("data")),
//               ElevatedButton(
//                   onPressed: () {
//                     Get.back();
//                   },
//                   child: const Text("go pack")),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
