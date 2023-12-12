import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant/colors.dart';

class ContactInformationWidget extends StatelessWidget {
  const ContactInformationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageMeneger.logo22))),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.facebook,
                color: MyColors.black_halufe_Color,
              ),
              const SizedBox(
                width: 20,
              ),
              Icon(FontAwesomeIcons.whatsapp,
                  color: MyColors.black_halufe_Color),
              const SizedBox(
                width: 20,
              ),
              Icon(FontAwesomeIcons.twitter,
                  color: MyColors.black_halufe_Color),
              const SizedBox(
                width: 20,
              ),
              Icon(FontAwesomeIcons.instagram,
                  color: MyColors.black_halufe_Color),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("04 422936", style: Theme.of(context).textTheme.bodyLarge
                  // TextStyle(color: MyColors.black_halufe_Color),
                  ),
              const SizedBox(
                width: 5,
              ),
              Icon(Icons.phone_outlined, color: MyColors.black_halufe_Color),
              // Spacer(),
              const SizedBox(
                width: 20,
              ),
              Text("+967 775171978",
                  style: Theme.of(context).textTheme.bodyLarge
                  // TextStyle(color: MyColors.black_halufe_Color),
                  ),
              const SizedBox(
                width: 5,
              ),
              Icon(Icons.phone_android_rounded,
                  color: MyColors.black_halufe_Color),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("alzzeaim7751@gmail.com",
                  style: Theme.of(context).textTheme.bodyLarge
                  // TextStyle(color: MyColors.black_halufe_Color),
                  ),
              const SizedBox(
                width: 5,
              ),
              Icon(Icons.email_outlined, color: MyColors.black_halufe_Color),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("www.jats_institut.com",
                  style: Theme.of(context).textTheme.bodyLarge
                  // TextStyle(color: MyColors.black_halufe_Color),
                  ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "@",
                style:
                    TextStyle(color: MyColors.black_halufe_Color, fontSize: 20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
