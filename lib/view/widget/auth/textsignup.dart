import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomTextSignUpOrIn extends StatelessWidget {
  final String text1;
  final String text2;
  final void Function() onTap;
  const CustomTextSignUpOrIn(
      {Key? key, required this.text1, required this.text2, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          textAlign: TextAlign.center,
          style: const TextStyle(color: AppColor.gray,fontSize: 16),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            ' $text2',
            style: const TextStyle(
                color: AppColor.primaryColor, fontWeight: FontWeight.bold,fontSize: 18),
          ),
        )
      ],
    );
  }
}
