import 'package:flutter/material.dart';
import 'package:babyzone/core/constant/color.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final IconData iconData;
  final bool isActive;

  const CustomButtonAppBar({
    Key? key,
    this.onPressed,
    required this.text,
    required this.iconData,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 6,
          ),
          Icon(
            iconData,
            color: isActive == true
                ? AppColor.primaryColor
                : AppColor.backgroundColor,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 11,
                color: isActive == true
                    ? AppColor.primaryColor
                    : AppColor.backgroundColor),
          )
        ],
      ),
    );
  }
}
