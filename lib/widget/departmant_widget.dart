import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/images.dart';
import 'package:flutter_wasal_institute/screen/courses/courses_page.dart';

class DepartmantWidget extends StatelessWidget {
  String title;
  String numberOfCourses;
  DepartmantWidget(
      {super.key, required this.numberOfCourses, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.of(context).push(
      //     MaterialPageRoute(
      //       builder: (context) => CoursesPage(),
      //     ),
      //   );
      // },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imageMeneger.cam1), fit: BoxFit.cover,
                  //  fit: BoxFit.cover
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20, top: 5),
            child: Row(
              children: [
                const Text("دورات"),
                Text(numberOfCourses),
                const SizedBox(
                  width: 5,
                ),
                const Icon(Icons.menu_book_rounded),
                // FaIcon(FontAwesomeIcons.book)
                const Spacer(),
                Text(title)
              ],
            ),
          )
        ],
      ),
    );
  }
}
