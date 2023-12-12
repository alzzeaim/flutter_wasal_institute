import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/constant/text.dart';
import 'package:flutter_wasal_institute/screen/home_pages/home_firist_page.dart';
import 'package:flutter_wasal_institute/screen/login_sgin/forgat_password_page.dart';
import 'package:flutter_wasal_institute/screen/login_sgin/sign%20_in_page.dart';
import 'package:flutter_wasal_institute/widget/button1_widget.dart';
import 'package:flutter_wasal_institute/widget/text_form_field_widget.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Image(
            image: AssetImage(imageMeneger.logo22),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: double.infinity,
            // height: double.infinity,
            decoration: BoxDecoration(
              color: MyColors.MyBackGroundTapBar,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: Text(MyText.splash_button1,
                        style: Theme.of(context).textTheme.titleLarge
                        //  MyTextStyle.s_logo_splash_button2_2_,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldwidget(
                    select: false,
                    hint: MyText.TextFormField_login_user,
                    icoon: Icons.person_2_outlined),
                TextFormFieldwidget(
                  icoon: Icons.lock_open,
                  hint: MyText.TextFormField_login_password,
                  select: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ForgatPasswordPage(),
                        ),
                      );
                    },
                    child: Text(
                      MyText.Text_login_forget_password,
                      style: Theme.of(context).textTheme.bodyMedium,
                      //  MyTextStyle.s_login_text_forget_password_4_,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Button1(
                  title: MyText.splash_button1,
                  nextPage: () {
                    Get.to(() => const HomeFristPage());
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SignInPage(),
                          ),
                        );
                      },
                      child: Text(MyText.Text_sign_in,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: MyColors.MyAction)
                          //  MyTextStyle.s_login_sign_word_6_,
                          ),
                    ),
                    Text(MyText.Text_login_goto_signin_page1,
                        style: Theme.of(context).textTheme.bodyMedium
                        //  MyTextStyle.s_login_go_to_signIn_5_,
                        ),
                  ],
                ),
                const SizedBox(
                  height: 110,
                ),
                Center(
                  child: Text(MyText.link_of_wasal,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: MyColors.MyAction)
                      // MyTextStyle.s_link_of_wasal_7_,
                      ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
