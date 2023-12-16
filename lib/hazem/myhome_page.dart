// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:get/instance_manager.dart';
// import 'package:get/route_manager.dart';
// import 'package:learn_getx/controller.dart';
// import 'package:learn_getx/first_page.dart';

// class MyHomePage extends StatelessWidget {
//   MyHomePage({super.key});
//   final CounterController counterController = Get.put(CounterController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Obx(() => Text("hello world ${counterController.index}")),
//               const SizedBox(
//                 height: 30,
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     counterController.increamint();
//                   },
//                   child: const Text("data")),
//               ElevatedButton(
//                   onPressed: () {
//                     Get.to(() => FirstPage());
//                   },
//                   child: const Text("got to first page")),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
