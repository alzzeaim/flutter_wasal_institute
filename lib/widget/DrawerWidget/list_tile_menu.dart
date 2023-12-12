import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../constant/padding.dart';
import '../../constant/size.dart';



class ListTileMenu extends StatelessWidget {
  IconData iconMenu;
  final titleitem_menu;
  VoidCallback movePage;
  ListTileMenu({
    super.key,
    required this.iconMenu,
    required this.titleitem_menu,
    required this.movePage,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Padding(
        padding: EdgeInsets.only(
          right: AppPadding.p20,
          top: AppPadding.p5,
        ),
        child: Icon(
          iconMenu,
          color: MyColors.black_halufe_Color,
          size: AppSize.z24,
        ),
      ),
      title: Text(titleitem_menu,
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.bodyLarge
          ),
      onTap: () {
        movePage();
      },
    );
  }
}
