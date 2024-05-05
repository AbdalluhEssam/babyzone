import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class CardDeliveryTypeCheckOut extends StatelessWidget {
  final String imageName;
  final String title;
  final bool isActive;

  const CardDeliveryTypeCheckOut(
      {Key? key,
      required this.imageName,
      required this.title,
      required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:
              isActive == true ? AppColor.primaryColor.withOpacity(0.5) : null,
          border: Border.all(color: isActive == true ? AppColor.primaryColor.withOpacity(0.2):AppColor.primaryColor.withOpacity(0.5))),
      height: Get.width * 0.29,
      width: Get.width * 0.29,
      child: Column(
        children: [
          Image.asset(
            imageName,
            width: Get.width * 0.2,
            color: isActive == true ? AppColor.backgroundColor : null,
          ),
          Text(
            title,
            style: TextStyle(
                // fontSize: 16,
                color: isActive == true
                    ? AppColor.backgroundColor
                    : AppColor.primaryColor,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
