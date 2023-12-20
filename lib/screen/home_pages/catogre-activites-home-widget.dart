import 'package:flutter/material.dart';

class CatogreActivitesHomeWidget extends StatelessWidget {
  String title;
  String depart;
  String url;
  VoidCallback nextPage;

  CatogreActivitesHomeWidget({
    super.key,
    required this.depart,
    required this.title,
    required this.url,
    required this.nextPage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: GestureDetector(
        onTap: () {
          nextPage();
        },
        child: Column(
          children: [
            Container(
              width: 368,
              height: 196,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(url), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              // child: FaIcon(FontAwesomeIcons.),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                title,
                textAlign: TextAlign.end,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    depart,
                    textAlign: TextAlign.end,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
