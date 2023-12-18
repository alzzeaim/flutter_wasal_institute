import 'package:flutter/material.dart';

class TitleInAboutUsWidget extends StatelessWidget {
  String title1;
  TitleInAboutUsWidget({
    super.key,
    required this.title1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(title1,
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.titleLarge
            
              ),
        ],
      ),
    );
  }
}