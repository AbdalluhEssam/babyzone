import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButtonCheckOut extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomButtonCheckOut({Key? key, this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 80),
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
