import 'package:flutter/material.dart';
import 'package:flutter_wasal_institute/constant/colors.dart';

class TextFormFieldwidget extends StatelessWidget {
  // bool isNew;
  String hint;
  IconData icoon;
  bool select;
  TextFormFieldwidget({
    super.key,
    required this.hint,
    required this.icoon,
    required this.select,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: TextFormField(
          cursorColor: MyColors.MyAction,
          textAlign: TextAlign.right,
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            suffixIcon: Icon(icoon),
            prefixIcon:
                select ? const Icon(Icons.remove_red_eye_outlined) : null,
            hintText: hint,
            hintStyle: Theme.of(context).textTheme.bodyMedium,
            // MyTextStyle.s_login_TextFormField_3_,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: MyColors.search_backgraund,
          ),
        ),
      ),
    );
  }
}

// class TextFormFileldPasswordWidget extends StatelessWidget {
//   String hintPass;
//   TextFormFileldPasswordWidget({super.key, required this.hintPass});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//         vertical: 15.0,
//         horizontal: 20.0,
//       ),
//       child: SizedBox(
//         width: double.infinity,
//         height: 50,
//         child: TextFormField(
//           textAlign: TextAlign.right,
//           textAlignVertical: TextAlignVertical.bottom,
//           decoration: InputDecoration(
//             // icon: Icon(Icons.ac_unit),
//             suffixIcon: Icon(Icons.lock_open),
//             prefixIcon: Icon(Icons.remove_red_eye_outlined),

//             hintText: hintPass,
//             hintStyle: Theme.of(context).textTheme.bodyMedium,
//             //  MyTextStyle.s_login_TextFormField_3_,
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(20),
//               borderSide: BorderSide.none,
//             ),
//             filled: true,
//             fillColor: MyColors.search_backgraund,
//           ),
//         ),
//       ),
//     );
//   }
// }
