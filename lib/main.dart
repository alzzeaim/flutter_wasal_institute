import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/getxLap/sneckbar.dart';
import 'package:flutter_wasal_institute/screen/splash/splash.dart';
import 'package:get/get.dart';

import 'constant/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: Themes.customLightTheme,
      home: cour(),
    );
  }
}

// GestureDetector
//                 nextPage: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => NextVideo(),
//                     ),
//                   );
//                 },
