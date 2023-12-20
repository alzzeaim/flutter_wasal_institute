import 'package:flutter/material.dart';
import '../../constant/colors.dart';

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
        padding: const EdgeInsets.only(
          right: 20,
          top: 5,
        ),
        child: Icon(
          iconMenu,
          color: MyColors.black_halufe_Color,
          size: 24,
        ),
      ),
      title: Text(titleitem_menu,
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14)),
      onTap: () {
        movePage();
      },
    );
  }
}
