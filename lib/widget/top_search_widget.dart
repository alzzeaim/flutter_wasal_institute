import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/padding.dart';
import '../constant/size.dart';
import '../constant/text.dart';

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
            margin:
                EdgeInsets.only(right: AppSize.z5, top: AppSize.z15, left: 10),
            width: AppSize.z50,
            height: AppSize.z50,
            decoration: BoxDecoration(
              color: MyColors.search_backgraund,
              borderRadius: BorderRadius.circular(AppSize.z10),
            ),
            child: Icon(
              Icons.search_rounded,
              color: MyColors.MyAction,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: AppSize.z15,
            ),
            width: AppSize.z320,
            height: AppSize.z50,
            decoration: BoxDecoration(
                border: Border.all(color: MyColors.whiteColor),
                color: MyColors.search_backgraund,
                borderRadius: BorderRadius.circular(AppSize.z15)),
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
                SizedBox(
                  width: AppSize.z10,
                ),
                Icon(
                  Icons.search,
                  color: MyColors.black_halufe_Color,
                ),
                SizedBox(
                  width: AppSize.z10,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
