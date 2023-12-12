import 'package:flutter/material.dart';

class Bolet extends StatelessWidget {
  bool selected;
  Bolet({super.key, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 2.5,
        vertical: 10,
      ),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: selected ? Colors.white : null,
        border: Border.all(
          color: selected ? Colors.white : Colors.white.withOpacity(0.5),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class NextAndBack extends StatelessWidget {
  VoidCallback nextPage;
  IconData icon;

  NextAndBack({super.key, required this.nextPage, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        nextPage();
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white.withOpacity(0.5),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
