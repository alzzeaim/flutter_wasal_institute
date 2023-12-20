import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/images.dart';

import '../../constant/colors.dart';

class SlidHomeWidget extends StatelessWidget {
  const SlidHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          width: 388,
          height: 166,
          decoration: BoxDecoration(
            color: MyColors.MyAction,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 20),
                  child: Text("مرحباً",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                            fontSize: 12,
                          )
                    
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 13, top: 10),
                  child: Text("محمد مجلي",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(color: Colors.white)
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16, top: 10),
                  child: Text("في اكاديمية جاتس",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.white, fontSize: 16)
                      ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 5,
            top: 40,
          ),
          width: 168,
          height: 160,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(imageMeneger.imageHome))),
        ),
      ],
    );
  }
}
