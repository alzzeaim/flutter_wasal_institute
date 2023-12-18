import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';

import 'package:get/get.dart';

import '../../constant/text.dart';
import '../home_pages/home_firist_page.dart';
import '../login_sgin/login_page.dart';

class Splash1Page extends StatefulWidget {
  String url;
  String text;
  bool endSplash;
  Splash1Page(
      {super.key,
      required this.url,
      required this.text,
      required this.endSplash});

  @override
  State<Splash1Page> createState() => _Splash1PageState();
}

class _Splash1PageState extends State<Splash1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // if (!widget.endSplash)
      //  if (widget.endSplash)
      //        backgroundColor: MyColors.MyBackGround,
      backgroundColor: Colors.transparent,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Image(
            image: AssetImage(widget.url),
          ),
          SizedBox(
            height: 20,
          ),
          if (!widget.endSplash)
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                widget.text,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.white),
                //  MyTextStyle.s_splash_1_,
                textAlign: TextAlign.center,
              ),
            ),
          // if (widget.endSplash) LogoSplashPage(),

          if (widget.endSplash)
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 200,
                  ),
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => LoginPage()),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.scandcolor,
                        elevation: 0,
                        minimumSize: Size.fromHeight(45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        MyText.splash_button1,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.white,
                            ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => HomeFristPage()),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        minimumSize: Size.fromHeight(45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side:
                                BorderSide(color: MyColors.MyAction, width: 1)),
                      ),
                      child: Text(
                        MyText.splash_button2,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: MyColors.MyAction,
                            ),
                      )),
                ),
              ],
            )
        ],
      )),
    );
  }
}
