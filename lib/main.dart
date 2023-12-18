import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/screen/home_pages/home_firist_page.dart';
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
      builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: child!),
      title: 'Flutter Demo',
      theme: Themes.customLightTheme,
      home: const SplashPages(),
    );
  }
}
