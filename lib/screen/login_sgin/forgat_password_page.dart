import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/screen/login_sgin/sign%20_in_page.dart';

import '../../constant/colors.dart';
import '../../constant/text.dart';
import '../../widget/button1_widget.dart';
import '../../widget/text_form_field_widget.dart';

class ForgatPasswordPage extends StatefulWidget {
  const ForgatPasswordPage({super.key});

  @override
  State<ForgatPasswordPage> createState() => _ForgatPasswordPageState();
}

class _ForgatPasswordPageState extends State<ForgatPasswordPage> {
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
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: Text(MyText.Text_login_forget_password,
                        style: Theme.of(context).textTheme.titleLarge
                        // MyTextStyle.s_logo_splash_button2_2_,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  child: Center(
                    child: Text(
                      MyText.dec_forget_pass_page,
                      style: Theme.of(context).textTheme.bodyMedium,
                      //  MyTextStyle.s_dec_forgat_pass_page_8_,,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldwidget(
                    select: false,
                    hint: MyText.TextFormField_sign_in_email,
                    icoon: Icons.email_outlined),
                // SizedBox(
                //   height: 10,
                // ),
                Button1(
                  title: MyText.text_forgat_pass_button,
                  nextPage: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignInPage(),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) =>
                          // showDialog(
                          //   context: context,
                          //   builder: (context) => AlertDialog(
                          //       title: Column(
                          //         children: [
                          //           Row(
                          //             mainAxisAlignment:
                          //                 MainAxisAlignment.spaceBetween,
                          //             children: [
                          //               IconButton(
                          //                   onPressed: () {},
                          //                   icon: const Icon(Icons
                          //                       .cancel_presentation_rounded)),
                          //               const Text("data"),
                          //             ],
                          //           ),
                          //           const SizedBox(
                          //             height: 10,
                          //           ),
                          //           Image(image: AssetImage(imageMeneger.scur)),
                          //         ],
                          //       ),
                          //       content: Column(
                          //         children: [
                          //           const Text(
                          //             MyText.text_verifi_diloag_,
                          //             textAlign: TextAlign.center,
                          //           ),
                          //           Row(
                          //             children: [
                          //               Padding(
                          //                 padding: const EdgeInsets.symmetric(
                          //                   vertical: 5.0,
                          //                   horizontal: 5.0,
                          //                 ),
                          //                 child: SizedBox(
                          //                   width: double.infinity,
                          //                   height: 30,
                          //                   child: TextFormField(
                          //                     textAlign: TextAlign.right,
                          //                     textAlignVertical:
                          //                         TextAlignVertical.bottom,
                          //                     decoration: InputDecoration(
                          //                       // icon: Icon(Icons.ac_unit),
                          //                       suffixIcon:
                          //                           const Icon(Icons.lock_open),
                          //                       prefixIcon: const Icon(Icons
                          //                           .remove_red_eye_outlined),

                          //                       hintText: "hintPass",
                          //                       hintStyle: MyTextStyle
                          //                           .s_login_TextFormField_3_,
                          //                       border: OutlineInputBorder(
                          //                         borderRadius:
                          //                             BorderRadius.circular(20),
                          //                         borderSide: BorderSide.none,
                          //                       ),
                          //                       filled: false,
                          //                       fillColor: Colors.grey[200],
                          //                     ),
                          //                   ),
                          //                 ),
                          //               ),
                          //             ],
                          //           )
                          //         ],
                          //       )),
                          // );
                          //   ),
                          // );
                        },
                        child: Text(MyText.Text_forgat_pass_back_to_login,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: MyColors.MyAction)
                            //  MyTextStyle.s_forgat_pass_back_to_login_9_,
                            ),
                      ),
                      Text(MyText.Text_forgat_pass_remamper,
                          style: Theme.of(context).textTheme.bodyMedium
                          //  MyTextStyle.s_forgat_pass_remamper_72_,
                          ),
                    ],
                  ),
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
