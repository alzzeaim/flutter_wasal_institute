import 'package:flutter/material.dart';

import '../../constant/colors.dart';

import '../../constant/text.dart';

class TopSearchWidget extends StatelessWidget {
  const TopSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 5, top: 15, left: 10),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: MyColors.item_of_cader,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.search_rounded,
              color: MyColors.MyAction,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 15,
            ),
            width: 320,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: MyColors.whiteColor),
                color: MyColors.item_of_cader,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: MyText.searsh_about,
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.search,
                  color: MyColors.black_halufe_Color,
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
