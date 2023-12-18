import 'package:flutter/material.dart';

class SubTitleInAboutUswidget extends StatelessWidget {
  String title2;
  SubTitleInAboutUswidget({
    super.key,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Text(title2,
                textAlign: TextAlign.end,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 12)

                ),
          ),
        ],
      ),
    );
  }
}