import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class CatogrisOfHomeWidget extends StatelessWidget {
  IconData icon;
  String title;
  VoidCallback nextPage;
  CatogrisOfHomeWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.nextPage,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          nextPage();
        },
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 13,
          ),
          decoration: BoxDecoration(
              color: MyColors.MyAction.withOpacity(0.08),
              borderRadius: BorderRadius.circular(23)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title, style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  icon,
                  color: MyColors.black_halufe_Color,
                ),
              ]),
        ),
      ),
    );
  }
}
