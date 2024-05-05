import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CardPaymentMethodCheckOut extends StatelessWidget {
  final String title;
  final bool isActive;

  const CardPaymentMethodCheckOut(
      {Key? key, required this.title, required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: isActive == true
              ? AppColor.primaryColor.withOpacity(0.5)
              : AppColor.primaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        title,
        style: TextStyle(
            height: 1,
            color: isActive == true
                ? AppColor.backgroundColor
                : AppColor.primaryColor),
      ),
    );
  }
}
