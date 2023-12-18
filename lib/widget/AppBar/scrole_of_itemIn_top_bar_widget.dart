import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class ScroleOfItemInTopBarWidget extends StatelessWidget {
  String text1;
  ScroleOfItemInTopBarWidget({super.key, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      decoration: BoxDecoration(
          color: MyColors.search_backgraund,
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [Text(text1, style: Theme.of(context).textTheme.bodyLarge)],
        ),
      ),
    );
  }
}
