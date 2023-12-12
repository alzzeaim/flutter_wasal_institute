import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class NotifcationsWidget extends StatelessWidget {
  IconData icon;
  NotifcationsWidget({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: MyColors.MyBackGroundTapBar,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "قمت بشراء دورة ui / ux",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "منذ 05 دقائق",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: MyColors.MyAction,
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: MyColors.whiteColor,
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}