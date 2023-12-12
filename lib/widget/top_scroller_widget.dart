import 'package:flutter/material.dart';

import '../constant/text.dart';
import 'cader_widget/scrole_of_itemIn_top_bar_widget.dart';

class TopScroller extends StatelessWidget {
  TopScroller({
    super.key,
  });
  List<Map<String, dynamic>> map_item = [
    {'text': MyText.textAll},
    {'text': MyText.textDepartmentEnglash},
    {'text': MyText.textDepartmentAccounting},
    {'text': MyText.textDepartmentComputer},
    {'text': MyText.textDepartmentGraphics},
    {'text': MyText.textDepartmentScientificCourses},
    {'text': MyText.textDepartmentSecondaryReinforcement},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemCount: map_item.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return ScroleOfItemInTopBar(
            text1: map_item[index]["text"],
          );
        },
      ),
    );
  }
}
