import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/constant/text.dart';
import '../../widget/text_form_field_widget.dart';

class RegisterForTheCoursePage extends StatefulWidget {
  const RegisterForTheCoursePage({super.key});

  @override
  State<RegisterForTheCoursePage> createState() =>
      _RegisterForTheCoursePageState();
}

class _RegisterForTheCoursePageState extends State<RegisterForTheCoursePage> {
  var selected;
  List listItem = [
    "08:00 PM",
    "10:00 PM",
    "12:00 PM",
    "02:00 AM",
    "04:00 AM",
    "06:00 AM",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 428,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imageMeneger.logo22))),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Text(
                  MyText.textNameOfCourse,
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.end,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: Text(
                  MyText.textDepartmentGraphics,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontSize: 12),
                  textAlign: TextAlign.end,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: TextFormFieldwidget(
                    select: false,
                    hint: MyText.TextFormField_login_user,
                    icoon: Icons.person_2_outlined),
              ),
              TextFormFieldwidget(
                  select: false,
                  hint: MyText.TextFormField_login_user,
                  icoon: Icons.phone_outlined),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[200],
                      ),
                      child: DropdownButton(
                        underline: const Divider(thickness: 0),
                        // focusColor: Colors.amber,
                        dropdownColor: Colors.grey[200],
                        // iconEnabledColor: Colors.blueGrey,
                        // iconDisabledColor: Colors.brown,
                        borderRadius: BorderRadius.circular(20),
                        hint: Text(
                          "اختار الوقت",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        value: selected,
                        onChanged: (val) {
                          setState(
                            () {
                              selected = val.toString();
                            },
                          );
                        },
                        items: listItem
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Center(
                                    child: Text(
                                      e,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(fontSize: 14),
                                      // textAlign: TextAlign.center,
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(MyText.textTimeOfCourse,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 12)),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: Icon(
                      Icons.access_time,
                      color: MyColors.MyAction,
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 60),
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColors.MyAction,
                  ),
                  child: Center(
                    child: Text("تسجيل",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(color: Colors.white)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
