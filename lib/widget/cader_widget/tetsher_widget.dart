import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/widget/cader_widget/social_media_sites_widget.dart';

import '../../constant/colors.dart';

class Tetsher extends StatelessWidget {
  const Tetsher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 243,
          margin: EdgeInsets.only(
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
            margin: EdgeInsets.only(
              left: 18,
            ),
            height: 229,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageMeneger.ellips5,
                  ),
                ),
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
        Text("محمد اليمني", style: Theme.of(context).textTheme.titleLarge
            
            ),
        Text("مصمم جرافيكس",
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: MyColors.MyAction)

            ),
        Text("الجرافيكس والملتيميديا",
            style:
                Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 14)
         
            ),
      ],
    );
  }
}
