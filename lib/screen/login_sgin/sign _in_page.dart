import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/screen/login_sgin/login_page.dart';
import 'package:flutter_wasal_institute/widget/button1_widget.dart';
import '../../constant/colors.dart';
import '../../constant/text.dart';
import '../../widget/text_form_field_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Image(
            image: AssetImage(imageMeneger.logo22),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            // height: double.infinity,
            decoration: BoxDecoration(
              color: MyColors.MyBackGroundTapBar,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Center(
                        child: Text(MyText.splash_button1,
                            style: Theme.of(context).textTheme.titleLarge
                            // MyTextStyle.s_logo_splash_button2_2_,
                            ),
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 15,
                          top: 15,
                        ),
                        child: Row(
                          children: [
                            Text("رجوع",
                                style: Theme.of(context).textTheme.bodyMedium
                                //  TextStyle(
                                //   color: Colors.grey,
                                //   fontSize: 10,
                                //   fontWeight: FontWeight.w600,
                                // ),
                                ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                TextFormFieldwidget(
                    select: false,
                    hint: MyText.TextFormField_sign_in_user,
                    icoon: Icons.person_2_outlined),
                TextFormFieldwidget(
                  select: false,
                  hint: MyText.TextFormField_sign_in_phon,
                  icoon: Icons.phone_outlined,
                ),
                TextFormFieldwidget(
                  select: false,
                  hint: MyText.TextFormField_sign_in_email,
                  icoon: Icons.email_outlined,
                ),
                TextFormFieldwidget(
                  icoon: Icons.lock_open,
                  hint: MyText.TextFormField_sign_in_password,
                  select: true,
                ),
                TextFormFieldwidget(
                  icoon: Icons.lock_open,
                  hint: MyText.TextFormField_sign_in_Re_password,
                  select: true,
                ),
                Button1(
                  title: MyText.splash_button2,
                  nextPage: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SignInPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(MyText.link_of_wasal,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: MyColors.MyAction)
                      //  MyTextStyle.s_link_of_wasal_7_,
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
