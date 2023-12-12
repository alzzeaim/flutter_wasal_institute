import 'package:flutter/material.dart';

class MyColors {
  static Color blackColor = const Color(0xff161817);
  static Color shadowColor = const Color(0xff1b1b1b).withOpacity(0.08);
  static Color lessBlackColor = const Color(0xff1f2120);

  static Color whiteColor = const Color(0xffffffff);

  static Color secondaryTextColor = const Color(0xff777777);
  static Color darkPrimaryColor = Color(0xfff8cea1);
  static Color lightPrimaryColor = Color.fromARGB(255, 5, 81, 143);
}

class Themes {
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
    primaryColor: MyColors.darkPrimaryColor,
    hintColor: MyColors.secondaryTextColor,
    scaffoldBackgroundColor: const Color(0xff2a2e2f),
    colorScheme: ColorScheme.dark(
      background: Color(0xff232728),
      primaryContainer: Color(0xffeeeeee),
      secondaryContainer: Color(0xffeeeeee).withOpacity(0.08),
      tertiaryContainer: Color(0xffeeeeee).withOpacity(0.1),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 16,
        color: MyColors.whiteColor,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 14,
        color: MyColors.whiteColor,
        fontWeight: FontWeight.normal,
        // letterSpacing: 1.1,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 12,
        color: MyColors.whiteColor,
        fontWeight: FontWeight.normal,
        // letterSpacing: 1.2,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 10,
        color: MyColors.secondaryTextColor,
        //fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 8,
        color: MyColors.secondaryTextColor,
        //fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
      ),
    ),
  );
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    primaryColor: MyColors.lightPrimaryColor,
    hintColor: MyColors.secondaryTextColor,
    scaffoldBackgroundColor: Color.fromARGB(255, 224, 223, 223),
    colorScheme: ColorScheme.light(
      background: MyColors.whiteColor,
      primaryContainer: Color.fromARGB(255, 224, 223, 223),
      secondaryContainer: MyColors.whiteColor,
      tertiaryContainer: MyColors.whiteColor.withOpacity(0.5),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 16,
        color: MyColors.blackColor,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 14,
        color: MyColors.blackColor,
        fontWeight: FontWeight.normal,
        // letterSpacing: 1.1,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 12,
        color: MyColors.blackColor,
        fontWeight: FontWeight.normal,
        // letterSpacing: 1.2,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 10,
        color: MyColors.secondaryTextColor,
        //fontWeight: FontWeight.bold,
        // letterSpacing: 1.2,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 8,
        color: MyColors.secondaryTextColor,
        //fontWeight: FontWeight.bold,
        // letterSpacing: 1.2,
      ),
    ),
  );
}
