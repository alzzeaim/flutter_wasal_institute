import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/text.dart';
import '../constant/text_style.dart';

class Button1 extends StatelessWidget {
  String title;
  VoidCallback nextPage;
  Button1({super.key, required this.title, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: MyColors.MyAction,
            ),
            onPressed: () {
              nextPage;
            },
            child: Text(title,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.white)
                //  MyTextStyle.s_logo_splash_button1_1_
                ),
          ),
        ),
      ),
    );
  }
}
