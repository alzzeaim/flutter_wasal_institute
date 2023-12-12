import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/constant/text.dart';
import 'package:flutter_wasal_institute/constant/text_style.dart';
import 'package:flutter_wasal_institute/screen/home_pages/home_firist_page.dart';
import 'package:flutter_wasal_institute/screen/login_sgin/login_page.dart';

class LogoSplashPage extends StatefulWidget {
  const LogoSplashPage({super.key});

  @override
  State<LogoSplashPage> createState() => _LogoSplashPageState();
}

class _LogoSplashPageState extends State<LogoSplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 120,
                top: 150,
              ),
              child: Image(
                image: AssetImage(
                  imageMeneger.logo22,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  width: 367,
                  height: 60,
                  decoration: BoxDecoration(
                    color: MyColors.scandcolor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      MyText.splash_button1,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors
                              .white), // MyTextStyle.s_logo_splash_button2_2_,
                      textAlign: TextAlign.center,
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeFristPage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                width: 367,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColors.MyAction,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    MyText.splash_button2,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: MyColors.MyAction),
                    //  MyTextStyle.s_logo_splash_button1_1_,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
