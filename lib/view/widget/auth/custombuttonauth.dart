import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/icon_broken.dart';
import '../../../core/functions/translatedordatabase.dart';
import '../../Constant.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color? color;
  final Color? textColor;

  const CustomButtonAuth(
      {Key? key,
      this.onPressed,
      required this.text,
      this.color,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: babyZoneColor),
      child: MaterialButton(
        height: 45,
        minWidth: Get.width * 0.7,

        padding: const EdgeInsets.symmetric(vertical: 13),
        textColor: textColor ?? Colors.white,
        onPressed: onPressed,
        child: Text(text, style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
class CustomButtonAuthIcons extends StatelessWidget {
  final void Function() onPressed;
  final IconData iconData;

  const CustomButtonAuthIcons(
      {Key? key,
      required this.onPressed,
      required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: OutlinedButton(
          style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(AppColor.primaryColor),
              side: const MaterialStatePropertyAll(
                  BorderSide(
                      color: AppColor.primaryColor)),
              // minimumSize: MaterialStatePropertyAll(
              //     Size(Get.width, 40)),
              padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(
                      vertical: 10, horizontal: 20)),
              shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(50)))),
          onPressed: () {
            Get.snackbar("Soon!",
                translateDataBase("سوف يتم اضافة هذه الميزه قريبا", "This feature will be added soon"),
                icon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      IconBroken.Profile,
                      color: AppColor.white,
                      size: 30,
                    )),
                snackPosition: SnackPosition.TOP,
                margin: EdgeInsets.zero,
                backgroundColor: AppColor.primaryColor,
                duration: const Duration(seconds: 2),
                colorText: AppColor.white,
                barBlur: 0,
                borderRadius: 0);
          },
          child:  Icon(iconData,color: AppColor.backgroundColor,size: 30,)),
    );
  }
}
