import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';
import 'package:flutter_wasal_institute/widget/app_bar_widget.dart';
import 'package:flutter_wasal_institute/widget/text_form_field_widget.dart';
import 'package:get/get.dart';

class ProfailPage extends StatefulWidget {
  const ProfailPage({super.key});

  @override
  State<ProfailPage> createState() => _ProfailPageState();
}

class _ProfailPageState extends State<ProfailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(
          cont: context,
          Title: "الاعدادات الشخصية",
          backPage: () {
            Get.back();
          }),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 30),
                  child: Icon(
                    Icons.edit_document,
                    color: MyColors.black_halufe_Color,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 70,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          "محمد عبدة مجلي ",
                          textAlign: TextAlign.end,
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                      Text(
                        "+967 775171978",
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, right: 20),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: MyColors.MyAction,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.perm_identity,
                    color: MyColors.whiteColor,
                    size: 45,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35, top: 10),
              child: Text(
                "تغيير الصورة الشخصية",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: MyColors.MyAction),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 5),
            //   child: Text(
            //     "alzzeaim7751@gmail.com",
            //     textAlign: TextAlign.end,
            //     style: Theme.of(context).textTheme.headlineLarge,
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 5),
            //   child: Text(
            //     "alzzeaim7751@gmail.com",
            //     textAlign: TextAlign.end,
            //     style: Theme.of(context).textTheme.headlineLarge,
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.only(left: 60, top: 100),
            //   width: 26,
            //   height: 26,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(50), color: Colors.green),
            //   child: Icon(
            //     Icons.add,
            //     color: MyColors.whiteColor,
            //   ),
            // ),
            // SizedBox(
            //   height: 50,
            // ),
            // TextFormFieldwidget(
            //     hint: "الاسم",
            //     icoon: Icons.perm_identity_rounded,
            //     select: false),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: TextFormFieldwidget(
                  hint: "البريد الاكتروني",
                  icoon: Icons.email_outlined,
                  select: false),
            ),
            // TextFormFieldwidget(
            //     hint: "رقم الهاتف", icoon: Icons.phone_outlined, select: false),
            TextFormFieldwidget(
                hint: "العنوان",
                icoon: Icons.location_on_outlined,
                select: false),
          ],
        ),
      )),
    );
  }
}
