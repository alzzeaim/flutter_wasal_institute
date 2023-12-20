import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class TitleAndViweAllHomeWidget extends StatelessWidget {
  String title;
  VoidCallback nextPage;

  TitleAndViweAllHomeWidget({
    super.key,
    required this.title,
    required this.nextPage,
    TextStyle? style,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              nextPage();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                // color: MyColors.MyAction,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.chevron_left_rounded,
                      color: MyColors.black_halufe_Color,
                    ),
                    Text("عرض الكل",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontSize: 12)),
                  ]),
            ),
          ),
          const Spacer(),
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontSize: 16)),
        ],
      ),
    );
  }
}
