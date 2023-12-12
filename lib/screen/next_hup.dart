import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';
import 'package:flutter_wasal_institute/screen/home_pages/home_firist_page.dart';
import 'package:get/get.dart';

class NextHup extends StatefulWidget {
  const NextHup({super.key});

  @override
  State<NextHup> createState() => _NextHupState();
}

class _NextHupState extends State<NextHup> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
         
      },
      child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: MyColors.MyAction,
          )),
    );
  }
}
