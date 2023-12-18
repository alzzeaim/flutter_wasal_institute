import 'package:flutter/material.dart';

class MyColorss {
  static Color blackColor = const Color(0xff161817);
  static Color shadowColor = const Color(0xff1b1b1b).withOpacity(0.08);
  static Color lessBlackColor = const Color(0xff1f2120);

  static Color whiteColor = const Color(0xffffffff);

  static Color secondaryTextColor = const Color(0xff777777);
  static Color darkPrimaryColor = const Color(0xfff8cea1);
  static Color lightPrimaryColor = const Color.fromARGB(255, 5, 81, 143);
}

class Themes {
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
    primaryColor: MyColorss.darkPrimaryColor,
    hintColor: MyColorss.secondaryTextColor,
    scaffoldBackgroundColor: const Color(0xff2a2e2f),
    colorScheme: ColorScheme.dark(
      background: const Color(0xff232728),
      primaryContainer: const Color(0xffeeeeee),
      secondaryContainer: const Color(0xffeeeeee).withOpacity(0.08),
      tertiaryContainer: const Color(0xffeeeeee).withOpacity(0.1),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 16,
        color: MyColorss.whiteColor,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 14,
        color: MyColorss.whiteColor,
        fontWeight: FontWeight.normal,
        // letterSpacing: 1.1,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 12,
        color: MyColorss.whiteColor,
        fontWeight: FontWeight.normal,
        // letterSpacing: 1.2,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 10,
        color: MyColorss.secondaryTextColor,
        //fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 8,
        color: MyColorss.secondaryTextColor,
        //fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
      ),
    ),
  );
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    primaryColor: MyColorss.lightPrimaryColor,
    hintColor: MyColorss.secondaryTextColor,
    scaffoldBackgroundColor: const Color.fromARGB(255, 224, 223, 223),
    colorScheme: ColorScheme.light(
      background: MyColorss.whiteColor,
      primaryContainer: const Color.fromARGB(255, 224, 223, 223),
      secondaryContainer: MyColorss.whiteColor,
      tertiaryContainer: MyColorss.whiteColor.withOpacity(0.5),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 16,
        color: MyColorss.blackColor,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 14,
        color: MyColorss.blackColor,
        fontWeight: FontWeight.normal,
        // letterSpacing: 1.1,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 12,
        color: MyColorss.blackColor,
        fontWeight: FontWeight.normal,
        // letterSpacing: 1.2,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 10,
        color: MyColorss.secondaryTextColor,
        //fontWeight: FontWeight.bold,
        // letterSpacing: 1.2,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 8,
        color: MyColorss.secondaryTextColor,
        //fontWeight: FontWeight.bold,
        // letterSpacing: 1.2,
      ),
    ),
  );
}
