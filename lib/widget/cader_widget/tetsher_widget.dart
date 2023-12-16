import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/widget/cader_widget/social_media_sites_widget.dart';

import '../../constant/colors.dart';

class TetsherWiget extends StatelessWidget {
  String url;
  String name;
  String jop;
  String depart;
  TetsherWiget({
    super.key,
    required this.url,
    required this.name,
    required this.jop,
    required this.depart,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 243,
          margin: const EdgeInsets.only(
            top: 10,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageMeneger.shipe2,
              ),
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(
              left: 18,
            ),
            height: 229,
            width: 229,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      url,
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(300)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaSites(
                  URL_Image: imageMeneger.Instagram,
                ),
                SocialMediaSites(
                  URL_Image: imageMeneger.facebook,
                ),
                SocialMediaSites(
                  URL_Image: imageMeneger.twiter,
                ),
              ],
            ),
          ),
        ),
        Text(name, style: Theme.of(context).textTheme.titleLarge),
        Text(jop,
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: MyColors.MyAction)),
        Text(depart,
            style:
                Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 14)),
      ],
    );
  }
}
